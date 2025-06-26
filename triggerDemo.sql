SQL> 
SQL> declare
  2  .
SQL> ec
SP2-0042: unknown command "ec" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger trig_insert
  2  after insert on employees
  3  for each row
  4  begin
  5  dbms_output.put_line('New row inserted');
  6  dbms_output.put_line('Empid =' || :new.employee_id);
  7* end;
SQL> /

Trigger created.

SQL> desc employees
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> insert into employees values(700,'Anita','P','anita@gmail.com','33333333',sysdate,'AC_MGR',10000,NULL,204,20);

1 row created.

SQL> set serveroutput on
SQL> ed
Wrote file afiedt.buf

  1* insert into employees values(701,'Anita','P','anita@gmail.com','33333333',sysdate,'AC_MGR',10000,NULL,204,20)
SQL> /
insert into employees values(701,'Anita','P','anita@gmail.com','33333333',sysdate,'AC_MGR',10000,NULL,204,20)
*
ERROR at line 1:
ORA-00001: unique constraint (C##HR.EMP_EMAIL_UK) violated 


SQL> ed
Wrote file afiedt.buf

  1* insert into employees values(701,'Anita','P','anita1@gmail.com','33333333',sysdate,'AC_MGR',10000,NULL,204,20)
SQL> /
New row inserted                                                                
Empid =701                                                                      

1 row created.

SQL> ed
Wrote file afiedt.buf

  1  create table empDummy
  2  as
  3  select * from employees
  4* where 1=2
SQL> /

Table created.

SQL> select * from empDummy;

no rows selected

SQL> desc empdummy
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger trig_BeforeDelete
  2  before delete on employees
  3  for each row
  4  begin
  5  insert into empdummy(employee_id,first_name,last_name,salary) values(:old.employee_id,:old.first_name,:old.last_name,:old.salary);
  6* end;
SQL> /

Trigger created.

SQL> delete from employees
  2  where employee_id=701;
delete from employees
            *
ERROR at line 1:
ORA-01400: cannot insert NULL into ("C##HR"."EMPDUMMY"."EMAIL") 
ORA-06512: at "C##HR.TRIG_BEFOREDELETE", line 2 
ORA-04088: error during execution of trigger 'C##HR.TRIG_BEFOREDELETE' 


SQL> 
SQL> v_calculatedsal
SP2-0734: unknown command beginning "v_calculat..." - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1   create or replace trigger trig_BeforeDelete
  2      before delete on employees
  3      for each row
  4      begin
  5      insert into empdummy(employee_id,first_name,last_name,salary,email,job_id,hire_date) values(:old.employee_id,:old.first_name,:old.last_name,:old.salary,:old.email,:old.job_id,:old.hire_date);
  6* end;
SQL> /

Trigger created.

SQL> delete from employees
  2  where employee_id=700;

1 row deleted.

SQL> select * from empdummy;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        700 Anita                P                                              
anita@gmail.com                                26-JUN-25 AC_MGR          10000  
                                                                                
                                                                                

SQL> spool off
