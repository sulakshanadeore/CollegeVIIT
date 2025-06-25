SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
           10 Administration                        200        1700             
           20 Marketing                             201        1800             
           30 Purchasing                            114        1700             
           40 Human Resources                       203        2400             
           50 Shipping                              121        1500             
           60 IT                                    103        1400             
           70 Public Relations                      204        2700             
           80 Sales                                 145        2500             
           90 Executive                             100        1700             
          100 Finance                               108        1700             
          110 Accounting                            205        1700             

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          120 Treasury                                         1700             
          130 Corporate Tax                                    1700             
          140 Control And Credit                               1700             
          150 Shareholder Services                             1700             
          160 Benefits                                         1700             
          170 Manufacturing                                    1700             
          180 Construction                                     1700             
          190 Contracting                                      1700             
          200 Operations                                       1700             
          210 IT Support                                       1700             
          220 NOC                                              1700             

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          230 IT Helpdesk                                      1700             
          240 Government Sales                                 1700             
          250 Retail Sales                                     1700             
          260 Recruiting                                       1700             
          270 Payroll                                          1700             

27 rows selected.

SQL> create type dept_type as object
  2  (deptid number,
  3  dname varchar(50),
  4  locid number));
  5  /

Warning: Type created with compilation errors.

SQL> show err
Errors for TYPE DEPT_TYPE:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
4/14     PLS-00103: Encountered the symbol ")" when expecting one of the        
         following:                                                             
         ; not alter final instantiable persistable                             
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create type dept_type as object
  2  (deptid number,
  3  dname varchar(50),
  4* locid number))
SQL> /

Warning: Type created with compilation errors.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create type dept_type as object
  2  (deptid number,
  3  dname varchar(50),
  4* locid number))
SQL> 
SQL> /

Warning: Type created with compilation errors.

SQL> show err
Errors for TYPE DEPT_TYPE:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
4/14     PLS-00103: Encountered the symbol ")" when expecting one of the        
         following:                                                             
         ; not alter final instantiable persistable                             
                                                                                
SQL> ed
Wrote file afiedt.buf

  1   create type dept_type as object
  2      (deptid number,
  3     dname varchar2(30),
  4*     locid number);
SQL> /

Type created.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_DeptDetails
  2      (p_deptno number)
  3      return dept_type
  4   as 
  5  v_deptDetails dept_type;
  6      begin
  7      select dept_type(department_id,department_name,
  8  location_id) into v_deptDetails from departments
  9     where department_id=p_deptno;
 10      return v_deptDetails;
 11*    end;
SQL> /

Function created.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  declare
  2      v_myDeptDetails dept_type;
  3      begin
  4      v_myDeptDetails:=fn_DeptDetails(206);
  5      dbms_output.put_line(v_myDeptDetails.deptid || '  ' || v_myDeptDetails.dname||'   '||v_myDeptDetails.locid);
  6      end;
  7*     /
SQL> .
SQL> /
    /
    *
ERROR at line 7:
ORA-06550: line 7, column 5: 
PLS-00103: Encountered the symbol "/" The symbol "/" was ignored. 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2      v_myDeptDetails dept_type;
  3      begin
  4      v_myDeptDetails:=fn_DeptDetails(206);
  5      dbms_output.put_line(v_myDeptDetails.deptid || '  ' || v_myDeptDetails.dname||'   '||v_myDeptDetails.locid);
  6      end;
  7*    /
SQL> /
   /
   *
ERROR at line 7:
ORA-06550: line 7, column 4: 
PLS-00103: Encountered the symbol "/" The symbol "/" was ignored. 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2      v_myDeptDetails dept_type;
  3      begin
  4      v_myDeptDetails:=fn_DeptDetails(206);
  5      dbms_output.put_line(v_myDeptDetails.deptid || '  ' || v_myDeptDetails.dname||'   '||v_myDeptDetails.locid);
  6*     end;
  7  \\
  8  .
SQL> ed
Wrote file afiedt.buf

  1  declare
  2      v_myDeptDetails dept_type;
  3      begin
  4      v_myDeptDetails:=fn_DeptDetails(206);
  5      dbms_output.put_line(v_myDeptDetails.deptid || '  ' || v_myDeptDetails.dname||'   '||v_myDeptDetails.locid);
  6*     end;
SQL> /
declare
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at "C##HR.FN_DEPTDETAILS", line 7 
ORA-06512: at line 4 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2      v_myDeptDetails dept_type;
  3      begin
  4      v_myDeptDetails:=fn_DeptDetails(120);
  5      dbms_output.put_line(v_myDeptDetails.deptid || '  ' || v_myDeptDetails.dname||'   '||v_myDeptDetails.locid);
  6*     end;
SQL> /
120  Treasury   1700                                                            

PL/SQL procedure successfully completed.

SQL> 
SQL> create table students
  2  (rno number primary key,
  3  studentname varchar2(50),
  4  deptDetails dept_type);

Table created.

SQL> insert into students values(10,'Gauri',dept_type(100,'Electronics',1));

1 row created.

SQL> select * from students;

       RNO STUDENTNAME                                                          
---------- --------------------------------------------------                   
DEPTDETAILS(DEPTID, DNAME, LOCID)                                               
--------------------------------------------------------------------------------
        10 Gauri                                                                
DEPT_TYPE(100, 'Electronics', 1)                                                
                                                                                

SQL> create function fn_fetchStudentDetails
  2  (p_rollno students.rno%type)
  3  as
  4  .
SQL> ed
Wrote file afiedt.buf

  1  create function fn_fetchStudentDetails
  2  (p_rollno students.rno%type)
  3  return varchar2
  4  as
  5  v_studname students.studentname%type;
  6  begin
  7  select studentname into v_studname from students
  8  where rno=p_rollno;
  9  return v_studname;
 10* end;
SQL> /

Function created.

SQL> declare
  2  v_name students.studentname%type;
  3  begin
  4  v_name:=fn_fetchStudentDetails(10);
  5  dbms_output.put_line(v_name);
  6  end;
  7  /
Gauri                                                                           

PL/SQL procedure successfully completed.

SQL> select * from employees
  2  where department_id=100;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        108 Nancy                Gruenberg                                      
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008  
                      101           100                                         
                                                                                
        109 Daniel               Faviet                                         
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000  
                      108           100                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        110 John                 Chen                                           
JCHEN                     1.515.555.0110       28-SEP-15 FI_ACCOUNT       8200  
                      108           100                                         
                                                                                
        111 Ismael               Sciarra                                        
ISCIARRA                  1.515.555.0111       30-SEP-15 FI_ACCOUNT       7700  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      108           100                                         
                                                                                
        112 Jose Manuel          Urman                                          
JMURMAN                   1.515.555.0112       07-MAR-16 FI_ACCOUNT       7800  
                      108           100                                         
                                                                                
        113 Luis                 Popp                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
LPOPP                     1.515.555.0113       07-DEC-17 FI_ACCOUNT       6900  
                      108           100                                         
                                                                                

6 rows selected.

SQL> create type empDetailsType as table
  2  (empid number,
  3  ename varchar2(50),
  4  .
SQL> ed
Wrote file afiedt.buf

  1  create type empDetailsType as table
  2  (empid number,
  3  fname varchar2(50),
  4  lname varchar2(50),
  5* email varchar2(50));
SQL> /

Warning: Type created with compilation errors.

SQL> show err
Errors for TYPE EMPDETAILSTYPE:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
2/1      PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         of                                                                     
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create type empDetailsType as table
  2  (empid number,
  3  fname varchar2,
  4  lname varchar2,
  5* email varchar2);
SQL> /

Warning: Type created with compilation errors.

SQL> show err
Errors for TYPE EMPDETAILSTYPE:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
2/1      PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         of                                                                     
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create type empDetailsType is table
  2  (empid employees.employee_id%type,
  3  fname employees.first_name%type,
  4  lname employees.last_name%type,
  5  email employees.email%type,
  6* );
SQL> /

Warning: Type created with compilation errors.

SQL> show err
Errors for TYPE EMPDETAILSTYPE:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
2/1      PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         of                                                                     
                                                                                
6/1      PLS-00103: Encountered the symbol ")" when expecting one of the        
         following:                                                             
         not pragma <an identifier>                                             
         <a double-quoted delimited-identifier> final instantiable              
         persistable current delete exists order overriding prior               
         static member constructor map                                          
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create type empDetailsType is table of employees%rowtype
  2  (empid employees.employee_id%type,
  3  fname employees.first_name%type,
  4  lname employees.last_name%type,
  5  email employees.email%type,
  6* );
SQL> /

Warning: Type created with compilation errors.

SQL> show err
Errors for TYPE EMPDETAILSTYPE:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
2/8      PLS-00103: Encountered the symbol "EMPLOYEES" when expecting one       
         of the following:                                                      
         . ( ) , * @ % & = - + < / > at in is mod remainder not rem =>          
         <an exponent (**)> <> or != or ~= >= <= <> and or like like2           
         like4 likec between || multiset char member byte submultiset           
         The symbol "." was substituted for "EMPLOYEES" to continue.            
                                                                                
3/7      PLS-00103: Encountered the symbol "EMPLOYEES" when expecting one       
         of the following:                                                      
         . ( ) , * @ % & = - + < / > at in is mod remainder not rem =>          
         <an exponent (**)> <> or != or ~= >= <= <> and or like like2           

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
         like4 likec between || multiset member submultiset                     
         The symbol "." was substituted for "EMPLOYEES" to continue.            
                                                                                
4/7      PLS-00103: Encountered the symbol "EMPLOYEES" when expecting one       
         of the following:                                                      
         . ( ) , * @ % & = - + < / > at in is mod remainder not rem =>          
         <an exponent (**)> <> or != or ~= >= <= <> and or like like2           
         like4 likec between || multiset member submultiset                     
         The symbol "." was substituted for "EMPLOYEES" to continue.            
                                                                                
5/7      PLS-00103: Encountered the symbol "EMPLOYEES" when expecting one       

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
         of the following:                                                      
         . ( ) , * @ % & = - + < / > at in is mod remainder not rem =>          
         <an exponent (**)> <> or != or ~= >= <= <> and or like like2           
         like4 likec between || multiset member submultiset                     
         The symbol "." was substituted for "EMPLOYEES" to continue.            
                                                                                
6/1      PLS-00103: Encountered the symbol ")" when expecting one of the        
         following:                                                             
         ( - + case mod new not null <an identifier>                            
         <a double-quoted delimited-identifier> <a bind variable>               
         continue avg count current exists max min prior sql stddev             

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
         sum variance execute forall merge time timestamp interval              
         date <a string literal with character set specification>               
         <a number> <a single-quoted SQL string> pipe                           
         <an alternatively-quoted string literal with character set             
         specification>                                                         
         <an alternatively                                                      
                                                                                
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create or replace type emptype as object
  2  (empid number,
  3  fname varcha2(50),
  4  lname varchar2(50),
  5* email varchar2(50));
  6  /

Warning: Type created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace type emptype as object
  2  (empid number,
  3  fname varcha2(50),
  4  lname varchar2(50),
  5* email varchar2(50))
SQL> /

Warning: Type created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace type emptype as object
  2  (empid number,
  3  fname varchar2(50),
  4  lname varchar2(50),
  5* email varchar2(50))
SQL> /

Type created.

SQL> create or replace empTableType as Table of emptype;
create or replace empTableType as Table of emptype
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> ed
Wrote file afiedt.buf

  1* create or replace type empTableType as Table of emptype
SQL> /

Type created.

SQL> create
  2  .
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_getTableOfEmpByDeptno
  2  (p_deptno number)
  3  return empTableType
  4  as 
  5  v_emptabletype empTableType
  6  begin
  7  select emptype(employee_id,first_name,last_name,email) bulk collect into v_emptabletype  from  employees
  8  where department_id=p_deptno;
  9  return v_emptabletype;
 10* end;
SQL> /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_GETTABLEOFEMPBYDEPTNO:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
6/1      PLS-00103: Encountered the symbol "BEGIN" when expecting one of        
         the following:                                                         
         := . ( @ % ; not null range default character                          
         The symbol ";" was substituted for "BEGIN" to continue.                
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_getTableOfEmpByDeptno
  2  (p_deptno number)
  3  return empTableType
  4  as 
  5  v_emptabletype empTableType;
  6  begin
  7  select emptype(employee_id,first_name,last_name,email) bulk collect into v_emptabletype  from  employees
  8  where department_id=p_deptno;
  9  return v_emptabletype;
 10* end;
SQL> /

Function created.

SQL> declare
  2  .
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  emp_table empTableType;
  3  begin
  4  emp_table:=fn_getTableOfEmpByDeptno(100);
  5  for i in 1..emp_table.count loop
  6  dbms_output.put_line(emp_table(i).empid ||'  ' || emp_table(i).fname ||'  ' ||emp_table(i).lname ||'  ' || emp_table(i).email);
  7  end loop;
  8* end;
  9  /
108  Nancy  Gruenberg  NGRUENBE                                                 
109  Daniel  Faviet  DFAVIET                                                    
110  John  Chen  JCHEN                                                          
111  Ismael  Sciarra  ISCIARRA                                                  
112  Jose Manuel  Urman  JMURMAN                                                
113  Luis  Popp  LPOPP                                                          

PL/SQL procedure successfully completed.

SQL> spool off
