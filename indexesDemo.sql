SQL> create table movies
  2  (movieid number(3),
  3  moviename varchar2(30),
  4  release
  5  da
  6  .
SQL> ed
Wrote file afiedt.buf

  1  create table movies
  2  (movieid number(3),
  3  moviename varchar2(30),
  4  releaseDate date,
  5* ticketPrice number(10,2))
SQL> /

Table created.

SQL> connect / as sysdba
Connected.
SQL> grant create index to C##hr;
grant create index to C##hr
      *
ERROR at line 1:
ORA-00990: missing or invalid privilege 


SQL> grant create any index to C##hr;

Grant succeeded.

SQL> connect to C##hr/hr;
SP2-0306: Invalid option.
Usage: CONN[ECT] [{logon|/|proxy} [AS {SYSDBA|SYSOPER|SYSASM|SYSBACKUP|SYSDG|SYSKM|SYSRAC}] [edition=value]]
where <logon> ::= <username>[/<password>][@<connect_identifier>]
      <proxy> ::= <proxyuser>[<username>][/<password>][@<connect_identifier>]
SQL> connect  C##hr/hr;
Connected.
SQL> clear scr

SQL> create clustered index idx_movies
  2  on movies(movieid);
create clustered index idx_movies
       *
ERROR at line 1:
ORA-00901: invalid CREATE command 


SQL> ed
Wrote file afiedt.buf

  1  create table movies
  2  (movieid number(3) primary key,
  3  moviename varchar2(30),
  4  releasedate date,
  5  ticketPrice number(10,2)
  6  )
  7* organization index
SQL> /

Table created.

SQL> create index idx_moviename on movies(moviename);

Index created.

SQL> alter table movies
  2  add idNo number(16);

Table altered.

SQL> create unique index idx_idIndex on movies(idNo);

Index created.

SQL> create index idx_comp_movies on movies(moviename,releasedate);

Index created.

SQL> create sequence seq_movieId
  2  start with 1
  3  increment with 1
  4  nomaxvalue;
increment with 1
          *
ERROR at line 3:
ORA-00924: missing BY keyword 


SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_movieId
  2  start with 1
  3  increment by 1
  4* nomaxvalue
SQL> /

Sequence created.

SQL> desc movies
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MOVIEID                                   NOT NULL NUMBER(3)
 MOVIENAME                                          VARCHAR2(30)
 RELEASEDATE                                        DATE
 TICKETPRICE                                        NUMBER(10,2)
 IDNO                                               NUMBER(16)

SQL> insert all into movies values(seq_movieId.nextval,'A',sysdate,100,111111111)
  2  insert into movies values(seq_movieId.nextval,'A',sysdate,100,111111111)
  3  .
SQL> ed
Wrote file afiedt.buf

  1  insert  into movies values(seq_movieId.nextval,'A',sysdate,100,111111111)
  2  values(seq_movieId.nextval,'B',sysdate,200,222222222)
  3* values(seq_movieId.nextval,'C',sysdate,300,332222222)
  4  /
values(seq_movieId.nextval,'B',sysdate,200,222222222)
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  insert  into movies(movieid,moviename,releasedate,ticketprice,idno) values(seq_movieId.nextval,'A',sysdate,100,111111111)
  2  values(seq_movieId.nextval,'B',sysdate,200,222222222)
  3* values(seq_movieId.nextval,'C',sysdate,300,332222222)
SQL> /
values(seq_movieId.nextval,'B',sysdate,200,222222222)
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  insert  into movies(movieid,moviename,releasedate,ticketprice,idno) values(seq_movieId.nextval,'A',sysdate,100,111111111),
  2  values(seq_movieId.nextval,'B',sysdate,200,222222222),
  3* values(seq_movieId.nextval,'C',sysdate,300,332222222)
SQL> /
insert  into movies(movieid,moviename,releasedate,ticketprice,idno) values(seq_movieId.nextval,'A',sysdate,100,111111111),
                                                                                                                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  insert  into movies(movieid,moviename,releasedate,ticketprice,idno) values(1,'A',sysdate,100,111111111),
  2  values(2,'B',sysdate,200,222222222),
  3* values(3,'C',sysdate,300,332222222)
SQL> /
insert  into movies(movieid,moviename,releasedate,ticketprice,idno) values(1,'A',sysdate,100,111111111),
                                                                                                       *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> desc movies
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MOVIEID                                   NOT NULL NUMBER(3)
 MOVIENAME                                          VARCHAR2(30)
 RELEASEDATE                                        DATE
 TICKETPRICE                                        NUMBER(10,2)
 IDNO                                               NUMBER(16)

SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(1,'A',sysdate,100,111111111)
  2  into movies (movieid,moviename,releasedate,ticketprice,idno)
  3  values(2,'B',sysdate,200,222222222)
  4  into movies (movieid,moviename,releasedate,ticketprice,idno)
  5* values(3,'C',sysdate,300,332222222)
SQL> /
values(3,'C',sysdate,300,332222222)
                                  *
ERROR at line 5:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(1,'A',sysdate,100,111111111)
  2  into movies (movieid,moviename,releasedate,ticketprice,idno)
  3  values(2,'B',sysdate,200,222222222)
  4  into movies (movieid,moviename,releasedate,ticketprice,idno)
  5  values(3,'C',sysdate,300,332222222)
  6* select * from dual
SQL> /

3 rows created.

SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(1,'A',sysdate,100,111111111)
  2  into movies (movieid,moviename,releasedate,ticketprice,idno)
  3  values(2,'B',sysdate,200,222222222)
  4  into movies (movieid,moviename,releasedate,ticketprice,idno)
  5  values(3,'C',sysdate,300,332222222)
  6* select * from dual
SQL> delete * from movies;
delete * from movies
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> ed
Wrote file afiedt.buf

  1* delete  from movies
SQL> /

3 rows deleted.

SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111111111)
  2    2  into movies (movieid,moviename,releasedate,ticketprice,idno)
  3    3  values(seq_movieid.nextval,'B',sysdate,200,222222222)
  4    4  into movies (movieid,moviename,releasedate,ticketprice,idno)
  5    5  values(seq_movieid.nextval,'C',sysdate,300,332222222)
  6*   6* select * from dual
SQL> /
  2  into movies (movieid,moviename,releasedate,ticketprice,idno)
  *
ERROR at line 2:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111111111)
  2      into movies (movieid,moviename,releasedate,ticketprice,idno)
  3     values(seq_movieid.nextval,'B',sysdate,200,222222222)
  4     into movies (movieid,moviename,releasedate,ticketprice,idno)
  5      values(seq_movieid.nextval,'C',sysdate,300,332222222)
  6*    select * from dual
SQL> /
insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111111111)
*
ERROR at line 1:
ORA-00001: unique constraint (C##HR.SYS_IOT_TOP_73156) violated 


SQL> select * from movies;

no rows selected

SQL> commit;

Commit complete.

SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111111111)
  2         into movies (movieid,moviename,releasedate,ticketprice,idno)
  3         values(seq_movieid.nextval,'B',sysdate,200,222222222)
  4         into movies (movieid,moviename,releasedate,ticketprice,idno)
  5          values(seq_movieid.nextval,'C',sysdate,300,332222222)
  6*       select * from dual
SQL> /
insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111111111)
*
ERROR at line 1:
ORA-00001: unique constraint (C##HR.SYS_IOT_TOP_73156) violated 


SQL> ed
Wrote file afiedt.buf

  1  insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111113333)
  2         into movies (movieid,moviename,releasedate,ticketprice,idno)
  3         values(seq_movieid.nextval,'B',sysdate,200,22232222)
  4         into movies (movieid,moviename,releasedate,ticketprice,idno)
  5          values(seq_movieid.nextval,'C',sysdate,300,334222222)
  6*       select * from dual
SQL> /
insert all  into movies (movieid,moviename,releasedate,ticketprice,idno) values(seq_movieid.nextval,'A',sysdate,100,111113333)
*
ERROR at line 1:
ORA-00001: unique constraint (C##HR.SYS_IOT_TOP_73156) violated 


SQL> select * from movies;

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  insert all 
  2   into movies (movieid,moviename,releasedate,ticketprice,idno) 
  3        values(seq_movieid.nextval,'A',sysdate,100,1)
  4   into movies (movieid,moviename,releasedate,ticketprice,idno)
  5         values(seq_movieid.nextval,'B',sysdate,200,2)
  6         into movies (movieid,moviename,releasedate,ticketprice,idno)
  7          values(seq_movieid.nextval,'C',sysdate,300,3)
  8*       select * from dual
SQL> /
insert all 
*
ERROR at line 1:
ORA-00001: unique constraint (C##HR.SYS_IOT_TOP_73156) violated 


SQL> ed
Wrote file afiedt.buf

  1  insert all 
  2   into movies (movieid,moviename,releasedate,ticketprice,idno) 
  3        values(100,'A',sysdate,100,1)
  4   into movies (movieid,moviename,releasedate,ticketprice,idno)
  5         values(101,'B',sysdate,200,2)
  6         into movies (movieid,moviename,releasedate,ticketprice,idno)
  7          values(102,'C',sysdate,300,3)
  8*       select * from dual
SQL> /

3 rows created.

SQL> 
SQL> select * from movies;

   MOVIEID MOVIENAME                      RELEASEDA TICKETPRICE       IDNO      
---------- ------------------------------ --------- ----------- ----------      
       100 A                              19-JUN-25         100          1      
       101 B                              19-JUN-25         200          2      
       102 C                              19-JUN-25         300          3      

SQL> explain plan for
  2  select * from movies
  3  where movieid=102;

Explained.

SQL> select * from table(dbms_xplan.display);

PLAN_TABLE_OUTPUT                                                               
--------------------------------------------------------------------------------
Plan hash value: 238513730                                                      
                                                                                
--------------------------------------------------------------------------------
-------                                                                         
                                                                                
| Id  | Operation         | Name              | Rows  | Bytes | Cost (%CPU)| Tim
e     |                                                                         
                                                                                
--------------------------------------------------------------------------------
-------                                                                         
                                                                                

PLAN_TABLE_OUTPUT                                                               
--------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |                   |     1 |    65 |     1   (0)| 00:
00:01 |                                                                         
                                                                                
|*  1 |  INDEX UNIQUE SCAN| SYS_IOT_TOP_73156 |     1 |    65 |     1   (0)| 00:
00:01 |                                                                         
                                                                                
--------------------------------------------------------------------------------
-------                                                                         
                                                                                
                                                                                
Predicate Information (identified by operation id):                             

PLAN_TABLE_OUTPUT                                                               
--------------------------------------------------------------------------------
---------------------------------------------------                             
                                                                                
   1 - access("MOVIEID"=102)                                                    

13 rows selected.

SQL> set lines 120
SQL> /

PLAN_TABLE_OUTPUT                                                                                                       
------------------------------------------------------------------------------------------------------------------------
Plan hash value: 238513730                                                                                              
                                                                                                                        
---------------------------------------------------------------------------------------                                 
| Id  | Operation         | Name              | Rows  | Bytes | Cost (%CPU)| Time     |                                 
---------------------------------------------------------------------------------------                                 
|   0 | SELECT STATEMENT  |                   |     1 |    65 |     1   (0)| 00:00:01 |                                 
|*  1 |  INDEX UNIQUE SCAN| SYS_IOT_TOP_73156 |     1 |    65 |     1   (0)| 00:00:01 |                                 
---------------------------------------------------------------------------------------                                 
                                                                                                                        
Predicate Information (identified by operation id):                                                                     
---------------------------------------------------                                                                     

PLAN_TABLE_OUTPUT                                                                                                       
------------------------------------------------------------------------------------------------------------------------
                                                                                                                        
   1 - access("MOVIEID"=102)                                                                                            

13 rows selected.

SQL> 
SQL> spool off
