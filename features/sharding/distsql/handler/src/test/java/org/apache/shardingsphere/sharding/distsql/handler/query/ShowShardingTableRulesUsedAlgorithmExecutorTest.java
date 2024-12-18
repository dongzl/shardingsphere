/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.shardingsphere.sharding.distsql.handler.query;

import org.apache.shardingsphere.distsql.statement.DistSQLStatement;
import org.apache.shardingsphere.infra.algorithm.core.config.AlgorithmConfiguration;
import org.apache.shardingsphere.infra.config.rule.scope.DatabaseRuleConfiguration;
import org.apache.shardingsphere.infra.merge.result.impl.local.LocalDataQueryResultRow;
import org.apache.shardingsphere.sharding.api.config.ShardingRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.rule.ShardingAutoTableRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.rule.ShardingTableRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.strategy.keygen.KeyGenerateStrategyConfiguration;
import org.apache.shardingsphere.sharding.api.config.strategy.sharding.NoneShardingStrategyConfiguration;
import org.apache.shardingsphere.sharding.api.config.strategy.sharding.StandardShardingStrategyConfiguration;
import org.apache.shardingsphere.sharding.distsql.statement.ShowShardingTableRulesUsedAlgorithmStatement;
import org.apache.shardingsphere.sharding.rule.ShardingRule;
import org.apache.shardingsphere.test.it.distsql.handler.engine.query.DistSQLDatabaseRuleQueryExecutorTest;
import org.apache.shardingsphere.test.util.PropertiesBuilder;
import org.apache.shardingsphere.test.util.PropertiesBuilder.Property;
import org.junit.jupiter.api.extension.ExtensionContext;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.ArgumentsProvider;
import org.junit.jupiter.params.provider.ArgumentsSource;

import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;
import java.util.Properties;
import java.util.stream.Stream;

import static org.mockito.Mockito.mock;

class ShowShardingTableRulesUsedAlgorithmExecutorTest extends DistSQLDatabaseRuleQueryExecutorTest {
    
    ShowShardingTableRulesUsedAlgorithmExecutorTest() {
        super(mock(ShardingRule.class));
    }
    
    @ParameterizedTest(name = "{0}")
    @ArgumentsSource(TestCaseArgumentsProvider.class)
    void assertExecuteQuery(final String name, final DatabaseRuleConfiguration ruleConfig, final DistSQLStatement sqlStatement,
                            final Collection<LocalDataQueryResultRow> expected) throws SQLException {
        assertQueryResultRows(ruleConfig, sqlStatement, expected);
    }
    
    private static class TestCaseArgumentsProvider implements ArgumentsProvider {
        
        @Override
        public Stream<? extends Arguments> provideArguments(final ExtensionContext extensionContext) {
            return Stream.of(Arguments.arguments("withTable", createRuleConfiguration(), new ShowShardingTableRulesUsedAlgorithmStatement("t_order_inline", null),
                    Collections.singleton(new LocalDataQueryResultRow("table", "t_order"))),
                    Arguments.arguments("withAutoTable", createRuleConfiguration(), new ShowShardingTableRulesUsedAlgorithmStatement("auto_mod", null),
                            Collections.singleton(new LocalDataQueryResultRow("auto_table", "t_order_auto"))));
        }
        
        private ShardingRuleConfiguration createRuleConfiguration() {
            ShardingRuleConfiguration result = new ShardingRuleConfiguration();
            result.getTables().add(createShardingTableRuleConfiguration());
            result.getAutoTables().add(createShardingAutoTableRuleConfiguration());
            result.setDefaultDatabaseShardingStrategy(new StandardShardingStrategyConfiguration("user_id", "database_inline"));
            result.setDefaultTableShardingStrategy(new NoneShardingStrategyConfiguration());
            result.getShardingAlgorithms().put("database_inline", new AlgorithmConfiguration("INLINE", PropertiesBuilder.build(new Property("algorithm-expression", "ds_${user_id % 2}"))));
            result.getShardingAlgorithms().put("t_order_inline", new AlgorithmConfiguration("INLINE", PropertiesBuilder.build(new Property("algorithm-expression", "t_order_${order_id % 2}"))));
            result.getShardingAlgorithms().put("auto_mod", new AlgorithmConfiguration("MOD", PropertiesBuilder.build(new Property("sharding-count", "4"))));
            result.getKeyGenerators().put("snowflake", new AlgorithmConfiguration("SNOWFLAKE", new Properties()));
            return result;
        }
        
        private ShardingAutoTableRuleConfiguration createShardingAutoTableRuleConfiguration() {
            ShardingAutoTableRuleConfiguration result = new ShardingAutoTableRuleConfiguration("t_order_auto", "ds_0, ds_1");
            result.setShardingStrategy(new StandardShardingStrategyConfiguration("order_id", "auto_mod"));
            result.setKeyGenerateStrategy(new KeyGenerateStrategyConfiguration("order_id", "snowflake"));
            return result;
        }
        
        private ShardingTableRuleConfiguration createShardingTableRuleConfiguration() {
            ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("t_order", "ds_${0..1}.t_order_${0..1}");
            result.setTableShardingStrategy(new StandardShardingStrategyConfiguration("order_id", "t_order_inline"));
            result.setKeyGenerateStrategy(new KeyGenerateStrategyConfiguration("order_id", "snowflake"));
            return result;
        }
    }
}
