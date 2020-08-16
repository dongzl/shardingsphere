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

lexer grammar Keyword;

import Alphabet;

WS
    : [ \t\r\n] + ->skip
    ;
    
ABSOLUTE
    : A B S O L U T E
    ;
    
ACTION
    : A C T I O N
    ;
    
ADD
    : A D D
    ;
    
ALL
    : A L L
    ;
    
ALLOCATE
    : A L L O C A T E
    ;
    
ALTER
    : A L T E R
    ;
    
AND
    : A N D
    ;
    
ANY
    : A N Y
    ;
    
ARE
    : A R E
    ;
    
AS
    : A S
    ;
    
ASC
    : A S C
    ;
    
ASSERTION
    : A S S E R T I O N
    ;
    
AT
    : A T
    ;
    
AUTHORIZATION
    : A U T H O R I Z A T I O N
    ;
    
AVG
    : A V G
    ;
    
BEGIN
    : B E G I N
    ;
    
BETWEEN
    : B E T W E E N
    ;
    
BIT
    : B I T
    ;
    
BIT_LENGTH
    : B I T UL_ L E N G T H
    ;
    
BOTH
    : B O T H
    ;
    
BY
    : B Y
    ;
    
CASCADE
    : C A S C A D E
    ;
    
CASCADED
    : C A S C A D E D
    ;
    
CASE
    : C A S E
    ;
    
CAST
    : C A S T
    ;
    
CATALOG
    : C A T A L O G
    ;
    
CHAR
    : C H A R
    ;
    
CHAR_LENGTH
    : C H A R UL_ L E N G T H
    ;
    
CHARACTER
    : C H A R A C T E R
    ;
    
CHARACTER_LENGTH
    : C H A R A C T E R UL_ L E N G T H
    ;
    
CHECK
    : C H E C K
    ;
    
CLOSE
    : C L O S E
    ;
    
COALESCE
    : C O A L E S C E
    ;
    
COLLATE
    : C O L L A T E
    ;
    
COLLATION
    : C O L L A T I O N
    ;
    
COLUMN
    : C O L U M N
    ;
    
COMMIT
    : C O M M I T
    ;
    
CONNECT
    : C O N N E C T
    ;
    
CONNECTION
    : C O N N E C T I O N
    ;
    
CONSTRAINT
    : C O N S T R A I N T
    ;
    
CONSTRAINTS
    : C O N S T R A I N T S
    ;
    
CONTAINS
    : C O N T A I N S
    ;
    
CONTINUE
    : C O N T I N U E
    ;
    
CONVERT
    : C O N V E R T
    ;
    
CORRESPONDING
    : C O R R E S P O N D I N G
    ;
    
COUNT
    : C O U N T
    ;
    
CREATE
    : C R E A T E
    ;
    
CROSS
    : C R O S S
    ;
    
CURRENT
    : C U R R E N T
    ;
    
CURRENT_DATE
    : C U R R E N T UL_ D A T E
    ;
    
CURRENT_TIME
    : C U R R E N T UL_ T I M E
    ;
    
CURRENT_TIMESTAMP
    : C U R R E N T UL_ T I M E S T A M P
    ;
    
CURRENT_USER
    : C U R R E N T UL_ U S E R
    ;
    
CURSOR
    : C U R S O R
    ;
    
DATE
    : D A T E
    ;
    
DAY
    : D A Y
    ;
    
DEALLOCATE
    : D E A L L O C A T E
    ;
    
DEC
    : D E C
    ;
    
DECIMAL
    : D E C I M A L
    ;
    
DECLARE
    : D E C L A R E
    ;
    
DEFAULT
    : D E F A U L T
    ;
    
DEFERRABLE
    : D E F E R R A B L E
    ;
    
DEFERRED
    : D E F E R R E D
    ;
    
DELETE
    : D E L E T E
    ;
    
DESC
    : D E S C
    ;
    
DESCRIBE
    : D E S C R I B E
    ;
    
DESCRIPTOR
    : D E S C R I P T O R
    ;
    
DIAGNOSTICS
    : D I A G N O S T I C S
    ;
    
DISCONNECT
    : D I S C O N N E C T
    ;
    
DISTINCT
    : D I S T I N C T
    ;
    
DOMAIN
    : D O M A I N
    ;
    
DOUBLE
    : D O U B L E
    ;
    
DROP
    : D R O P
    ;
    
ELSE
    : E L S E
    ;
    
END
    : E N D
    ;
    
ESCAPE
    : E S C A P E
    ;
    
EXCEPT
    : E X C E P T
    ;
    
EXCEPTION
    : E X C E P T I O N
    ;
    
EXEC
    : E X E C
    ;
    
EXECUTE
    : E X E C U T E
    ;
    
EXISTS
    : E X I S T S
    ;
    
EXIT
    : E X I T
    ;
    
EXTERNAL
    : E X T E R N A L
    ;
    
EXTRACT
    : E X T R A C T
    ;
    
FALSE
    : F A L S E
    ;
    
FETCH
    : F E T C H
    ;
    
FIRST
    : F I R S T
    ;
    
FLOAT
    : F L O A T
    ;
    
FOR
    : F O R
    ;
    
FOREIGN
    : F O R E I G N
    ;
    
FOUND
    : F O U N D
    ;
    
FROM
    : F R O M
    ;
    
FULL
    : F U L L
    ;
    
FUNCTION
    : F U N C T I O N
    ;
    
GET
    : G E T
    ;
    
GLOBAL
    : G L O B A L
    ;
    
GO
    : G O
    ;
    
GOTO
    : G O T O
    ;
    
GRANT
    : G R A N T
    ;
    
GROUP
    : G R O U P
    ;
    
HAVING
    : H A V I N G
    ;
    
HOUR
    : H O U R
    ;
    
IDENTITY
    : I D E N T I T Y
    ;
    
IMMEDIATE
    : I M M E D I A T E
    ;
    
IF
    : I F
    ;
    
IN
    : I N
    ;
    
INDICATOR
    : I N D I C A T O R
    ;
    
INITIALLY
    : I N I T I A L L Y
    ;
    
INNER
    : I N N E R
    ;
    
INPUT
    : I N P U T
    ;
    
INSENSITIVE
    : I N S E N S I T I V E
    ;
    
INSERT
    : I N S E R T
    ;
    
INT
    : I N T
    ;
    
INTEGER
    : I N T E G E R
    ;
    
INTERSECT
    : I N T E R S E C T
    ;
    
INTERVAL
    : I N T E R V A L
    ;
    
INTO
    : I N T O
    ;
    
IS
    : I S
    ;
    
ISOLATION
    : I S O L A T I O N
    ;
    
JOIN
    : J O I N
    ;
    
KEY
    : K E Y
    ;
    
LANGUAGE
    : L A N G U A G E
    ;
    
LAST
    : L A S T
    ;
    
LEADING
    : L E A D I N G
    ;
    
LEFT
    : L E F T
    ;
    
LEVEL
    : L E V E L
    ;
    
LIKE
    : L I K E
    ;
    
LOCAL
    : L O C A L
    ;
    
LOWER
    : L O W E R
    ;
    
MATCH
    : M A T C H
    ;
    
MAX
    : M A X
    ;

MIN
    : M I N
    ;
    
MINUTE
    : M I N U T E
    ;
    
MODULE
    : M O D U L E
    ;
    
MONTH
    : M O N T H
    ;
    
NAMES
    : N A M E S
    ;
    
NATIONAL
    : N A T I O N A L
    ;
    
NATURAL
    : N A T U R A L
    ;
    
NCHAR
    : N C H A R
    ;
    
NEXT
    : N E X T
    ;
    
NO
    : N O
    ;
    
NOT
    : N O T
    ;
    
NULL
    : N U L L
    ;
    
NULLIF
    : N U L L I F
    ;
    
NUMERIC
    : N U M E R I C
    ;
    
OCTET_LENGTH
    : O C T E T UL_ L E N G T H
    ;
    
OF
    : O F
    ;
    
ON
    : O N
    ;
    
ONLY
    : O N L Y
    ;
    
OPEN
    : O P E N
    ;
    
OPTION
    : O P T I O N
    ;
    
OR
    : O R
    ;
    
ORDER
    : O R D E R
    ;
    
OUTER
    : O U T E R
    ;
    
OUTPUT
    : O U T P U T
    ;
    
OVERLAPS
    : O V E R L A P S
    ;
    
PAD
    : P A D
    ;
    
PARTIAL
    : P A R T I A L
    ;
    
POSITION
    : P O S I T I O N
    ;
    
PRECISION
    : P R E C I S I O N
    ;
    
PREPARE
    : P R E P A R E
    ;
    
PRESERVE
    : P R E S E R V E
    ;
    
PRIMARY
    : P R I M A R Y
    ;
    
PRIOR
    : P R I O R
    ;
    
PRIVILEGES
    : P R I V I L E G E S
    ;
    
PROCEDURE
    : P R O C E D U R E
    ;
    
PUBLIC
    : P U B L I C
    ;
    
READ
    : R E A D
    ;
    
REAL
    : R E A L
    ;
    
REFERENCES
    : R E F E R E N C E S
    ;
    
RELATIVE
    : R E L A T I V E
    ;
    
RESTRICT
    : R E S T R I C T
    ;
    
RETURN
    : R E T U R N
    ;
    
REVOKE
    : R E V O K E
    ;
    
RIGHT
    : R I G H T
    ;
    
ROLLBACK
    : R O L L B A C K
    ;
    
ROWS
    : R O W S
    ;
    
SCHEMA
    : S C H E M A
    ;
    
SCROLL
    : S C R O L L
    ;
    
SECOND
    : S E C O N D
    ;
    
SECTION
    : S E C T I O N
    ;
    
SELECT
    : S E L E C T
    ;
    
SESSION
    : S E S S I O N
    ;
    
SESSION_USER
    : S E S S I O N UL_ U S E R
    ;
    
SET
    : S E T
    ;
    
SIZE
    : S I Z E
    ;
    
SMALLINT
    : S M A L L I N T
    ;
    
SOME
    : S O M E
    ;
    
SPACE
    : S P A C E
    ;
    
SQL
    : S Q L
    ;
    
SQLCODE
    : S Q L C O D E
    ;
    
SQLERROR
    : S Q L E R R O R
    ;
    
SQLSTATE
    : S Q L S T A T E
    ;
    
SQLWARNING
    : S Q L W A R N I N G
    ;
    
SUBSTRING
    : S U B S T R I N G
    ;
    
SUM
    : S U M
    ;
    
SYSTEM_USER
    : S Y S T E M UL_ U S E R
    ;
    
TABLE
    : T A B L E
    ;
    
TEMPORARY
    : T E M P O R A R Y
    ;
    
THEN
    : T H E N
    ;
    
TIME
    : T I M E
    ;
    
TIMESTAMP
    : T I M E S T A M P
    ;
    
TIMEZONE_HOUR
    : T I M E Z O N E UL_ H O U R
    ;
    
TIMEZONE_MINUTE
    : T I M E Z O N E UL_ M I N U T E
    ;
    
TO
    : T O
    ;
    
TRAILING
    : T R A I L I N G
    ;
    
TRANSACTION
    : T R A N S A C T I O N
    ;
    
TRANSLATE
    : T R A N S L A T E
    ;
    
TRANSLATION
    : T R A N S L A T I O N
    ;
    
TRIM
    : T R I M
    ;
    
TRUE
    : T R U E
    ;
    
UNION
    : U N I O N
    ;
    
UNIQUE
    : U N I Q U E
    ;
    
UNKNOWN
    : U N K N O W N
    ;
    
UPDATE
    : U P D A T E
    ;
    
UPPER
    : U P P E R
    ;
    
USAGE
    : U S A G E
    ;
    
USER
    : U S E R
    ;
    
USING
    : U S I N G
    ;
    
VALUE
    : V A L U E
    ;
    
VALUES
    : V A L U E S
    ;
    
VARCHAR
    : V A R C H A R
    ;
    
VARYING
    : V A R Y I N G
    ;
    
VIEW
    : V I E W
    ;
    
WHEN
    : W H E N
    ;
    
WHENEVER
    : W H E N E V E R
    ;
    
WHERE
    : W H E R E
    ;
    
WHILE
    : W H I L E
    ;
    
WITH
    : W I T H
    ;
    
WORK
    : W O R K
    ;
    
WRITE
    : W R I T E
    ;
    
YEAR
    : Y E A R
    ;
    
ZONE
    : Z O N E
    ;
    
    
    
    
    
    








    
    
    
    
    
    
    
    
    
    
        
    














LIMIT
    : L I M I T
    ;

OFFSET
    : O F F S E T
    ;

SAVEPOINT
    : S A V E P O I N T
    ;

BOOLEAN
    : B O O L E A N
    ;

ARRAY
    : A R R A Y
    ;

LOCALTIME
    : L O C A L T I M E
    ;

LOCALTIMESTAMP
    : L O C A L T I M E S T A M P
    ;

QUARTER
    : Q U A R T E R
    ;

WEEK
    : W E E K
    ;

MICROSECOND
    : M I C R O S E C O N D
    ;

ENABLE
    : E N A B L E
    ;

DISABLE
    : D I S A B L E
    ;

CALL
    : C A L L
    ;

INSTANCE
    : I N S T A N C E
    ;

DO
    : D O
    ;

DEFINER
    : D E F I N E R
    ;

NAME
    : N A M E
    ;

TYPE
    : T Y P E
    ;

TINYINT
    : T I N Y I N T
    ;

BIGINT
    : B I G I N T
    ;

TEXT
    : T E X T
    ;

TIES
    : T I E S
    ;
