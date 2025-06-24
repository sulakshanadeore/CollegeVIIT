SQL>   create or replace function fn_calculateBonus
  2  (p_empid number)
  3  return number
  4  as
  5  v_bonus number;
  6  v_sal number;
  7  begin
  8  select salary into v_sal from employees
  9  where employee_id=p_empid;
 10  v_bonus:=v_sal*.10;
 11  return v_bonus;
 12  exception
 13  when no_data_found then
 14  dbms_output.put_line('not found employee id');
 15* end;
SQL> /

Function created.

SQL> declare
  2  .
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_bonusval number(10);
  3  begin
  4  v_bonusval:=fn_calculateBonus(206);
  5  dbms_output.put_line(v_bonusval);
  6* end;
SQL> /
830                                                                             

PL/SQL procedure successfully completed.

SQL> select salary from employees where employee_id=206;

    SALARY                                                                      
----------                                                                      
      8300                                                                      

SQL> 
SQL> declare
  2  v_bonusval number(10);
  3  begin
  4  v_bonusval:=fn_calculateBonus(2069);
  5  dbms_output.put_line(v_bonusval);
  6  end;
  7  /
not found employee id                                                           
declare
*
ERROR at line 1:
ORA-06503: PL/SQL: Function returned without value 
ORA-06512: at "C##HR.FN_CALCULATEBONUS", line 15 
ORA-06512: at line 4 


SQL> 
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

SQL>  create or replace  type  EmpContactDetails as object
  2  (
  3  empid number(6),
  4  phone varchar2(20),
  5  email varchar2(25)
  6* )
SQL> /

Type created.

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showtypeData
  2  (
  3  p_empid number
  4  )
  5  as 
  6  userdata EmpContactDetails
  7  begin
  8  select empid,phone,email into userdata from employees
  9  where employee_id=p_empid;
 10  dbms_output.put_line(userdata.empid);
 11  dbms_output.put_line(userdata.phone);
 12  dbms_output.put_line(userdata.email);
 13* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWTYPEDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
7/1      PLS-00103: Encountered the symbol "BEGIN" when expecting one of        
         the following:                                                         
         := . ( @ % ; not null range default character                          
         The symbol ";" was substituted for "BEGIN" to continue.                
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showtypeData
  2  (
  3  p_empid number
  4  )
  5  as 
  6  userdata EmpContactDetails;
  7  begin
  8  select empid,phone,email into userdata from employees
  9  where employee_id=p_empid;
 10  dbms_output.put_line(userdata.empid);
 11  dbms_output.put_line(userdata.phone);
 12  dbms_output.put_line(userdata.email);
 13* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWTYPEDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
8/1      PL/SQL: SQL Statement ignored                                          
8/14     PL/SQL: ORA-00904: "PHONE": invalid identifier                         
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showtypeData
  2  (
  3  p_empid number
  4  )
  5  as 
  6  userdata EmpContactDetails;
  7  begin
  8  select employee_id,phone_number,email into userdata from employees
  9  where employee_id=p_empid;
 10  dbms_output.put_line(userdata.empid);
 11  dbms_output.put_line(userdata.phone);
 12  dbms_output.put_line(userdata.email);
 13* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWTYPEDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
8/1      PL/SQL: SQL Statement ignored                                          
8/53     PL/SQL: ORA-00947: not enough values                                   
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showtypeData
  2  (
  3  p_empid number
  4  )
  5  as 
  6  userdata EmpContactDetails;
  7  begin
  8  select employee_id,phone_number,email into userdata.empid,
  9  userdata.phone,userdata.email from employees
 10  where employee_id=p_empid;
 11  dbms_output.put_line(userdata.empid);
 12  dbms_output.put_line(userdata.phone);
 13  dbms_output.put_line(userdata.email);
 14* end;
SQL> /

Procedure created.


SQL> exec p_showtypeData(206);
BEGIN p_showtypeData(206); END;

*
ERROR at line 1:
ORA-06530: Reference to uninitialized composite 
ORA-06512: at "C##HR.P_SHOWTYPEDATA", line 8 
ORA-06512: at line 1 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_empid number(3):=206;
  3  begin
  4  p_showtypeData(v_empid);
  5* end;
SQL> /
declare
*
ERROR at line 1:
ORA-06530: Reference to uninitialized composite 
ORA-06512: at "C##HR.P_SHOWTYPEDATA", line 8 
ORA-06512: at line 4 


  1  select employee_id,phone_number,email from employees
  2* where employee_id=206
SQL> /

EMPLOYEE_ID PHONE_NUMBER         EMAIL                                          
----------- -------------------- -------------------------                      
        206 1.515.555.0171       WGIETZ                                         

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select employee_id,phone_number,email from employees
  2* where employee_id=206
