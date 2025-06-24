SQL> .
SQL> ed
SP2-0107: Nothing to save.
SQL> declare
  2  .
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=1;
  3  begin
  4  dbms_output.put_line(v_cnt);
  5  loop
  6  v_cnt:=v_cnt+1;
  7  dbms_output.put_line(v_cnt);
  8  exit when v_cnt>=5;
  9* end;
SQL> set serveroutput on
SQL> /
end;
   *
ERROR at line 9:
ORA-06550: line 9, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=1;
  3  begin
  4  dbms_output.put_line(v_cnt);
  5  loop
  6  v_cnt:=v_cnt+1;
  7  dbms_output.put_line(v_cnt);
  8  exit when v_cnt>=5;
  9* end;
 10  /
end;
   *
ERROR at line 9:
ORA-06550: line 9, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=1;
  3  begin
  4  dbms_output.put_line(v_cnt);
  5  loop
  6  v_cnt:=v_cnt+1;
  7  dbms_output.put_line(v_cnt);
  8  exit when v_cnt>=5;
  9  end loop;
 10* end;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=1;
  3  begin
  4  while v_cnt<=5;
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  v_cnt:=v_cnt+1;
  8  dbms_output.put_line(v_cnt);
  9  end loop;
 10* end;
SQL> /
while v_cnt<=5;
              *
ERROR at line 4:
ORA-06550: line 4, column 15: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
* & - + / at loop mod remainder rem <an exponent (**)> and or 
|| multiset 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=1;
  3  begin
  4  while v_cnt<=5
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  v_cnt:=v_cnt+1;
  8  dbms_output.put_line(v_cnt);
  9  end loop;
 10* end;
SQL> /\
1                                                                               
2                                                                               
2                                                                               
3                                                                               
3                                                                               
4                                                                               
4                                                                               
5                                                                               
5                                                                               
6                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=1;
  3  begin
  4  while v_cnt<=5
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  v_cnt:=v_cnt+1;
  8  end loop;
  9* end;
 10  /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2);
  3  begin
  4  for v_cnt in 1..10
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  v_cnt:=v_cnt+1;
  8  end loop;
  9* end;
SQL> /
v_cnt:=v_cnt+1;
*
ERROR at line 7:
ORA-06550: line 7, column 1: 
PLS-00363: expression 'V_CNT' cannot be used as an assignment target 
ORA-06550: line 7, column 1: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2);
  3  begin
  4  for v_cnt in 1..10
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  end loop;
  8* end;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(2):=100;
  3  begin
  4  for v_cnt in 1..10
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  end loop;
  8* end;
SQL> /
declare
*
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: number precision too large 
ORA-06512: at line 2 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(3):=100;
  3  begin
  4  for v_cnt in 1..10
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  end loop;
  8* end;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(3):=100;
  3  begin
  4  for v_cnt in 1..10
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  end loop;
  8* end;
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_cnt number(3):=100;
  3  begin
  4  for v_cnt in 1..10
  5  loop
  6  dbms_output.put_line(v_cnt);
  7  end loop;
  8* end;
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number(3);
  4  )
  5  as
  6  begin
  7  declare
  8  v_fname varchar2(20)
  9  select first_name  
 10  into v_fname 
 11  from employees
 12  where employee_id=p_empid;
 13  dbms_output.put_line(v_fname);
 14* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/15     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number(3)
  4  )
  5  as
  6  begin
  7  declare
  8  v_fname varchar2(20)
  9  select first_name  
 10  into v_fname 
 11  from employees
 12  where employee_id=p_empid;
 13  dbms_output.put_line(v_fname);
 14* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/15     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
         The symbol ":=" was substituted for "(" to continue.                   
                                                                                
9/1      PLS-00103: Encountered the symbol "SELECT" when expecting one of       
         the following:                                                         
         := ; not null default character                                        
                                                                                
13/1     PLS-00103: Encountered the symbol "DBMS_OUTPUT"                        
13/30    PLS-00103: Encountered the symbol ";" when expecting one of the        

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
         following:                                                             
         . ( , * % & - + / at mod remainder rem <an identifier>                 
         <a double-quoted delimited-identifier> <an exponent (**)> as           
         from into || multiset bulk                                             
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number(3)
  4  )
  5  as
  6  begin
  7  declare
  8  v_fname varchar2(20);
  9  select first_name  
 10  into v_fname 
 11  from employees
 12  where employee_id=p_empid;
 13  dbms_output.put_line(v_fname);
 14* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/15     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
         The symbol ":=" was substituted for "(" to continue.                   
                                                                                
9/1      PLS-00103: Encountered the symbol "SELECT" when expecting one of       
         the following:                                                         
         begin function pragma procedure subtype type <an identifier>           
         <a double-quoted delimited-identifier> current cursor delete           
         exists prior                                                           
         The symbol "begin" was substituted for "SELECT" to continue.           

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
                                                                                
14/4     PLS-00103: Encountered the symbol "end-of-file" when expecting         
         one of the following:                                                  
         ( begin case declare end exception exit for goto if loop mod           
         null pragma raise return select update while with                      
         <an identifier> <a double-quoted delimited-identifier>                 
         <a bind variable> << continue close current delete fetch lock          
         insert open rollback savepoint set sql execute commit forall           
         merge pipe purge json_exists json_value json_query                     
         json_object json_array                                                 
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number(3)
  4  )
  5  as
  6  declare
  7  v_fname varchar2(20);
  8  begin
  9  select first_name  
 10  into v_fname 
 11  from employees
 12  where employee_id=p_empid;
 13  dbms_output.put_line(v_fname);
 14* end;
 15  /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/15     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
         The symbol ":=" was substituted for "(" to continue.                   
                                                                                
6/1      PLS-00103: Encountered the symbol "DECLARE" when expecting one of      
         the following:                                                         
         begin function pragma procedure subtype type <an identifier>           
         <a double-quoted delimited-identifier> current cursor delete           
         exists prior external language                                         
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number(3)
  4  )
  5  as
  6  begin
  7  declare
  8  v_fname varchar2(20);
  9  begin
 10  select first_name  
 11  into v_fname 
 12  from employees
 13  where employee_id=p_empid;
 14  dbms_output.put_line(v_fname);
 15  end;
 16* end;
 17  /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/15     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
         The symbol ":=" was substituted for "(" to continue.                   
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number(3)
  4  )
  5  as
  6  v_fname varchar2(20);
  7  begin
  8  select first_name  
  9  into v_fname 
 10  from employees
 11  where employee_id=p_empid;
 12  dbms_output.put_line(v_fname);
 13* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE P_SHOWDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/15     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
         The symbol ":=" was substituted for "(" to continue.                   
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure p_showData
  2  (
  3  p_empid number
  4  )
  5  as
  6  v_fname varchar2(20);
  7  begin
  8  select first_name  
  9  into v_fname 
 10  from employees
 11  where employee_id=p_empid;
 12  dbms_output.put_line(v_fname);
 13* end;
SQL> /

Procedure created.

SQL> begin
  2  p_showData(206);
  3  end;
  4  /
William                                                                         

PL/SQL procedure successfully completed.

SQL> exec p_showdata(206);
William                                                                         

PL/SQL procedure successfully completed.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure findEmpName
  2  (p_empid number,
  3  p_ename out varchar2(20)
  4  )
  5  as 
  6  begin
  7   select first_name
  8      into p_ename 
  9     from employees
 10    where employee_id=p_empid;
 11* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE FINDEMPNAME:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/21     PLS-00103: Encountered the symbol "(" when expecting one of the        
         following:                                                             
         := . ) , @ % default character                                         
         The symbol ":=" was substituted for "(" to continue.                   
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure findEmpName
  2  (p_empid number,
  3  p_ename out varchar2
  4  )
  5  as 
  6  begin
  7   select first_name
  8      into p_ename 
  9     from employees
 10    where employee_id=p_empid;
 11* end;
SQL> /

Procedure created.

SQL> begin
  2  .
SQL> ed
Wrote file afiedt.buf

  1  declare 
  2  v_ename varchar2(20)
  3  begin
  4  findEmpName(206,v_ename);
  5  dbms_output.put_line(v_ename);
  6* end;
SQL> /
begin
*
ERROR at line 3:
ORA-06550: line 3, column 1: 
PLS-00103: Encountered the symbol "BEGIN" when expecting one of the following: 
:= ; not null default character 
The symbol ";" was substituted for "BEGIN" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  declare 
  2  v_ename varchar2(20);
  3  begin
  4  findEmpName(206,v_ename);
  5  dbms_output.put_line(v_ename);
  6* end;
SQL> /
William                                                                         

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare 
  2  v_ename varchar2(20):='Paresh';
  3  begin
  4  findEmpName(666,v_ename);
  5  dbms_output.put_line(v_ename);
  6* end;
SQL> /
declare 
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at "C##HR.FINDEMPNAME", line 7 
ORA-06512: at line 4 


SQL> ed
Wrote file afiedt.buf

  1  declare 
  2  v_ename varchar2(20):='Paresh';
  3  begin
  4  findEmpName(666,v_ename);
  5  dbms_output.put_line(v_ename);
  6  when no_data_found then
  7  dbms_output.put_line('Employeeid incorrect');
  8* end;
  9  /
when no_data_found then
*
ERROR at line 6:
ORA-06550: line 6, column 1: 
PLS-00103: Encountered the symbol "WHEN" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge json_exists json_value json_query 
json_object json_array 
The symbol "case" was substituted for "WHEN" to  
ORA-06550: line 8, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
case 


SQL> ed
Wrote file afiedt.buf

  1  declare 
  2  v_ename varchar2(20):='Paresh';
  3  begin
  4  findEmpName(666,v_ename);
  5  dbms_output.put_line(v_ename);
  6  case no_data_found then
  7  dbms_output.put_line('Employeeid incorrect');
  8  end case;
  9* end;
SQL> /
case no_data_found then
                   *
ERROR at line 6:
ORA-06550: line 6, column 20: 
PLS-00103: Encountered the symbol "THEN" when expecting one of the following: 
. ( * @ % & = - + < / > at in is mod remainder not rem when 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec between || multiset member submultiset 
ORA-06550: line 8, column 5: 
PLS-00103: Encountered the symbol "CASE" when expecting one of the following: 
; <an identifier> <a double-quoted delimited-identifier> 
current delete exists prior <a single-quoted SQL string> 


SQL> ed
Wrote file afiedt.buf

  1  declare 
  2  v_ename varchar2(20):='Paresh';
  3  begin
  4  findEmpName(666,v_ename);
  5  dbms_output.put_line(v_ename);
  6  case no_data_found
  7  dbms_output.put_line('Employeeid incorrect');
  8  end case;
  9* end;
SQL> /
dbms_output.put_line('Employeeid incorrect');
*
ERROR at line 7:
ORA-06550: line 7, column 1: 
PLS-00103: Encountered the symbol "DBMS_OUTPUT" when expecting one of the 
following: 
. ( * @ % & = - + < / > at in is mod remainder not rem when 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec between || multiset member submultiset 
The symbol "." was substituted for "DBMS_OUTPUT" to continue. 
ORA-06550: line 7, column 45: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
. ( * % & = - + < / > at in is mod remainder not rem when 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec between || multiset member submultiset 


SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure findEmpName
  2      (p_empid number,
  3      p_ename out varchar2
  4      )
  5      as
  6      begin
  7      select first_name
  8        into p_ename
  9         from employees
 10      where employee_id=p_empid;
 11  when no_data_found then
 12  dbms_output.put_line('Incorrect empid');
 13*   end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE FINDEMPNAME:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
11/1     PLS-00103: Encountered the symbol "WHEN" when expecting one of         
         the following:                                                         
         ( begin case declare end exception exit for goto if loop mod           
         null pragma raise return select update while with                      
         <an identifier> <a double-quoted delimited-identifier>                 
         <a bind variable> << continue close current delete fetch lock          
         insert open rollback savepoint set sql execute commit forall           
         merge pipe purge json_exists json_value json_query                     
         json_object json_array                                                 
         The symbol "case" was substituted for "WHEN" to                        
                                                                                

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
13/6     PLS-00103: Encountered the symbol ";" when expecting one of the        
         following:                                                             
         case                                                                   
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure findEmpName
  2      (p_empid number,
  3      p_ename out varchar2
  4      )
  5      as
  6      begin
  7      select first_name
  8        into p_ename
  9         from employees
 10      where employee_id=p_empid;
 11  exception
 12  when no_data_found then
 13  dbms_output.put_line('Incorrect empid');
 14*   end;
SQL> /

Procedure created.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1      declare
  2    v_ename varchar2(20);
  3   begin
  4    findEmpName(666,v_ename);
  5*     dbms_output.put_line(v_ename);
SQL> /
    dbms_output.put_line(v_ename);
                                 *
ERROR at line 5:
ORA-06550: line 5, column 34: 
PLS-00103: Encountered the symbol "end-of-file" when expecting one of the 
following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge json_exists json_value json_query 
json_object json_array 


SQL> ed
Wrote file afiedt.buf

  1      declare
  2    v_ename varchar2(20);
  3   begin
  4    findEmpName(666,v_ename);
  5      dbms_output.put_line(v_ename);
  6* end;
SQL> /
Incorrect empid                                                                 

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1      declare
  2    v_ename varchar2(20);
  3   begin
  4    findEmpName(666,v_ename);
  5      dbms_output.put_line(v_ename);
  6  exception
  7  when no_data_found('Not found');
  8* end;
SQL> /
when no_data_found('Not found');
                  *
ERROR at line 7:
ORA-06550: line 7, column 19: 
PLS-00103: Encountered the symbol "(" when expecting one of the following: 
. then or 


SQL> ed
Wrote file afiedt.buf

  1      declare
  2    v_ename varchar2(20);
  3   begin
  4    findEmpName(666,v_ename);
  5      dbms_output.put_line(v_ename);
  6  exception
  7  when no_data_found then
  8      dbms_output.put_line('Not found');
  9* end;
 10  /
Incorrect empid                                                                 

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1      declare
  2    v_ename varchar2(20);
  3   begin
  4    findEmpName(207,v_ename);
  5      dbms_output.put_line(v_ename);
  6  exception
  7  when no_data_found then
  8      dbms_output.put_line('Not found');
  9* end;
SQL> /
Incorrect empid                                                                 

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1      declare
  2    v_ename varchar2(20);
  3   begin
  4    findEmpName(206,v_ename);
  5      dbms_output.put_line(v_ename);
  6  exception
  7  when no_data_found then
  8      dbms_output.put_line('Not found');
  9* end;
SQL> /
William                                                                         

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure findEmpName
  2       (p_empid number,
  3          p_ename out varchar2
  4          )
  5          as
  6          begin
  7          select first_name
  8            into p_ename
  9             from employees
 10         where employee_id=p_empid;
 11     exception
 12     when no_data_found then
 13    dbms_output.put_line('Incorrect empid');
 14  when others then
 15    dbms_output.put_line('Some other error occured...');
 16*     end;
SQL> /

Procedure created.

SQL> 
SQL>   1      declare
SQL>   2    v_ename varchar2(20);
SQL>   3   begin
SQL>   4    findEmpName(206,v_ename);
SQL>   5      dbms_output.put_line(v_ename);
SQL>   6  exception
SQL>   7  when no_data_found then
SQL>   8      dbms_output.put_line('Not found');
SQL>   9* end;
SP2-0042: unknown command "9* end" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1       declare
  2     v_ename varchar2(20);
  3    begin
  4     findEmpName(206.99,v_ename);
  5       dbms_output.put_line(v_ename);
  6* end;
SQL> /
Incorrect empid                                                                 

PL/SQL procedure successfully completed.

SQL> 
SQL> 
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure findEmpName
  2           (p_empid number,
  3              p_ename out varchar2
  4              )
  5              as
  6              begin
  7              select first_name
  8               into p_ename
  9                from employees
 10            where employee_id=p_empid;
 11       exception
 12    when others then
 13       dbms_output.put_line('Some other error occured...');
 14*      end;
 15  /

Procedure created.

SQL> 
SQL>  declare
  2    2     v_ename varchar2(20);
  3    3    begin
  4    4     findEmpName(206.99,v_ename);
  5    5       dbms_output.put_line(v_ename);
  6    6* end;
  7  .
SQL> ed
Wrote file afiedt.buf

  1   declare
  2         v_ename varchar2(20);
  3        begin
  4         findEmpName(206.99,v_ename);
  5           dbms_output.put_line(v_ename);
  6*    end;
SQL> /
Some other error occured...                                                     

PL/SQL procedure successfully completed.

SQL> spool off
