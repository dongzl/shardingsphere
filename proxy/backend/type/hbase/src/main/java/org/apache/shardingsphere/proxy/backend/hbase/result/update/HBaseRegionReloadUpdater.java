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

package org.apache.shardingsphere.proxy.backend.hbase.result.update;

import org.apache.shardingsphere.infra.exception.core.ShardingSpherePreconditions;
import org.apache.shardingsphere.infra.exception.kernel.metadata.TableNotFoundException;
import org.apache.shardingsphere.infra.executor.sql.execute.result.update.UpdateResult;
import org.apache.shardingsphere.proxy.backend.hbase.bean.HBaseOperation;
import org.apache.shardingsphere.proxy.backend.hbase.context.HBaseContext;
import org.apache.shardingsphere.proxy.backend.hbase.context.HBaseRegionWarmUpContext;
import org.apache.shardingsphere.sql.parser.statement.mysql.dal.MySQLFlushStatement;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * HBase database region reload updater.
 */
public final class HBaseRegionReloadUpdater implements HBaseUpdater {
    
    @Override
    public Collection<UpdateResult> executeUpdate(final HBaseOperation operation) throws SQLException {
        List<String> tables = Arrays.asList(operation.getTableName().split(","));
        AtomicInteger updateCount = new AtomicInteger();
        tables.stream().filter(this::isNotNullTableName).forEach(this::checkTableExists);
        for (String each : tables) {
            if (isNotNullTableName(each)) {
                updateCount.getAndIncrement();
                HBaseRegionWarmUpContext.getInstance().loadRegionInfo(each, HBaseContext.getInstance().getConnection(each));
            }
        }
        return Collections.singleton(new UpdateResult(updateCount.get(), 0L));
    }
    
    private void checkTableExists(final String tableName) {
        ShardingSpherePreconditions.checkState(HBaseContext.getInstance().isTableExists(tableName), () -> new TableNotFoundException(tableName));
    }
    
    private boolean isNotNullTableName(final String tableName) {
        return !"".equals(tableName) && !"null".equalsIgnoreCase(tableName);
    }
    
    @Override
    public Class<MySQLFlushStatement> getType() {
        return MySQLFlushStatement.class;
    }
}
