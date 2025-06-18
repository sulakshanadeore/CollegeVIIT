SQL> desc user_tables;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TABLE_NAME                                NOT NULL VARCHAR2(128)
 TABLESPACE_NAME                                    VARCHAR2(30)
 CLUSTER_NAME                                       VARCHAR2(128)
 IOT_NAME                                           VARCHAR2(128)
 STATUS                                             VARCHAR2(8)
 PCT_FREE                                           NUMBER
 PCT_USED                                           NUMBER
 INI_TRANS                                          NUMBER
 MAX_TRANS                                          NUMBER
 INITIAL_EXTENT                                     NUMBER
 NEXT_EXTENT                                        NUMBER
 MIN_EXTENTS                                        NUMBER
 MAX_EXTENTS                                        NUMBER
 PCT_INCREASE                                       NUMBER
 FREELISTS                                          NUMBER
 FREELIST_GROUPS                                    NUMBER
 LOGGING                                            VARCHAR2(3)
 BACKED_UP                                          VARCHAR2(1)
 NUM_ROWS                                           NUMBER
 BLOCKS                                             NUMBER
 EMPTY_BLOCKS                                       NUMBER
 AVG_SPACE                                          NUMBER
 CHAIN_CNT                                          NUMBER
 AVG_ROW_LEN                                        NUMBER
 AVG_SPACE_FREELIST_BLOCKS                          NUMBER
 NUM_FREELIST_BLOCKS                                NUMBER
 DEGREE                                             VARCHAR2(10)
 INSTANCES                                          VARCHAR2(10)
 CACHE                                              VARCHAR2(5)
 TABLE_LOCK                                         VARCHAR2(8)
 SAMPLE_SIZE                                        NUMBER
 LAST_ANALYZED                                      DATE
 PARTITIONED                                        VARCHAR2(3)
 IOT_TYPE                                           VARCHAR2(12)
 TEMPORARY                                          VARCHAR2(1)
 SECONDARY                                          VARCHAR2(1)
 NESTED                                             VARCHAR2(3)
 BUFFER_POOL                                        VARCHAR2(7)
 FLASH_CACHE                                        VARCHAR2(7)
 CELL_FLASH_CACHE                                   VARCHAR2(7)
 ROW_MOVEMENT                                       VARCHAR2(8)
 GLOBAL_STATS                                       VARCHAR2(3)
 USER_STATS                                         VARCHAR2(3)
 DURATION                                           VARCHAR2(15)
 SKIP_CORRUPT                                       VARCHAR2(8)
 MONITORING                                         VARCHAR2(3)
 CLUSTER_OWNER                                      VARCHAR2(128)
 DEPENDENCIES                                       VARCHAR2(8)
 COMPRESSION                                        VARCHAR2(8)
 COMPRESS_FOR                                       VARCHAR2(30)
 DROPPED                                            VARCHAR2(3)
 READ_ONLY                                          VARCHAR2(3)
 SEGMENT_CREATED                                    VARCHAR2(3)
 RESULT_CACHE                                       VARCHAR2(7)
 CLUSTERING                                         VARCHAR2(3)
 ACTIVITY_TRACKING                                  VARCHAR2(23)
 DML_TIMESTAMP                                      VARCHAR2(25)
 HAS_IDENTITY                                       VARCHAR2(3)
 CONTAINER_DATA                                     VARCHAR2(3)
 INMEMORY                                           VARCHAR2(8)
 INMEMORY_PRIORITY                                  VARCHAR2(8)
 INMEMORY_DISTRIBUTE                                VARCHAR2(15)
 INMEMORY_COMPRESSION                               VARCHAR2(17)
 INMEMORY_DUPLICATE                                 VARCHAR2(13)
 DEFAULT_COLLATION                                  VARCHAR2(100)
 DUPLICATED                                         VARCHAR2(1)
 SHARDED                                            VARCHAR2(1)
 EXTERNAL                                           VARCHAR2(3)
 HYBRID                                             VARCHAR2(3)
 CELLMEMORY                                         VARCHAR2(24)
 CONTAINERS_DEFAULT                                 VARCHAR2(3)
 CONTAINER_MAP                                      VARCHAR2(3)
 EXTENDED_DATA_LINK                                 VARCHAR2(3)
 EXTENDED_DATA_LINK_MAP                             VARCHAR2(3)
 INMEMORY_SERVICE                                   VARCHAR2(12)
 INMEMORY_SERVICE_NAME                              VARCHAR2(1000)
 CONTAINER_MAP_OBJECT                               VARCHAR2(3)
 MEMOPTIMIZE_READ                                   VARCHAR2(8)
 MEMOPTIMIZE_WRITE                                  VARCHAR2(8)
 HAS_SENSITIVE_COLUMN                               VARCHAR2(3)
 ADMIT_NULL                                         VARCHAR2(3)
 DATA_LINK_DML_ENABLED                              VARCHAR2(3)
 LOGICAL_REPLICATION                                VARCHAR2(8)

SQL> desc user_tables_constraints;
ERROR:
ORA-04043: object user_tables_constraints does not exist 


SQL> desc user_constraints;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OWNER                                              VARCHAR2(128)
 CONSTRAINT_NAME                           NOT NULL VARCHAR2(128)
 CONSTRAINT_TYPE                                    VARCHAR2(1)
 TABLE_NAME                                NOT NULL VARCHAR2(128)
 SEARCH_CONDITION                                   LONG
 SEARCH_CONDITION_VC                                VARCHAR2(4000)
 R_OWNER                                            VARCHAR2(128)
 R_CONSTRAINT_NAME                                  VARCHAR2(128)
 DELETE_RULE                                        VARCHAR2(9)
 STATUS                                             VARCHAR2(8)
 DEFERRABLE                                         VARCHAR2(14)
 DEFERRED                                           VARCHAR2(9)
 VALIDATED                                          VARCHAR2(13)
 GENERATED                                          VARCHAR2(14)
 BAD                                                VARCHAR2(3)
 RELY                                               VARCHAR2(4)
 LAST_CHANGE                                        DATE
 INDEX_OWNER                                        VARCHAR2(128)
 INDEX_NAME                                         VARCHAR2(128)
 INVALID                                            VARCHAR2(7)
 VIEW_RELATED                                       VARCHAR2(14)
 ORIGIN_CON_ID                                      NUMBER

SQL> select constraint_name,constraint_type,status from user_constraints
  2  where table_name like 'PRODUCTS';

CONSTRAINT_NAME                                                                 
--------------------------------------------------------------------------------
C STATUS                                                                        
- --------                                                                      
SYS_C007461                                                                     
P ENABLED                                                                       
                                                                                
FK_CAT_PROD                                                                     
R ENABLED                                                                       
                                                                                
C_PRODNOTNULL                                                                   
C ENABLED                                                                       
                                                                                

CONSTRAINT_NAME                                                                 
--------------------------------------------------------------------------------
C STATUS                                                                        
- --------                                                                      
C_PRODUNITNOTNULL                                                               
C ENABLED                                                                       
                                                                                
SYS_C007465                                                                     
C ENABLED                                                                       
                                                                                
CHK_UNITPRICE                                                                   
C ENABLED                                                                       
                                                                                

CONSTRAINT_NAME                                                                 
--------------------------------------------------------------------------------
C STATUS                                                                        
- --------                                                                      
C_UNITPRICENOTNULL                                                              
C ENABLED                                                                       
                                                                                
FK_SUPPLIER_PRODUCTS                                                            
R ENABLED                                                                       
                                                                                

8 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select constraint_name,constraint_type,status from user_constraints
  2* where table_name like 'CATEGORIES'
SQL> /

CONSTRAINT_NAME                                                                 
--------------------------------------------------------------------------------
C STATUS                                                                        
- --------                                                                      
SYS_C007460                                                                     
P ENABLED                                                                       
                                                                                
CHK_NAMELENGTH                                                                  
C ENABLED                                                                       
                                                                                

SQL> alter table products
  2  drop constraint
  3  .
SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* drop constraint CHK_UNITPRICE
SQL> /

Table altered.

SQL> desc products;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCTID                                 NOT NULL NUMBER(3)
 PRODUCTNAME                               NOT NULL VARCHAR2(30)
 UNITPRICE                                 NOT NULL NUMBER(10,2)
 CATEGORYID                                         NUMBER(2)
 UNITMEASUREMENT                           NOT NULL VARCHAR2(30)
 SUPPLIERID                                NOT NULL NUMBER(2)

SQL> 
SQL> 
SQL> alter table
  2  .
SQL> ed
Wrote file afiedt.buf

  1  alter table categories
  2* disable constraint CHK_NAMELENGTH
SQL> /

Table altered.

SQL> insert into categories values(3,'A','INVALID');

1 row created.

SQL> ed
Wrote file afiedt.buf

  1  alter table categories
  2*   enable constraint CHK_NAMELENGTH
SQL> 
SQL> /
  enable constraint CHK_NAMELENGTH
                    *
ERROR at line 2:
ORA-02293: cannot validate (C##HR.CHK_NAMELENGTH) - check constraint violated 


SQL> ed
Wrote file afiedt.buf

  1  alter table categories
  2*   enable novalidate  constraint CHK_NAMELENGTH 
SQL> /

Table altered.

SQL> insert into categories values(3,'B','INVALID');
insert into categories values(3,'B','INVALID')
*
ERROR at line 1:
ORA-02290: check constraint (C##HR.CHK_NAMELENGTH) violated 


SQL> ed
Wrote file afiedt.buf

  1* insert into categories values(4,'B','INVALID')
SQL> /
insert into categories values(4,'B','INVALID')
*
ERROR at line 1:
ORA-02290: check constraint (C##HR.CHK_NAMELENGTH) violated 


SQL> ed
Wrote file afiedt.buf

  1* insert into categories values(4,'BA','INVALID')
SQL> /
insert into categories values(4,'BA','INVALID')
*
ERROR at line 1:
ORA-02290: check constraint (C##HR.CHK_NAMELENGTH) violated 


SQL> ed
Wrote file afiedt.buf

  1* insert into categories values(4,'BAN','INVALID')
SQL> /

1 row created.

SQL> spool off
