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

lexer grammar SQLServerKeyword;

import Alphabet;

ADA
    : A D A
    ;

BACKUP
    : B A C K U P
    ;
    
BREAK
    : B R E A K
    ;
    
BROWSE
    : B R O W S E
    ;
    
BULK
    : B U L K
    ;
    
CHECKPOINT
    : C H E C K P O I N T
    ;
    
CLUSTERED
    : C L U S T E R E D
    ;
    
COLLATE
    : C O L L A T E
    ;
    
COMPUTE
    : C O M P U T E
    ;
    
CONTAINSTABLE
    : C O N T A I N S T A B L E
    ;
    
DATABASE
    : D A T A B A S E
    ;
    
DBCC
    : D B C C
    ;
    
DENY
    : D E N Y
    ;
    
DISK
    : D I S K
    ;
    
DISTRIBUTED
    : D I S T R I B U T E D
    ;
    
DUMP
    : D U M P
    ;
    
ERRLVL
    : E R R L V L
    ;
    
//END-EXEC
//    : E N D - E X E C
//    ;
    
FILE
    : F I L E
    ;
    
FILLFACTOR
    : F I L L F A C T O R
    ;
    
FORTRAN
    : F O R T R A N
    ;
    
FREETEXT
    : F R E E T E X T
    ;
    
FREETEXTTABLE
    : F R E E T E X T T A B L E
    ;
    
HOLDLOCK
    : H O L D L O C K
    ;
    
IDENTITY_INSERT
    : I D E N T I T Y UL_ I N S E R T
    ;
    
IDENTITYCOL
    : I D E N T I T Y C O L
    ;
   
INCLUDE
    : I N C L U D E
    ;
    
INDEX
    : I N D E X
    ;
    
KILL
    : K I L L
    ;
    
LINENO
    : L I N E N O
    ;
    
LOAD
    : L O A D
    ;
    
MERGE
    : M E R G E
    ;
    
NOCHECK
    : N O C H E C K
    ;
    
NONCLUSTERED
    : N O N C L U S T E R E D
    ;
    
NONE
    : N O N E
    ;
    
OFF
    : O F F
    ;
    
OFFSETS
    : O F F S E T S
    ;
    
OPENDATASOURCE
    : O P E N D A T A S O U R C E
    ;
    
OPENQUERY
    : O P E N Q U E R Y
    ;
    
OPENROWSET
    : O P E N R O W S E T
    ;
    
OPENXML
    : O P E N X M L
    ;
    
OVER
    : O V E R
    ;
    
PASCAL
    : P A S C A L
    ;
    
PERCENT
    : P E R C E N T
    ;
    
PIVOT
    : P I V O T
    ;
    
PLAN
    : P L A N
    ;
    
PRINT
    : P R I N T
    ;
    
PROC
    : P R O C
    ;
    
RAISERROR
    : R A I S E R R O R
    ;
    
READTEXT
    : R E A D T E X T
    ;
    
RECONFIGURE
    : R E C O N F I G U R E
    ;
    
REPLICATION
    : R E P L I C A T I O N
    ;
    
RESTORE
    : R E S T O R E
    ;
    
REVERT
    : R E V E R T
    ;
    
ROWCOUNT
    : R O W C O U N T
    ;
    
ROWGUIDCOL
    : R O W G U I D C O L
    ;
    
RULE
    : R U L E
    ;
    
SAVE
    : S A V E
    ;
    
SECURITYAUDIT
    : S E C U R I T Y A U D I T
    ;
    
SEMANTICKEYPHRASETABLE
    : S E M A N T I C K E Y P H R A S E T A B L E
    ;
    
SEMANTICSIMILARITYDETAILSTABLE
    : S E M A N T I C S I M I L A R I T Y D E T A I L S T A B L E
    ;
    
SEMANTICSIMILARITYTABLE
    : S E M A N T I C S I M I L A R I T Y T A B L E
    ;
    
SETUSER
    : S E T U S E R
    ;
    
SHUTDOWN
    : S H U T D O W N
    ;
    
SQLCA
    : S Q L C A
    ;
    
STATISTICS
    : S T A T I S T I C S
    ;
    
TABLESAMPLE
    : T A B L E S A M P L E
    ;
    
TEXTSIZE
    : T E X T S I Z E
    ;
    
TOP
    : T O P
    ;
    
TRAN
    : T R A N
    ;
    
TRIGGER
    : T R I G G E R
    ;
    
TRUNCATE
    : T R U N C A T E
    ;
    
TRY_CONVERT
    : T R Y UL_ C O N V E R T
    ;
    
TSEQUAL
    : T S E Q U A L
    ;
    
UNPIVOT
    : U N P I V O T
    ;
    
UPDATETEXT
    : U P D A T E T E X T
    ;
    
USE
    : U S E
    ;
    
WAITFOR
    : W A I T F O R
    ;
    
//WITHIN GROUP
//    : W I T H I N G R O U P

WRITETEXT
    : W R I T E T E X T
    ;
    
    
    
    


























    
    
    
    
    
    
    
    
    
    
    

    
    

BINARY
    : B I N A R Y
    ;

HIDDEN_
    : H I D D E N
    ;

MOD
    : M O D
    ;

PARTITION
    : P A R T I T I O N
    ;

PARTITIONS
    : P A R T I T I O N S
    ;

ROW
    : R O W
    ;

XOR
    : X O R
    ;

ALWAYS
    : A L W A Y S
    ;

GENERATED
    : G E N E R A T E D
    ;

NO
    : N O
    ;

OPTION
    : O P T I O N
    ;

ROLE
    : R O L E
    ;

START
    : S T A R T
    ;

ALGORITHM
    : A L G O R I T H M
    ;

AUTO
    : A U T O
    ;

BLOCKERS
    : B L O C K E R S
    ;

COLUMNSTORE
    : C O L U M N S T O R E
    ;

CONTENT
    : C O N T E N T
    ;

YEARS
    : Y E A R S
    ;

MONTHS
    : M O N T H S
    ;

WEEKS
    : W E E K S
    ;
  
DAYS
    : D A Y S
    ;

MINUTES
    : M I N U T E S
    ;

DETERMINISTIC
    : D E T E R M I N I S T I C
    ;

DISTRIBUTION
    : D I S T R I B U T I O N
    ;

DOCUMENT
    : D O C U M E N T
    ;

DURABILITY
    : D U R A B I L I T Y
    ;

ENCRYPTED
    : E N C R Y P T E D
    ;

FILESTREAM
    : F I L E S T R E A M
    ;

FILETABLE
    : F I L E T A B L E
    ;

FOLLOWING
    : F O L L O W I N G
    ;

HASH
    : H A S H
    ;

HEAP
    : H E A P
    ;

INBOUND
    : I N B O U N D
    ;

OUTBOUND
    : O U T B O U N D
    ;

UNBOUNDED
    : U N B O U N D E D
    ;

INFINITE
    : I N F I N I T E
    ;

LOGIN
    : L O G I N
    ;

MASKED
    : M A S K E D
    ;

MAXDOP
    : M A X D O P
    ;

MOVE
    : M O V E
    ;

OBJECT
    : O B J E C T
    ;

ONLINE
    : O N L I N E
    ;

PAGE
    : P A G E
    ;

PAUSED
    : P A U S E D
    ;

PERIOD
    : P E R I O D
    ;

PERSISTED
    : P E R S I S T E D
    ;

PRECEDING
    : P R E C E D I N G
    ;

RANDOMIZED
    : R A N D O M I Z E D
    ;

RANGE
    : R A N G E
    ;

REBUILD
    : R E B U I L D
    ;

REPLICATE
    : R E P L I C A T E
    ;

RESUMABLE
    : R E S U M A B L E
    ;

SCHEMA
    : S C H E M A
    ;

SELF
    : S E L F
    ;

SPARSE
    : S P A R S E
    ;

SWITCH
    : S W I T C H
    ;

TRANCOUNT
    : T R A N C O U N T
    ;

EXECUTE
    : E X E C U T E
    ;

SESSION
    : S E S S I O N
    ;

CONTROL
    : C O N T R O L
    ;

TAKE
    : T A K E
    ;

OWNERSHIP
    : O W N E R S H I P
    ;

DEFINITION
    : D E F I N I T I O N
    ;

APPLICATION
    : A P P L I C A T I O N
    ;

ASSEMBLY
    : A S S E M B L Y
    ;

SYMMETRIC
    : S Y M M E T R I C
    ;

ASYMMETRIC
    : A S Y M M E T R I C
    ;

SERVER
    : S E R V E R
    ;

RECEIVE
    : R E C E I V E
    ;

CHANGE
    : C H A N G E
    ;

TRACE
    : T R A C E
    ;

TRACKING
    : T R A C K I N G
    ;

RESOURCES
    : R E S O U R C E S
    ;

SETTINGS
    : S E T T I N G S
    ;

STATE
    : S T A T E
    ;

AVAILABILITY
    : A V A I L A B I L I T Y
    ;

CREDENTIAL
    : C R E D E N T I A L
    ;

ENDPOINT
    : E N D P O I N T
    ;

EVENT
    : E V E N T
    ;

NOTIFICATION
    : N O T I F I C A T I O N
    ;

LINKED
    : L I N K E D
    ;

AUDIT
    : A U D I T
    ;

DDL
    : D D L
    ;

XML
    : X M L
    ;

IMPERSONATE
    : I M P E R S O N A T E
    ;

SECURABLES
    : S E C U R A B L E S
    ;

AUTHENTICATE
    : A U T H E N T I C A T E
    ;

ACCESS
    : A C C E S S
    ;

ADMINISTER
    : A D M I N I S T E R
    ;

OPERATIONS
    : O P E R A T I O N S
    ;

UNSAFE
    : U N S A F E
    ;

SCOPED
    : S C O P E D
    ;

CONFIGURATION
    : C O N F I G U R A T I O N
    ;

DATASPACE
    : D A T A S P A C E
    ;

SERVICE
    : S E R V I C E
    ;

CERTIFICATE
    : C E R T I F I C A T E
    ;

CONTRACT
    : C O N T R A C T
    ;

ENCRYPTION
    : E N C R Y P T I O N
    ;

MASTER
    : M A S T E R
    ;

DATA
    : D A T A
    ;

SOURCE
    : S O U R C E
    ;

FORMAT
    : F O R M A T
    ;

LIBRARY
    : L I B R A R Y
    ;

FULLTEXT
    : F U L L T E X T
    ;

MASK
    : M A S K
    ;

UNMASK
    : U N M A S K
    ;

MESSAGE
    : M E S S A G E
    ;

REMOTE
    : R E M O T E
    ;

BINDING
    : B I N D I N G
    ;

ROUTE
    : R O U T E
    ;

SECURITY
    : S E C U R I T Y
    ;

POLICY
    : P O L I C Y
    ;

AGGREGATE
    : A G G R E G A T E
    ;

QUEUE
    : Q U E U E
    ;

SYNONYM
    : S Y N O N Y M
    ;

COLLECTION
    : C O L L E C T I O N
    ;

SCRIPT
    : S C R I P T
    ;

LOG
    : L O G
    ;

SHOWPLAN
    : S H O W P L A N
    ;

SUBSCRIBE
    : S U B S C R I B E
    ;

QUERY
    : Q U E R Y 
    ;

NOTIFICATIONS
    : N O T I F I C A T I O N S 
    ;

SEQUENCE
    : S E Q U E N C E
    ;

ABORT_AFTER_WAIT
    : A B O R T UL_ A F T E R UL_ W A I T
    ;

ALLOW_PAGE_LOCKS
    : A L L O W UL_ P A G E UL_ L O C K S
    ;

ALLOW_ROW_LOCKS
    : A L L O W UL_ R O W UL_ L O C K S
    ;

ALL_SPARSE_COLUMNS
    : A L L UL_ S P A R S E UL_ C O L U M N S
    ;

BUCKET_COUNT
    : B U C K E T UL_ C O U N T
    ;

COLUMNSTORE_ARCHIVE
    : C O L U M N S T O R E UL_ A R C H I V E
    ;

COLUMN_ENCRYPTION_KEY
    : C O L U M N UL_ E N C R Y P T I O N UL_ K E Y
    ;

COLUMN_SET
    : C O L U M N UL_ S E T
    ;

COMPRESSION_DELAY
    : C O M P R E S S I O N UL_ D E L A Y
    ;

DATABASE_DEAULT
    : D A T A B A S E UL_ D E A U L T
    ;

DATA_COMPRESSION
    : D A T A UL_ C O M P R E S S I O N
    ;

DATA_CONSISTENCY_CHECK
    : D A T A UL_ C O N S I S T E N C Y UL_ C H E C K
    ;

ENCRYPTION_TYPE
    : E N C R Y P T I O N UL_ T Y P E
    ;

SYSTEM_TIME
    : S Y S T E M UL_ T I M E
    ;

SYSTEM_VERSIONING
    : S Y S T E M UL_ V E R S I O N I N G
    ;

TEXTIMAGE_ON
    : T E X T I M A G E UL_ O N
    ;

WAIT_AT_LOW_PRIORITY
    : W A I T UL_ A T UL_ L O W UL_ P R I O R I T Y
    ;

STATISTICS_INCREMENTAL
    : S T A T I S T I C S UL_ I N C R E M E N T A L
    ;

STATISTICS_NORECOMPUTE
    : S T A T I S T I C S UL_ N O R E C O M P U T E
    ;

ROUND_ROBIN
    : R O U N D UL_ R O B I N
    ;

SCHEMA_AND_DATA
    : S C H E M A UL_ A N D UL_ D A T A
    ;

SCHEMA_ONLY
    : S C H E M A UL_ O N L Y
    ;

SORT_IN_TEMPDB
    : S O R T UL_ I N UL_ T E M P D B
    ;

IGNORE_DUP_KEY
    : I G N O R E UL_ D U P UL_ K E Y
    ;

IMPLICIT_TRANSACTIONS
    : I M P L I C I T UL_ T R A N S A C T I O N S
    ;

MAX_DURATION
    : M A X UL_ D U R A T I O N
    ;

MEMORY_OPTIMIZED
    : M E M O R Y UL_ O P T I M I Z E D
    ;

MIGRATION_STATE
    : M I G R A T I O N UL_ S T A T E
    ;

PAD_INDEX
    : P A D UL_ I N D E X
    ;

REMOTE_DATA_ARCHIVE
    : R E M O T E UL_ D A T A UL_ A R C H I V E
    ;

FILESTREAM_ON
    : F I L E S T R E A M UL_ O N
    ;

FILETABLE_COLLATE_FILENAME
    : F I L E T A B L E UL_ C O L L A T E UL_ F I L E N A M E
    ;

FILETABLE_DIRECTORY
    : F I L E T A B L E UL_ D I R E C T O R Y
    ;

FILETABLE_FULLPATH_UNIQUE_CONSTRAINT_NAME
    : F I L E T A B L E UL_ F U L L P A T H UL_ U N I Q U E UL_ C O N S T R A I N T UL_ N A M E
    ;

FILETABLE_PRIMARY_KEY_CONSTRAINT_NAME
    : F I L E T A B L E UL_ P R I M A R Y UL_ K E Y UL_ C O N S T R A I N T UL_ N A M E
    ;

FILETABLE_STREAMID_UNIQUE_CONSTRAINT_NAME
    : F I L E T A B L E UL_ S T R E A M I D UL_ U N I Q U E UL_ C O N S T R A I N T UL_ N A M E
    ;

FILTER_PREDICATE
    : F I L T E R UL_ P R E D I C A T E
    ;

HISTORY_RETENTION_PERIOD
    : H I S T O R Y UL_ R E T E N T I O N UL_ P E R I O D
    ;

HISTORY_TABLE
    : H I S T O R Y UL_ T A B L E
    ;

LOCK_ESCALATION
    : L O C K UL_ E S C A L A T I O N
    ;

DROP_EXISTING
    : D R O P UL_ E X I S T I N G
    ;

ROW_NUMBER
    : R O W UL_ N U M B E R
    ;

MONEY
    : M O N E Y
    ;

SMALLMONEY
    : S M A L L M O N E Y
    ;

DATETIMEOFFSET
    : D A T E T I M E O F F S E T
    ;

DATETIME
    : D A T E T I M E
    ;

DATETIME2
    : D A T E T I M E [2]
    ;

SMALLDATETIME
    : S M A L L D A T E T I M E
    ;

NVARCHAR
    : N V A R C H A R
    ;

NTEXT
    : N T E X T
    ;

VARBINARY
    : V A R B I N A R Y
    ;

IMAGE
    : I M A G E
    ;

SQL_VARIANT
    : S Q L UL_ V A R I A N T
    ;

UNIQUEIDENTIFIER
    : U N I Q U E I D E N T I F I E R
    ;

HIERARCHYID
    : H I E R A R C H Y I D
    ;

GEOMETRY
    : G E O M E T R Y
    ;

GEOGRAPHY
    : G E O G R A P H Y
    ;
