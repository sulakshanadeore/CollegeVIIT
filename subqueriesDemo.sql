SQL> ed
Wrote file afiedt.buf

  1  select salary from employees 
  2* where first_name like 'Neena'
  3  /

    SALARY                                                                      
----------                                                                      
     17000                                                                      

SQL> ----find the employees whose salary is greater than Neena's salary
SQL> select * from employees where salary >(select salary from employees where first_name like 'Neena');

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        100 Steven               King                                           
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000  
                                     90                                         
                                                                                

SQL> 
SQL> set pages 100
SQL> select salary from employees
  2  ;

    SALARY                                                                      
----------                                                                      
     24000                                                                      
     17000                                                                      
     17000                                                                      
      9000                                                                      
      6000                                                                      
      4800                                                                      
      4800                                                                      
      4200                                                                      
     12008                                                                      
      9000                                                                      
      8200                                                                      
      7700                                                                      
      7800                                                                      
      6900                                                                      
     11000                                                                      
      3100                                                                      
      2900                                                                      
      2800                                                                      
      2600                                                                      
      2500                                                                      
      8000                                                                      
      8200                                                                      
      7900                                                                      
      6500                                                                      
      5800                                                                      
      3200                                                                      
      2700                                                                      
      2400                                                                      
      2200                                                                      
      3300                                                                      
      2800                                                                      
      2500                                                                      
      2100                                                                      
      3300                                                                      
      2900                                                                      
      2400                                                                      
      2200                                                                      
      3600                                                                      
      3200                                                                      
      2700                                                                      
      2500                                                                      
      3500                                                                      
      3100                                                                      
      2600                                                                      
      2500                                                                      
     14000                                                                      
     13500                                                                      
     12000                                                                      
     11000                                                                      
     10500                                                                      
     10000                                                                      
      9500                                                                      
      9000                                                                      
      8000                                                                      
      7500                                                                      
      7000                                                                      
     10000                                                                      
      9500                                                                      
      9000                                                                      
      8000                                                                      
      7500                                                                      
      7000                                                                      
     10500                                                                      
      9500                                                                      
      7200                                                                      
      6800                                                                      
      6400                                                                      
      6200                                                                      
     11500                                                                      
     10000                                                                      
      9600                                                                      
      7400                                                                      
      7300                                                                      
      6100                                                                      
     11000                                                                      
      8800                                                                      
      8600                                                                      
      8400                                                                      
      7000                                                                      
      6200                                                                      
      3200                                                                      
      3100                                                                      
      2500                                                                      
      2800                                                                      
      4200                                                                      
      4100                                                                      
      3400                                                                      
      3000                                                                      
      3800                                                                      
      3600                                                                      
      2900                                                                      
      2500                                                                      
      4000                                                                      
      3900                                                                      
      3200                                                                      
      2800                                                                      
      3100                                                                      

    SALARY                                                                      
----------                                                                      
      3000                                                                      
      2600                                                                      
      2600                                                                      
      4400                                                                      
     13000                                                                      
      6000                                                                      
      6500                                                                      
     10000                                                                      
     12008                                                                      
      8300                                                                      
                                                                                
                                                                                

109 rows selected.

SQL> 
SQL> select min(Salary) from employees;

MIN(SALARY)                                                                     
-----------                                                                     
       2100                                                                     

SQL> ed
Wrote file afiedt.buf

  1* select max(Salary) from employees
SQL> /

MAX(SALARY)                                                                     
-----------                                                                     
      24000                                                                     

SQL> ed
Wrote file afiedt.buf

  1* select avg(Salary) from employees
SQL> /

AVG(SALARY)                                                                     
-----------                                                                     
 6461.83178                                                                     

SQL> ---find the employees whose salary is greater than all employees avg salary
SQL> select * from employees
  2  where salary>(select avg(Salary) from employees);

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        100 Steven               King                                           
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000  
                                     90                                         
                                                                                
        101 Neena                Yang                                           
NYANG                     1.515.555.0101       21-SEP-15 AD_VP           17000  
                      100            90                                         
                                                                                
        102 Lex                  Garcia                                         
LGARCIA                   1.515.555.0102       13-JAN-11 AD_VP           17000  
                      100            90                                         
                                                                                
        103 Alexander            James                                          
AJAMES                    1.590.555.0103       03-JAN-16 IT_PROG          9000  
                      102            60                                         
                                                                                
        108 Nancy                Gruenberg                                      
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008  
                      101           100                                         
                                                                                
        109 Daniel               Faviet                                         
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000  
                      108           100                                         
                                                                                
        110 John                 Chen                                           
JCHEN                     1.515.555.0110       28-SEP-15 FI_ACCOUNT       8200  
                      108           100                                         
                                                                                
        111 Ismael               Sciarra                                        
ISCIARRA                  1.515.555.0111       30-SEP-15 FI_ACCOUNT       7700  
                      108           100                                         
                                                                                
        112 Jose Manuel          Urman                                          
JMURMAN                   1.515.555.0112       07-MAR-16 FI_ACCOUNT       7800  
                      108           100                                         
                                                                                
        113 Luis                 Popp                                           
LPOPP                     1.515.555.0113       07-DEC-17 FI_ACCOUNT       6900  
                      108           100                                         
                                                                                
        114 Den                  Li                                             
DLI                       1.515.555.0114       07-DEC-12 PU_MAN          11000  
                      100            30                                         
                                                                                
        120 Matthew              Weiss                                          
MWEISS                    1.650.555.0120       18-JUL-14 ST_MAN           8000  
                      100            50                                         
                                                                                
        121 Adam                 Fripp                                          
AFRIPP                    1.650.555.0121       10-APR-15 ST_MAN           8200  
                      100            50                                         
                                                                                
        122 Payam                Kaufling                                       
PKAUFLIN                  1.650.555.0122       01-MAY-13 ST_MAN           7900  
                      100            50                                         
                                                                                
        123 Shanta               Vollman                                        
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500  
                      100            50                                         
                                                                                
        145 John                 Singh                                          
JSINGH                    44.1632.960000       01-OCT-14 SA_MAN          14000  
            .4        100            80                                         
                                                                                
        146 Karen                Partners                                       
KPARTNER                  44.1632.960001       05-JAN-15 SA_MAN          13500  
            .3        100            80                                         
                                                                                
        147 Alberto              Errazuriz                                      
AERRAZUR                  44.1632.960002       10-MAR-15 SA_MAN          12000  
            .3        100            80                                         
                                                                                
        148 Gerald               Cambrault                                      
GCAMBRAU                  44.1632.960003       15-OCT-17 SA_MAN          11000  
            .3        100            80                                         
                                                                                
        149 Eleni                Zlotkey                                        
EZLOTKEY                  44.1632.960004       29-JAN-18 SA_MAN          10500  
            .2        100            80                                         
                                                                                
        150 Sean                 Tucker                                         
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000  
            .3        145            80                                         
                                                                                
        151 David                Bernstein                                      
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500  
           .25        145            80                                         
                                                                                
        152 Peter                Hall                                           
PHALL                     44.1632.960007       20-AUG-15 SA_REP           9000  
           .25        145            80                                         
                                                                                
        153 Christopher          Olsen                                          

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
COLSEN                    44.1632.960008       30-MAR-16 SA_REP           8000  
            .2        145            80                                         
                                                                                
        154 Nanette              Cambrault                                      
NCAMBRAU                  44.1632.960009       09-DEC-16 SA_REP           7500  
            .2        145            80                                         
                                                                                
        155 Oliver               Tuvault                                        
OTUVAULT                  44.1632.960010       23-NOV-17 SA_REP           7000  
           .15        145            80                                         
                                                                                
        156 Janette              King                                           
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000  
           .35        146            80                                         
                                                                                
        157 Patrick              Sully                                          
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500  
           .35        146            80                                         
                                                                                
        158 Allan                McEwen                                         
AMCEWEN                   44.1632.960013       01-AUG-14 SA_REP           9000  
           .35        146            80                                         
                                                                                
        159 Lindsey              Smith                                          
LSMITH                    44.1632.960014       10-MAR-15 SA_REP           8000  
            .3        146            80                                         
                                                                                
        160 Louise               Doran                                          
LDORAN                    44.1632.960015       15-DEC-15 SA_REP           7500  
            .3        146            80                                         
                                                                                
        161 Sarath               Sewall                                         
SSEWALL                   44.1632.960016       03-NOV-16 SA_REP           7000  
           .25        146            80                                         
                                                                                
        162 Clara                Vishney                                        
CVISHNEY                  44.1632.960017       11-NOV-15 SA_REP          10500  
           .25        147            80                                         
                                                                                
        163 Danielle             Greene                                         
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500  
           .15        147            80                                         
                                                                                
        164 Mattea               Marvins                                        
MMARVINS                  44.1632.960019       24-JAN-18 SA_REP           7200  
            .1        147            80                                         
                                                                                
        165 David                Lee                                            
DLEE                      44.1632.960020       23-FEB-18 SA_REP           6800  
            .1        147            80                                         
                                                                                
        168 Lisa                 Ozer                                           
LOZER                     44.1632.960023       11-MAR-15 SA_REP          11500  
           .25        148            80                                         
                                                                                
        169 Harrison             Bloom                                          
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000  
            .2        148            80                                         
                                                                                
        170 Tayler               Fox                                            
TFOX                      44.1632.960025       24-JAN-16 SA_REP           9600  
            .2        148            80                                         
                                                                                
        171 William              Smith                                          
WSMITH                    44.1632.960026       23-FEB-17 SA_REP           7400  
           .15        148            80                                         
                                                                                
        172 Elizabeth            Bates                                          
EBATES                    44.1632.960027       24-MAR-17 SA_REP           7300  
           .15        148            80                                         
                                                                                
        174 Ellen                Abel                                           
EABEL                     44.1632.960029       11-MAY-14 SA_REP          11000  
            .3        149            80                                         
                                                                                
        175 Alyssa               Hutton                                         
AHUTTON                   44.1632.960030       19-MAR-15 SA_REP           8800  
           .25        149            80                                         
                                                                                
        176 Jonathon             Taylor                                         
JTAYLOR                   44.1632.960031       24-MAR-16 SA_REP           8600  
            .2        149            80                                         
                                                                                
        177 Jack                 Livingston                                     
JLIVINGS                  44.1632.960032       23-APR-16 SA_REP           8400  
            .2        149            80                                         
                                                                                
        178 Kimberely            Grant                                          
KGRANT                    44.1632.960033       24-MAY-17 SA_REP           7000  
           .15        149                                                       
                                                                                
        201 Michael              Martinez                                       
MMARTINE                  1.515.555.0166       17-FEB-14 MK_MAN          13000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      100            20                                         
                                                                                
        203 Susan                Jacobs                                         
SJACOBS                   1.515.555.0168       07-JUN-12 HR_REP           6500  
                      101            40                                         
                                                                                
        204 Hermann              Brown                                          
HBROWN                    1.515.555.0169       07-JUN-12 PR_REP          10000  
                      101            70                                         
                                                                                
        205 Shelley              Higgins                                        
SHIGGINS                  1.515.555.0170       07-JUN-12 AC_MGR          12008  
                      101           110                                         
                                                                                
        206 William              Gietz                                          
WGIETZ                    1.515.555.0171       07-JUN-12 AC_ACCOUNT       8300  
                      205           110                                         
                                                                                

51 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2  where salary>(select avg(Salary) from employees)
  3* order by salary
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        203 Susan                Jacobs                                         
SJACOBS                   1.515.555.0168       07-JUN-12 HR_REP           6500  
                      101            40                                         
                                                                                
        123 Shanta               Vollman                                        
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500  
                      100            50                                         
                                                                                
        165 David                Lee                                            
DLEE                      44.1632.960020       23-FEB-18 SA_REP           6800  
            .1        147            80                                         
                                                                                
        113 Luis                 Popp                                           
LPOPP                     1.515.555.0113       07-DEC-17 FI_ACCOUNT       6900  
                      108           100                                         
                                                                                
        155 Oliver               Tuvault                                        
OTUVAULT                  44.1632.960010       23-NOV-17 SA_REP           7000  
           .15        145            80                                         
                                                                                
        161 Sarath               Sewall                                         
SSEWALL                   44.1632.960016       03-NOV-16 SA_REP           7000  
           .25        146            80                                         
                                                                                
        178 Kimberely            Grant                                          
KGRANT                    44.1632.960033       24-MAY-17 SA_REP           7000  
           .15        149                                                       
                                                                                
        164 Mattea               Marvins                                        
MMARVINS                  44.1632.960019       24-JAN-18 SA_REP           7200  
            .1        147            80                                         
                                                                                
        172 Elizabeth            Bates                                          
EBATES                    44.1632.960027       24-MAR-17 SA_REP           7300  
           .15        148            80                                         
                                                                                
        171 William              Smith                                          
WSMITH                    44.1632.960026       23-FEB-17 SA_REP           7400  
           .15        148            80                                         
                                                                                
        154 Nanette              Cambrault                                      
NCAMBRAU                  44.1632.960009       09-DEC-16 SA_REP           7500  
            .2        145            80                                         
                                                                                
        160 Louise               Doran                                          
LDORAN                    44.1632.960015       15-DEC-15 SA_REP           7500  
            .3        146            80                                         
                                                                                
        111 Ismael               Sciarra                                        
ISCIARRA                  1.515.555.0111       30-SEP-15 FI_ACCOUNT       7700  
                      108           100                                         
                                                                                
        112 Jose Manuel          Urman                                          
JMURMAN                   1.515.555.0112       07-MAR-16 FI_ACCOUNT       7800  
                      108           100                                         
                                                                                
        122 Payam                Kaufling                                       
PKAUFLIN                  1.650.555.0122       01-MAY-13 ST_MAN           7900  
                      100            50                                         
                                                                                
        120 Matthew              Weiss                                          
MWEISS                    1.650.555.0120       18-JUL-14 ST_MAN           8000  
                      100            50                                         
                                                                                
        159 Lindsey              Smith                                          
LSMITH                    44.1632.960014       10-MAR-15 SA_REP           8000  
            .3        146            80                                         
                                                                                
        153 Christopher          Olsen                                          
COLSEN                    44.1632.960008       30-MAR-16 SA_REP           8000  
            .2        145            80                                         
                                                                                
        121 Adam                 Fripp                                          
AFRIPP                    1.650.555.0121       10-APR-15 ST_MAN           8200  
                      100            50                                         
                                                                                
        110 John                 Chen                                           
JCHEN                     1.515.555.0110       28-SEP-15 FI_ACCOUNT       8200  
                      108           100                                         
                                                                                
        206 William              Gietz                                          
WGIETZ                    1.515.555.0171       07-JUN-12 AC_ACCOUNT       8300  
                      205           110                                         
                                                                                
        177 Jack                 Livingston                                     
JLIVINGS                  44.1632.960032       23-APR-16 SA_REP           8400  
            .2        149            80                                         
                                                                                
        176 Jonathon             Taylor                                         
JTAYLOR                   44.1632.960031       24-MAR-16 SA_REP           8600  
            .2        149            80                                         
                                                                                
        175 Alyssa               Hutton                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
AHUTTON                   44.1632.960030       19-MAR-15 SA_REP           8800  
           .25        149            80                                         
                                                                                
        158 Allan                McEwen                                         
AMCEWEN                   44.1632.960013       01-AUG-14 SA_REP           9000  
           .35        146            80                                         
                                                                                
        152 Peter                Hall                                           
PHALL                     44.1632.960007       20-AUG-15 SA_REP           9000  
           .25        145            80                                         
                                                                                
        109 Daniel               Faviet                                         
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000  
                      108           100                                         
                                                                                
        103 Alexander            James                                          
AJAMES                    1.590.555.0103       03-JAN-16 IT_PROG          9000  
                      102            60                                         
                                                                                
        157 Patrick              Sully                                          
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500  
           .35        146            80                                         
                                                                                
        151 David                Bernstein                                      
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500  
           .25        145            80                                         
                                                                                
        163 Danielle             Greene                                         
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500  
           .15        147            80                                         
                                                                                
        170 Tayler               Fox                                            
TFOX                      44.1632.960025       24-JAN-16 SA_REP           9600  
            .2        148            80                                         
                                                                                
        156 Janette              King                                           
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000  
           .35        146            80                                         
                                                                                
        150 Sean                 Tucker                                         
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000  
            .3        145            80                                         
                                                                                
        204 Hermann              Brown                                          
HBROWN                    1.515.555.0169       07-JUN-12 PR_REP          10000  
                      101            70                                         
                                                                                
        169 Harrison             Bloom                                          
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000  
            .2        148            80                                         
                                                                                
        149 Eleni                Zlotkey                                        
EZLOTKEY                  44.1632.960004       29-JAN-18 SA_MAN          10500  
            .2        100            80                                         
                                                                                
        162 Clara                Vishney                                        
CVISHNEY                  44.1632.960017       11-NOV-15 SA_REP          10500  
           .25        147            80                                         
                                                                                
        174 Ellen                Abel                                           
EABEL                     44.1632.960029       11-MAY-14 SA_REP          11000  
            .3        149            80                                         
                                                                                
        148 Gerald               Cambrault                                      
GCAMBRAU                  44.1632.960003       15-OCT-17 SA_MAN          11000  
            .3        100            80                                         
                                                                                
        114 Den                  Li                                             
DLI                       1.515.555.0114       07-DEC-12 PU_MAN          11000  
                      100            30                                         
                                                                                
        168 Lisa                 Ozer                                           
LOZER                     44.1632.960023       11-MAR-15 SA_REP          11500  
           .25        148            80                                         
                                                                                
        147 Alberto              Errazuriz                                      
AERRAZUR                  44.1632.960002       10-MAR-15 SA_MAN          12000  
            .3        100            80                                         
                                                                                
        108 Nancy                Gruenberg                                      
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008  
                      101           100                                         
                                                                                
        205 Shelley              Higgins                                        
SHIGGINS                  1.515.555.0170       07-JUN-12 AC_MGR          12008  
                      101           110                                         
                                                                                
        201 Michael              Martinez                                       
MMARTINE                  1.515.555.0166       17-FEB-14 MK_MAN          13000  
                      100            20                                         
                                                                                
        146 Karen                Partners                                       
KPARTNER                  44.1632.960001       05-JAN-15 SA_MAN          13500  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
            .3        100            80                                         
                                                                                
        145 John                 Singh                                          
JSINGH                    44.1632.960000       01-OCT-14 SA_MAN          14000  
            .4        100            80                                         
                                                                                
        102 Lex                  Garcia                                         
LGARCIA                   1.515.555.0102       13-JAN-11 AD_VP           17000  
                      100            90                                         
                                                                                
        101 Neena                Yang                                           
NYANG                     1.515.555.0101       21-SEP-15 AD_VP           17000  
                      100            90                                         
                                                                                
        100 Steven               King                                           
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000  
                                     90                                         
                                                                                

51 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select avg(Salary) from employees 
  2* where department_id=10 or departmentd_id=20
  3  /
where department_id=10 or departmentd_id=20
                          *
ERROR at line 2:
ORA-00904: "DEPARTMENTD_ID": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select avg(Salary) from employees 
  2* where department_id=10 or department_id=20
SQL> /

AVG(SALARY)                                                                     
-----------                                                                     
       7800                                                                     

SQL> ed
Wrote file afiedt.buf

  1  select avg(Salary) from employees 
  2* where department_id in(10,20)
SQL> /

AVG(SALARY)                                                                     
-----------                                                                     
       7800                                                                     

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2  where salary>(select avg(Salary) from employees 
  3* where department_id in(10,20))
SQL> ed
Wrote file afiedt.buf

  1  select avg(Salary) from employees 
  2  having avg(sal)>10000
  3* group by department_id
SQL> /
having avg(sal)>10000
           *
ERROR at line 2:
ORA-00904: "SAL": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select avg(Salary) from employees 
  2  having avg(salary)>10000
  3* group by department_id
SQL> /

AVG(SALARY)                                                                     
-----------                                                                     
      10154                                                                     
 19333.3333                                                                     

SQL> ed
Wrote file afiedt.buf

  1  select max(Salary) from employees 
  2  having avg(salary)>10000
  3* group by department_id
SQL> /

MAX(SALARY)                                                                     
-----------                                                                     
      12008                                                                     
      24000                                                                     

SQL> ed
Wrote file afiedt.buf

  1  select max(Salary) from employees 
  2  having avg(salary)>13000
  3* group by department_id
SQL> /

MAX(SALARY)                                                                     
-----------                                                                     
      24000                                                                     

SQL> d
SP2-0042: unknown command "d" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  select min(Salary) from employees 
  2  having avg(salary)>13000
  3* group by department_id
SQL> /

MIN(SALARY)                                                                     
-----------                                                                     
      17000                                                                     

SQL> d
SP2-0042: unknown command "d" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2  where salary > (select min(Salary) from employees 
  3  having avg(salary)>13000
  4* group by department_id)
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        100 Steven               King                                           
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000  
                                     90                                         
                                                                                

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2  where salary < (select min(Salary) from employees 
  3  having avg(salary)>13000
  4* group by department_id)
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        103 Alexander            James                                          
AJAMES                    1.590.555.0103       03-JAN-16 IT_PROG          9000  
                      102            60                                         
                                                                                
        104 Bruce                Miller                                         
BMILLER                   1.590.555.0104       21-MAY-17 IT_PROG          6000  
                      103            60                                         
                                                                                
        105 David                Williams                                       
DWILLIAMS                 1.590.555.0105       25-JUN-15 IT_PROG          4800  
                      103            60                                         
                                                                                
        106 Valli                Jackson                                        
VJACKSON                  1.590.555.0106       05-FEB-16 IT_PROG          4800  
                      103            60                                         
                                                                                
        107 Diana                Nguyen                                         
DNGUYEN                   1.590.555.0107       07-FEB-17 IT_PROG          4200  
                      103            60                                         
                                                                                
        108 Nancy                Gruenberg                                      
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008  
                      101           100                                         
                                                                                
        109 Daniel               Faviet                                         
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000  
                      108           100                                         
                                                                                
        110 John                 Chen                                           
JCHEN                     1.515.555.0110       28-SEP-15 FI_ACCOUNT       8200  
                      108           100                                         
                                                                                
        111 Ismael               Sciarra                                        
ISCIARRA                  1.515.555.0111       30-SEP-15 FI_ACCOUNT       7700  
                      108           100                                         
                                                                                
        112 Jose Manuel          Urman                                          
JMURMAN                   1.515.555.0112       07-MAR-16 FI_ACCOUNT       7800  
                      108           100                                         
                                                                                
        113 Luis                 Popp                                           
LPOPP                     1.515.555.0113       07-DEC-17 FI_ACCOUNT       6900  
                      108           100                                         
                                                                                
        114 Den                  Li                                             
DLI                       1.515.555.0114       07-DEC-12 PU_MAN          11000  
                      100            30                                         
                                                                                
        115 Alexander            Khoo                                           
AKHOO                     1.515.555.0115       18-MAY-13 PU_CLERK         3100  
                      114            30                                         
                                                                                
        116 Shelli               Baida                                          
SBAIDA                    1.515.555.0116       24-DEC-15 PU_CLERK         2900  
                      114            30                                         
                                                                                
        117 Sigal                Tobias                                         
STOBIAS                   1.515.555.0117       24-JUL-15 PU_CLERK         2800  
                      114            30                                         
                                                                                
        118 Guy                  Himuro                                         
GHIMURO                   1.515.555.0118       15-NOV-16 PU_CLERK         2600  
                      114            30                                         
                                                                                
        119 Karen                Colmenares                                     
KCOLMENA                  1.515.555.0119       10-AUG-17 PU_CLERK         2500  
                      114            30                                         
                                                                                
        120 Matthew              Weiss                                          
MWEISS                    1.650.555.0120       18-JUL-14 ST_MAN           8000  
                      100            50                                         
                                                                                
        121 Adam                 Fripp                                          
AFRIPP                    1.650.555.0121       10-APR-15 ST_MAN           8200  
                      100            50                                         
                                                                                
        122 Payam                Kaufling                                       
PKAUFLIN                  1.650.555.0122       01-MAY-13 ST_MAN           7900  
                      100            50                                         
                                                                                
        123 Shanta               Vollman                                        
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500  
                      100            50                                         
                                                                                
        124 Kevin                Mourgos                                        
KMOURGOS                  1.650.555.0124       16-NOV-17 ST_MAN           5800  
                      100            50                                         
                                                                                
        125 Julia                Nayer                                          
JNAYER                    1.650.555.0125       16-JUL-15 ST_CLERK         3200  
                      120            50                                         
                                                                                
        126 Irene                Mikkilineni                                    

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
IMIKKILI                  1.650.555.0126       28-SEP-16 ST_CLERK         2700  
                      120            50                                         
                                                                                
        127 James                Landry                                         
JLANDRY                   1.650.555.0127       14-JAN-17 ST_CLERK         2400  
                      120            50                                         
                                                                                
        128 Steven               Markle                                         
SMARKLE                   1.650.555.0128       08-MAR-18 ST_CLERK         2200  
                      120            50                                         
                                                                                
        129 Laura                Bissot                                         
LBISSOT                   1.650.555.0129       20-AUG-15 ST_CLERK         3300  
                      121            50                                         
                                                                                
        130 Mozhe                Atkinson                                       
MATKINSO                  1.650.555.0130       30-OCT-15 ST_CLERK         2800  
                      121            50                                         
                                                                                
        131 James                Marlow                                         
JAMRLOW                   1.650.555.0131       16-FEB-15 ST_CLERK         2500  
                      121            50                                         
                                                                                
        132 TJ                   Olson                                          
TJOLSON                   1.650.555.0132       10-APR-17 ST_CLERK         2100  
                      121            50                                         
                                                                                
        133 Jason                Mallin                                         
JMALLIN                   1.650.555.0133       14-JUN-14 ST_CLERK         3300  
                      122            50                                         
                                                                                
        134 Michael              Rogers                                         
MROGERS                   1.650.555.0134       26-AUG-16 ST_CLERK         2900  
                      122            50                                         
                                                                                
        135 Ki                   Gee                                            
KGEE                      1.650.555.0135       12-DEC-17 ST_CLERK         2400  
                      122            50                                         
                                                                                
        136 Hazel                Philtanker                                     
HPHILTAN                  1.650.555.0136       06-FEB-18 ST_CLERK         2200  
                      122            50                                         
                                                                                
        137 Renske               Ladwig                                         
RLADWIG                   1.650.555.0137       14-JUL-13 ST_CLERK         3600  
                      123            50                                         
                                                                                
        138 Stephen              Stiles                                         
SSTILES                   1.650.555.0138       26-OCT-15 ST_CLERK         3200  
                      123            50                                         
                                                                                
        139 John                 Seo                                            
JSEO                      1.650.555.0139       12-FEB-16 ST_CLERK         2700  
                      123            50                                         
                                                                                
        140 Joshua               Patel                                          
JPATEL                    1.650.555.0140       06-APR-16 ST_CLERK         2500  
                      123            50                                         
                                                                                
        141 Trenna               Rajs                                           
TRAJS                     1.650.555.0141       17-OCT-13 ST_CLERK         3500  
                      124            50                                         
                                                                                
        142 Curtis               Davies                                         
CDAVIES                   1.650.555.0142       29-JAN-15 ST_CLERK         3100  
                      124            50                                         
                                                                                
        143 Randall              Matos                                          
RMATOS                    1.650.555.0143       15-MAR-16 ST_CLERK         2600  
                      124            50                                         
                                                                                
        144 Peter                Vargas                                         
PVARGAS                   1.650.555.0144       09-JUL-16 ST_CLERK         2500  
                      124            50                                         
                                                                                
        145 John                 Singh                                          
JSINGH                    44.1632.960000       01-OCT-14 SA_MAN          14000  
            .4        100            80                                         
                                                                                
        146 Karen                Partners                                       
KPARTNER                  44.1632.960001       05-JAN-15 SA_MAN          13500  
            .3        100            80                                         
                                                                                
        147 Alberto              Errazuriz                                      
AERRAZUR                  44.1632.960002       10-MAR-15 SA_MAN          12000  
            .3        100            80                                         
                                                                                
        148 Gerald               Cambrault                                      
GCAMBRAU                  44.1632.960003       15-OCT-17 SA_MAN          11000  
            .3        100            80                                         
                                                                                
        149 Eleni                Zlotkey                                        
EZLOTKEY                  44.1632.960004       29-JAN-18 SA_MAN          10500  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
            .2        100            80                                         
                                                                                
        150 Sean                 Tucker                                         
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000  
            .3        145            80                                         
                                                                                
        151 David                Bernstein                                      
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500  
           .25        145            80                                         
                                                                                
        152 Peter                Hall                                           
PHALL                     44.1632.960007       20-AUG-15 SA_REP           9000  
           .25        145            80                                         
                                                                                
        153 Christopher          Olsen                                          
COLSEN                    44.1632.960008       30-MAR-16 SA_REP           8000  
            .2        145            80                                         
                                                                                
        154 Nanette              Cambrault                                      
NCAMBRAU                  44.1632.960009       09-DEC-16 SA_REP           7500  
            .2        145            80                                         
                                                                                
        155 Oliver               Tuvault                                        
OTUVAULT                  44.1632.960010       23-NOV-17 SA_REP           7000  
           .15        145            80                                         
                                                                                
        156 Janette              King                                           
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000  
           .35        146            80                                         
                                                                                
        157 Patrick              Sully                                          
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500  
           .35        146            80                                         
                                                                                
        158 Allan                McEwen                                         
AMCEWEN                   44.1632.960013       01-AUG-14 SA_REP           9000  
           .35        146            80                                         
                                                                                
        159 Lindsey              Smith                                          
LSMITH                    44.1632.960014       10-MAR-15 SA_REP           8000  
            .3        146            80                                         
                                                                                
        160 Louise               Doran                                          
LDORAN                    44.1632.960015       15-DEC-15 SA_REP           7500  
            .3        146            80                                         
                                                                                
        161 Sarath               Sewall                                         
SSEWALL                   44.1632.960016       03-NOV-16 SA_REP           7000  
           .25        146            80                                         
                                                                                
        162 Clara                Vishney                                        
CVISHNEY                  44.1632.960017       11-NOV-15 SA_REP          10500  
           .25        147            80                                         
                                                                                
        163 Danielle             Greene                                         
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500  
           .15        147            80                                         
                                                                                
        164 Mattea               Marvins                                        
MMARVINS                  44.1632.960019       24-JAN-18 SA_REP           7200  
            .1        147            80                                         
                                                                                
        165 David                Lee                                            
DLEE                      44.1632.960020       23-FEB-18 SA_REP           6800  
            .1        147            80                                         
                                                                                
        166 Sundar               Ande                                           
SANDE                     44.1632.960021       24-MAR-18 SA_REP           6400  
            .1        147            80                                         
                                                                                
        167 Amit                 Banda                                          
ABANDA                    44.1632.960022       21-APR-18 SA_REP           6200  
            .1        147            80                                         
                                                                                
        168 Lisa                 Ozer                                           
LOZER                     44.1632.960023       11-MAR-15 SA_REP          11500  
           .25        148            80                                         
                                                                                
        169 Harrison             Bloom                                          
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000  
            .2        148            80                                         
                                                                                
        170 Tayler               Fox                                            
TFOX                      44.1632.960025       24-JAN-16 SA_REP           9600  
            .2        148            80                                         
                                                                                
        171 William              Smith                                          
WSMITH                    44.1632.960026       23-FEB-17 SA_REP           7400  
           .15        148            80                                         
                                                                                
        172 Elizabeth            Bates                                          
EBATES                    44.1632.960027       24-MAR-17 SA_REP           7300  
           .15        148            80                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        173 Sundita              Kumar                                          
SKUMAR                    44.1632.960028       21-APR-18 SA_REP           6100  
            .1        148            80                                         
                                                                                
        174 Ellen                Abel                                           
EABEL                     44.1632.960029       11-MAY-14 SA_REP          11000  
            .3        149            80                                         
                                                                                
        175 Alyssa               Hutton                                         
AHUTTON                   44.1632.960030       19-MAR-15 SA_REP           8800  
           .25        149            80                                         
                                                                                
        176 Jonathon             Taylor                                         
JTAYLOR                   44.1632.960031       24-MAR-16 SA_REP           8600  
            .2        149            80                                         
                                                                                
        177 Jack                 Livingston                                     
JLIVINGS                  44.1632.960032       23-APR-16 SA_REP           8400  
            .2        149            80                                         
                                                                                
        178 Kimberely            Grant                                          
KGRANT                    44.1632.960033       24-MAY-17 SA_REP           7000  
           .15        149                                                       
                                                                                
        179 Charles              Johnson                                        
CJOHNSON                  44.1632.960034       04-JAN-18 SA_REP           6200  
            .1        149            80                                         
                                                                                
        180 Winston              Taylor                                         
WTAYLOR                   1.650.555.0145       24-JAN-16 SH_CLERK         3200  
                      120            50                                         
                                                                                
        181 Jean                 Fleaur                                         
JFLEAUR                   1.650.555.0146       23-FEB-16 SH_CLERK         3100  
                      120            50                                         
                                                                                
        182 Martha               Sullivan                                       
MSULLIVA                  1.650.555.0147       21-JUN-17 SH_CLERK         2500  
                      120            50                                         
                                                                                
        183 Girard               Geoni                                          
GGEONI                    1.650.555.0148       03-FEB-18 SH_CLERK         2800  
                      120            50                                         
                                                                                
        184 Nandita              Sarchand                                       
NSARCHAN                  1.650.555.0149       27-JAN-14 SH_CLERK         4200  
                      121            50                                         
                                                                                
        185 Alexis               Bull                                           
ABULL                     1.650.555.0150       20-FEB-15 SH_CLERK         4100  
                      121            50                                         
                                                                                
        186 Julia                Dellinger                                      
JDELLING                  1.650.555.0151       24-JUN-16 SH_CLERK         3400  
                      121            50                                         
                                                                                
        187 Anthony              Cabrio                                         
ACABRIO                   1.650.555.0152       07-FEB-17 SH_CLERK         3000  
                      121            50                                         
                                                                                
        188 Kelly                Chung                                          
KCHUNG                    1.650.555.0153       14-JUN-15 SH_CLERK         3800  
                      122            50                                         
                                                                                
        189 Jennifer             Dilly                                          
JDILLY                    1.650.555.0154       13-AUG-15 SH_CLERK         3600  
                      122            50                                         
                                                                                
        190 Timothy              Venzl                                          
TVENZL                    1.650.555.0155       11-JUL-16 SH_CLERK         2900  
                      122            50                                         
                                                                                
        191 Randall              Perkins                                        
RPERKINS                  1.650.555.0156       19-DEC-17 SH_CLERK         2500  
                      122            50                                         
                                                                                
        192 Sarah                Bell                                           
SBELL                     1.650.555.0157       04-FEB-14 SH_CLERK         4000  
                      123            50                                         
                                                                                
        193 Britney              Everett                                        
BEVERETT                  1.650.555.0158       03-MAR-15 SH_CLERK         3900  
                      123            50                                         
                                                                                
        194 Samuel               McLeod                                         
SMCLEOD                   1.650.555.0159       01-JUL-16 SH_CLERK         3200  
                      123            50                                         
                                                                                
        195 Vance                Jones                                          
VJONES                    1.650.555.0160       17-MAR-17 SH_CLERK         2800  
                      123            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        196 Alana                Walsh                                          
AWALSH                    1.650.555.0161       24-APR-16 SH_CLERK         3100  
                      124            50                                         
                                                                                
        197 Kevin                Feeney                                         
KFEENEY                   1.650.555.0162       23-MAY-16 SH_CLERK         3000  
                      124            50                                         
                                                                                
        198 Donald               OConnell                                       
DOCONNEL                  1.650.555.0163       21-JUN-17 SH_CLERK         2600  
                      124            50                                         
                                                                                
        199 Douglas              Grant                                          
DGRANT                    1.650.555.0164       13-JAN-18 SH_CLERK         2600  
                      124            50                                         
                                                                                
        200 Jennifer             Whalen                                         
JWHALEN                   1.515.555.0165       17-SEP-13 AD_ASST          4400  
                      101            10                                         
                                                                                
        201 Michael              Martinez                                       
MMARTINE                  1.515.555.0166       17-FEB-14 MK_MAN          13000  
                      100            20                                         
                                                                                
        202 Pat                  Davis                                          
PDAVIS                    1.603.555.0167       17-AUG-15 MK_REP           6000  
                      201            20                                         
                                                                                
        203 Susan                Jacobs                                         
SJACOBS                   1.515.555.0168       07-JUN-12 HR_REP           6500  
                      101            40                                         
                                                                                
        204 Hermann              Brown                                          
HBROWN                    1.515.555.0169       07-JUN-12 PR_REP          10000  
                      101            70                                         
                                                                                
        205 Shelley              Higgins                                        
SHIGGINS                  1.515.555.0170       07-JUN-12 AC_MGR          12008  
                      101           110                                         
                                                                                
        206 William              Gietz                                          
WGIETZ                    1.515.555.0171       07-JUN-12 AC_ACCOUNT       8300  
                      205           110                                         
                                                                                

104 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select avg(salary) from employees
  2* group by department_id
SQL> /

AVG(SALARY)                                                                     
-----------                                                                     
 3475.55556                                                                     
       6500                                                                     
      10154                                                                     
 19333.3333                                                                     
       4150                                                                     
      10000                                                                     
       7000                                                                     
       4400                                                                     
       9500                                                                     
       5760                                                                     
 8601.33333                                                                     
 8955.88235                                                                     

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select round(avg(salary)) from employees
  2* group by department_id
SQL> /

ROUND(AVG(SALARY))                                                              
------------------                                                              
              3476                                                              
              6500                                                              
             10154                                                              
             19333                                                              
              4150                                                              
             10000                                                              
              7000                                                              
              4400                                                              
              9500                                                              
              5760                                                              
              8601                                                              
              8956                                                              

12 rows selected.

SQL> 
SQL> select min(Salary) from employees
  2    3  having avg(salary)>13000
  3    4* group by department_id
  4  .ed
  5  .
SQL> ed
Wrote file afiedt.buf

  1  select min(Salary) from employees
  2      having avg(salary)>13000
  3*    group by department_id
  4  /

MIN(SALARY)                                                                     
-----------                                                                     
      17000                                                                     

SQL> select * from employees
  2  where salary >(select min(salary) from employees
  3  having avg(salary)>13000
  4  group by department);
group by department)
         *
ERROR at line 4:
ORA-00904: "DEPARTMENT": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2  where salary >(select min(salary) from employees
  3  having avg(salary)>13000
  4* group by department_id)
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        100 Steven               King                                           
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000  
                                     90                                         
                                                                                

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select round(avg(Salary))
  2* group by department_id
SQL> /
group by department_id
*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select round(avg(Salary)) from employees
  2* group by department_id
SQL> /

ROUND(AVG(SALARY))                                                              
------------------                                                              
              3476                                                              
              6500                                                              
             10154                                                              
             19333                                                              
              4150                                                              
             10000                                                              
              7000                                                              
              4400                                                              
              9500                                                              
              5760                                                              
              8601                                                              
              8956                                                              

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2  where salary in (select round(avg(Salary)) from employees
  3* group by department_id)
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        123 Shanta               Vollman                                        
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500  
                      100            50                                         
                                                                                
        150 Sean                 Tucker                                         
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000  
            .3        145            80                                         
                                                                                
        151 David                Bernstein                                      
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500  
           .25        145            80                                         
                                                                                
        155 Oliver               Tuvault                                        
OTUVAULT                  44.1632.960010       23-NOV-17 SA_REP           7000  
           .15        145            80                                         
                                                                                
        156 Janette              King                                           
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000  
           .35        146            80                                         
                                                                                
        157 Patrick              Sully                                          
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500  
           .35        146            80                                         
                                                                                
        161 Sarath               Sewall                                         
SSEWALL                   44.1632.960016       03-NOV-16 SA_REP           7000  
           .25        146            80                                         
                                                                                
        163 Danielle             Greene                                         
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500  
           .15        147            80                                         
                                                                                
        169 Harrison             Bloom                                          
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000  
            .2        148            80                                         
                                                                                
        178 Kimberely            Grant                                          
KGRANT                    44.1632.960033       24-MAY-17 SA_REP           7000  
           .15        149                                                       
                                                                                
        200 Jennifer             Whalen                                         
JWHALEN                   1.515.555.0165       17-SEP-13 AD_ASST          4400  
                      101            10                                         
                                                                                
        203 Susan                Jacobs                                         
SJACOBS                   1.515.555.0168       07-JUN-12 HR_REP           6500  
                      101            40                                         
                                                                                
        204 Hermann              Brown                                          
HBROWN                    1.515.555.0169       07-JUN-12 PR_REP          10000  
                      101            70                                         
                                                                                

13 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,salary from employees
  2  where salary in (select round(avg(Salary)) from employees
  3* group by department_id)
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY                                     
----------- -------------------- ----------                                     
        123 Shanta                     6500                                     
        150 Sean                      10000                                     
        151 David                      9500                                     
        155 Oliver                     7000                                     
        156 Janette                   10000                                     
        157 Patrick                    9500                                     
        161 Sarath                     7000                                     
        163 Danielle                   9500                                     
        169 Harrison                  10000                                     
        178 Kimberely                  7000                                     
        200 Jennifer                   4400                                     
        203 Susan                      6500                                     
        204 Hermann                   10000                                     

13 rows selected.

SQL> select employee_id,first_name from employees
  2  where department_id in (select department_id from departments
  3  where location_id=1700);

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        100 Steven                                                              
        101 Neena                                                               
        102 Lex                                                                 
        108 Nancy                                                               
        109 Daniel                                                              
        110 John                                                                
        111 Ismael                                                              
        112 Jose Manuel                                                         
        113 Luis                                                                
        114 Den                                                                 
        115 Alexander                                                           
        116 Shelli                                                              
        117 Sigal                                                               
        118 Guy                                                                 
        119 Karen                                                               
        200 Jennifer                                                            
        205 Shelley                                                             
        206 William                                                             
        207 Jack                                                                

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,department_id from employees
  2  where department_id in (select department_id from departments
  3* where location_id=1700)
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID                                  
----------- -------------------- -------------                                  
        100 Steven                          90                                  
        101 Neena                           90                                  
        102 Lex                             90                                  
        108 Nancy                          100                                  
        109 Daniel                         100                                  
        110 John                           100                                  
        111 Ismael                         100                                  
        112 Jose Manuel                    100                                  
        113 Luis                           100                                  
        114 Den                             30                                  
        115 Alexander                       30                                  
        116 Shelli                          30                                  
        117 Sigal                           30                                  
        118 Guy                             30                                  
        119 Karen                           30                                  
        200 Jennifer                        10                                  
        205 Shelley                        110                                  
        206 William                        110                                  
        207 Jack                            10                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,department_id,salary from employees
  2  where department_id in (select department_id from departments
  3* where location_id=1700)
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY                       
----------- -------------------- ------------- ----------                       
        100 Steven                          90      24000                       
        101 Neena                           90      17000                       
        102 Lex                             90      17000                       
        108 Nancy                          100      12008                       
        109 Daniel                         100       9000                       
        110 John                           100       8200                       
        111 Ismael                         100       7700                       
        112 Jose Manuel                    100       7800                       
        113 Luis                           100       6900                       
        114 Den                             30      11000                       
        115 Alexander                       30       3100                       
        116 Shelli                          30       2900                       
        117 Sigal                           30       2800                       
        118 Guy                             30       2600                       
        119 Karen                           30       2500                       
        200 Jennifer                        10       4400                       
        205 Shelley                        110      12008                       
        206 William                        110       8300                       
        207 Jack                            10                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,department_id,salary from employees
  2  where department_id in (select department_id from departments
  3  where location_id=1700)
  4* order by salary
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY                       
----------- -------------------- ------------- ----------                       
        119 Karen                           30       2500                       
        118 Guy                             30       2600                       
        117 Sigal                           30       2800                       
        116 Shelli                          30       2900                       
        115 Alexander                       30       3100                       
        200 Jennifer                        10       4400                       
        113 Luis                           100       6900                       
        111 Ismael                         100       7700                       
        112 Jose Manuel                    100       7800                       
        110 John                           100       8200                       
        206 William                        110       8300                       
        109 Daniel                         100       9000                       
        114 Den                             30      11000                       
        108 Nancy                          100      12008                       
        205 Shelley                        110      12008                       
        102 Lex                             90      17000                       
        101 Neena                           90      17000                       
        100 Steven                          90      24000                       
        207 Jack                            10                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,department_id,salary from employees
  2  where department_id in (select department_id from departments
  3  where location_id=1700)
  4* order by salary desc
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY                       
----------- -------------------- ------------- ----------                       
        207 Jack                            10                                  
        100 Steven                          90      24000                       
        101 Neena                           90      17000                       
        102 Lex                             90      17000                       
        108 Nancy                          100      12008                       
        205 Shelley                        110      12008                       
        114 Den                             30      11000                       
        109 Daniel                         100       9000                       
        206 William                        110       8300                       
        110 John                           100       8200                       
        112 Jose Manuel                    100       7800                       
        111 Ismael                         100       7700                       
        113 Luis                           100       6900                       
        200 Jennifer                        10       4400                       
        115 Alexander                       30       3100                       
        116 Shelli                          30       2900                       
        117 Sigal                           30       2800                       
        118 Guy                             30       2600                       
        119 Karen                           30       2500                       

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,department_id,salary from employees
  2  where department_id in (select department_id from departments
  3  where location_id=1700)
  4* order by salary desc
SQL> select salary from employees where department_id=90;

    SALARY                                                                      
----------                                                                      
     24000                                                                      
     17000                                                                      
     17000                                                                      

SQL> ed
Wrote file afiedt.buf

  1* select salary from employees where department_id in(10,20)
SQL> /

    SALARY                                                                      
----------                                                                      
      4400                                                                      
                                                                                
     13000                                                                      
      6000                                                                      
                                                                                

SQL> d
SP2-0042: unknown command "d" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1* select salary from employees where department_id in(10,20,30)
SQL> /

    SALARY                                                                      
----------                                                                      
      4400                                                                      
                                                                                
     13000                                                                      
      6000                                                                      
                                                                                
     11000                                                                      
      3100                                                                      
      2900                                                                      
      2800                                                                      
      2600                                                                      
      2500                                                                      

11 rows selected.

SQL> ---min 2500, max 13000
SQL> ---find the employees who have salaries > all the salaries in departmentno 10,20,30
SQL> select employee_id,first_name,salary from employees
  2  where salary > all(select salary from employees where department_id in(10,20,30));

no rows selected

SQL> select salary,department from e
  2  .
SQL> ed
Wrote file afiedt.buf

  1  select salary,department_id from employees
  2* where salary>13000
SQL> /

    SALARY DEPARTMENT_ID                                                        
---------- -------------                                                        
     24000            90                                                        
     17000            90                                                        
     17000            90                                                        
     14000            80                                                        
     13500            80                                                        

SQL> ed
Wrote file afiedt.buf

  1  select salary,department_id from employees
  2* where salary>13000
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,salary from employees
  2      where salary > all (select salary from employees where department_id in(10,20,30)
  3* )
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,salary from employees
  2      where salary > any (select salary from employees where department_id in(10,20,30)
  3* )
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY                                     
----------- -------------------- ----------                                     
        100 Steven                    24000                                     
        101 Neena                     17000                                     
        102 Lex                       17000                                     
        145 John                      14000                                     
        146 Karen                     13500                                     
        201 Michael                   13000                                     
        108 Nancy                     12008                                     
        205 Shelley                   12008                                     
        147 Alberto                   12000                                     
        168 Lisa                      11500                                     
        148 Gerald                    11000                                     
        174 Ellen                     11000                                     
        114 Den                       11000                                     
        162 Clara                     10500                                     
        149 Eleni                     10500                                     
        156 Janette                   10000                                     
        150 Sean                      10000                                     
        204 Hermann                   10000                                     
        169 Harrison                  10000                                     
        170 Tayler                     9600                                     
        151 David                      9500                                     
        163 Danielle                   9500                                     
        157 Patrick                    9500                                     
        152 Peter                      9000                                     
        158 Allan                      9000                                     
        109 Daniel                     9000                                     
        103 Alexander                  9000                                     
        175 Alyssa                     8800                                     
        176 Jonathon                   8600                                     
        177 Jack                       8400                                     
        206 William                    8300                                     
        110 John                       8200                                     
        121 Adam                       8200                                     
        120 Matthew                    8000                                     
        153 Christopher                8000                                     
        159 Lindsey                    8000                                     
        122 Payam                      7900                                     
        112 Jose Manuel                7800                                     
        111 Ismael                     7700                                     
        160 Louise                     7500                                     
        154 Nanette                    7500                                     
        171 William                    7400                                     
        172 Elizabeth                  7300                                     
        164 Mattea                     7200                                     
        155 Oliver                     7000                                     
        161 Sarath                     7000                                     
        178 Kimberely                  7000                                     
        113 Luis                       6900                                     
        165 David                      6800                                     
        203 Susan                      6500                                     
        123 Shanta                     6500                                     
        166 Sundar                     6400                                     
        167 Amit                       6200                                     
        179 Charles                    6200                                     
        173 Sundita                    6100                                     
        104 Bruce                      6000                                     
        202 Pat                        6000                                     
        124 Kevin                      5800                                     
        105 David                      4800                                     
        106 Valli                      4800                                     
        200 Jennifer                   4400                                     
        184 Nandita                    4200                                     
        107 Diana                      4200                                     
        185 Alexis                     4100                                     
        192 Sarah                      4000                                     
        193 Britney                    3900                                     
        188 Kelly                      3800                                     
        189 Jennifer                   3600                                     
        137 Renske                     3600                                     
        141 Trenna                     3500                                     
        186 Julia                      3400                                     
        133 Jason                      3300                                     
        129 Laura                      3300                                     
        180 Winston                    3200                                     
        194 Samuel                     3200                                     
        125 Julia                      3200                                     
        138 Stephen                    3200                                     
        196 Alana                      3100                                     
        181 Jean                       3100                                     
        142 Curtis                     3100                                     
        115 Alexander                  3100                                     
        187 Anthony                    3000                                     
        197 Kevin                      3000                                     
        134 Michael                    2900                                     
        116 Shelli                     2900                                     
        190 Timothy                    2900                                     
        195 Vance                      2800                                     
        183 Girard                     2800                                     
        130 Mozhe                      2800                                     
        117 Sigal                      2800                                     
        126 Irene                      2700                                     
        139 John                       2700                                     
        199 Douglas                    2600                                     
        198 Donald                     2600                                     
        118 Guy                        2600                                     
        143 Randall                    2600                                     

96 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,salary from employees
  2      where salary > all (select salary from employees where department_id =10)
  3* )
SQL> /
)
*
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> /
)
*
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,salary from employees
  2      where salary > all (select salary from employees where department_id =10)
  3* )
  4  /
)
*
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,salary from employees
  2*     where salary > all (select salary from employees where department_id =10)
  3  /

no rows selected

SQL> select salary from employees where department_id=10;

    SALARY                                                                      
----------                                                                      
      4400                                                                      
                                                                                

SQL> ed
Wrote file afiedt.buf

  1* select salary from employees where department_id=20
SQL> /

    SALARY                                                                      
----------                                                                      
     13000                                                                      
      6000                                                                      
                                                                                

SQL> ed
Wrote file afiedt.buf

  1  select salary,employee_id,first_name from employees
  2* where salary > all (select salary from employees where department_id=20)
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select salary,employee_id,first_name from employees
  2* where salary > all (select salary from employees where department_id=30)
SQL> /

    SALARY EMPLOYEE_ID FIRST_NAME                                               
---------- ----------- --------------------                                     
     11500         168 Lisa                                                     
     12000         147 Alberto                                                  
     12008         205 Shelley                                                  
     12008         108 Nancy                                                    
     13000         201 Michael                                                  
     13500         146 Karen                                                    
     14000         145 John                                                     
     17000         102 Lex                                                      
     17000         101 Neena                                                    
     24000         100 Steven                                                   

10 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select salary from employees where department_id=30
SQL> /

    SALARY                                                                      
----------                                                                      
     11000                                                                      
      3100                                                                      
      2900                                                                      
      2800                                                                      
      2600                                                                      
      2500                                                                      

6 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select salary from employees
  2* where salary > all (select salary from employees where department_id=10 or department_id=20 or department_id=30)
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select salary from employees
  2* where salary > all (select salary from employees where department_id between10 and 30)
SQL> ed
Wrote file afiedt.buf

  1  select salary from employees
  2* where salary > all (select salary from employees where department_id between 10 and 30)
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select salary from employees
  2* where salary > all (select salary from employees where department_id between 10 and 30 and  salary is not null)
SQL> /

    SALARY                                                                      
----------                                                                      
     13500                                                                      
     14000                                                                      
     17000                                                                      
     17000                                                                      
     24000                                                                      

SQL> ed
Wrote file afiedt.buf

  1  select salary from employees
  2* where salary > all (select salary from employees where department_id in( 10 ,20,30) and  salary is not null)
SQL> /

    SALARY                                                                      
----------                                                                      
     13500                                                                      
     14000                                                                      
     17000                                                                      
     17000                                                                      
     24000                                                                      

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name from employees
  2  where department_id in (select department_id from departments
  3* where location_id=1700)
SQL> ed
Wrote file afiedt.buf

  1  select max(Salary) from employees
  2* where department_id in(10,20,30)
SQL> /

MAX(SALARY)                                                                     
-----------                                                                     
      13000                                                                     

SQL> ed
Wrote file afiedt.buf

  1  select Salary from employees
  2* where department_id in(10,20,30)
SQL> /

    SALARY                                                                      
----------                                                                      
      4400                                                                      
                                                                                
     13000                                                                      
      6000                                                                      
                                                                                
     11000                                                                      
      3100                                                                      
      2900                                                                      
      2800                                                                      
      2600                                                                      
      2500                                                                      

11 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select Salary, isnull(salary,0) from employees
  2* where department_id in(10,20,30)
SQL> /
select Salary, isnull(salary,0) from employees
               *
ERROR at line 1:
ORA-00904: "ISNULL": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select Salary, nullif(salary,0) from employees
  2* where department_id in(10,20,30)
SQL> /

    SALARY NULLIF(SALARY,0)                                                     
---------- ----------------                                                     
      4400             4400                                                     
                                                                                
     13000            13000                                                     
      6000             6000                                                     
                                                                                
     11000            11000                                                     
      3100             3100                                                     
      2900             2900                                                     
      2800             2800                                                     
      2600             2600                                                     
      2500             2500                                                     

11 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select Salary, nullif(0,salary) from employees
  2* where department_id in(10,20,30)
SQL> ed
Wrote file afiedt.buf

  1  select Salary, nvl(salary,0) from employees
  2* where department_id in(10,20,30)
SQL> /

    SALARY NVL(SALARY,0)                                                        
---------- -------------                                                        
      4400          4400                                                        
                       0                                                        
     13000         13000                                                        
      6000          6000                                                        
                       0                                                        
     11000         11000                                                        
      3100          3100                                                        
      2900          2900                                                        
      2800          2800                                                        
      2600          2600                                                        
      2500          2500                                                        

11 rows selected.

SQL> 
SQL> select nvl(salary,0) from employees
  2  .ed
  3  .
SQL> ed
Wrote file afiedt.buf

  1  select first_name,salary from employees
  2  where salary > all (select nvl(salary,0) from employees
  3* where department_id in (10,20,30))
  4  /

FIRST_NAME               SALARY                                                 
-------------------- ----------                                                 
Karen                     13500                                                 
John                      14000                                                 
Lex                       17000                                                 
Neena                     17000                                                 
Steven                    24000                                                 

SQL> ed
Wrote file afiedt.buf

  1  select first_name,salary from employees
  2  where salary > all (select coalesce(salary,0) from employees
  3* where department_id in (10,20,30))
SQL> /

FIRST_NAME               SALARY                                                 
-------------------- ----------                                                 
Karen                     13500                                                 
John                      14000                                                 
Lex                       17000                                                 
Neena                     17000                                                 
Steven                    24000                                                 

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select first_name,salary from employees
  2  where salary > all (select salary from employees
  3* where department_id in (10,20,30) and salary is not null)
SQL> /

FIRST_NAME               SALARY                                                 
-------------------- ----------                                                 
Karen                     13500                                                 
John                      14000                                                 
Lex                       17000                                                 
Neena                     17000                                                 
Steven                    24000                                                 

SQL> ed
Wrote file afiedt.buf

  1  select * from employees e1
  2  where e1.salary>
  3  (select avg(e.salary) from employees e
  4* where e.department_id=e1.department_id)
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        100 Steven               King                                           
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000  
                                     90                                         
                                                                                
        103 Alexander            James                                          
AJAMES                    1.590.555.0103       03-JAN-16 IT_PROG          9000  
                      102            60                                         
                                                                                
        104 Bruce                Miller                                         
BMILLER                   1.590.555.0104       21-MAY-17 IT_PROG          6000  
                      103            60                                         
                                                                                
        108 Nancy                Gruenberg                                      
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008  
                      101           100                                         
                                                                                
        109 Daniel               Faviet                                         
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000  
                      108           100                                         
                                                                                
        114 Den                  Li                                             
DLI                       1.515.555.0114       07-DEC-12 PU_MAN          11000  
                      100            30                                         
                                                                                
        120 Matthew              Weiss                                          
MWEISS                    1.650.555.0120       18-JUL-14 ST_MAN           8000  
                      100            50                                         
                                                                                
        121 Adam                 Fripp                                          
AFRIPP                    1.650.555.0121       10-APR-15 ST_MAN           8200  
                      100            50                                         
                                                                                
        122 Payam                Kaufling                                       
PKAUFLIN                  1.650.555.0122       01-MAY-13 ST_MAN           7900  
                      100            50                                         
                                                                                
        123 Shanta               Vollman                                        
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500  
                      100            50                                         
                                                                                
        124 Kevin                Mourgos                                        
KMOURGOS                  1.650.555.0124       16-NOV-17 ST_MAN           5800  
                      100            50                                         
                                                                                
        137 Renske               Ladwig                                         
RLADWIG                   1.650.555.0137       14-JUL-13 ST_CLERK         3600  
                      123            50                                         
                                                                                
        141 Trenna               Rajs                                           
TRAJS                     1.650.555.0141       17-OCT-13 ST_CLERK         3500  
                      124            50                                         
                                                                                
        145 John                 Singh                                          
JSINGH                    44.1632.960000       01-OCT-14 SA_MAN          14000  
            .4        100            80                                         
                                                                                
        146 Karen                Partners                                       
KPARTNER                  44.1632.960001       05-JAN-15 SA_MAN          13500  
            .3        100            80                                         
                                                                                
        147 Alberto              Errazuriz                                      
AERRAZUR                  44.1632.960002       10-MAR-15 SA_MAN          12000  
            .3        100            80                                         
                                                                                
        148 Gerald               Cambrault                                      
GCAMBRAU                  44.1632.960003       15-OCT-17 SA_MAN          11000  
            .3        100            80                                         
                                                                                
        149 Eleni                Zlotkey                                        
EZLOTKEY                  44.1632.960004       29-JAN-18 SA_MAN          10500  
            .2        100            80                                         
                                                                                
        150 Sean                 Tucker                                         
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000  
            .3        145            80                                         
                                                                                
        151 David                Bernstein                                      
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500  
           .25        145            80                                         
                                                                                
        152 Peter                Hall                                           
PHALL                     44.1632.960007       20-AUG-15 SA_REP           9000  
           .25        145            80                                         
                                                                                
        156 Janette              King                                           
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000  
           .35        146            80                                         
                                                                                
        157 Patrick              Sully                                          
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500  
           .35        146            80                                         
                                                                                
        158 Allan                McEwen                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
AMCEWEN                   44.1632.960013       01-AUG-14 SA_REP           9000  
           .35        146            80                                         
                                                                                
        162 Clara                Vishney                                        
CVISHNEY                  44.1632.960017       11-NOV-15 SA_REP          10500  
           .25        147            80                                         
                                                                                
        163 Danielle             Greene                                         
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500  
           .15        147            80                                         
                                                                                
        168 Lisa                 Ozer                                           
LOZER                     44.1632.960023       11-MAR-15 SA_REP          11500  
           .25        148            80                                         
                                                                                
        169 Harrison             Bloom                                          
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000  
            .2        148            80                                         
                                                                                
        170 Tayler               Fox                                            
TFOX                      44.1632.960025       24-JAN-16 SA_REP           9600  
            .2        148            80                                         
                                                                                
        174 Ellen                Abel                                           
EABEL                     44.1632.960029       11-MAY-14 SA_REP          11000  
            .3        149            80                                         
                                                                                
        184 Nandita              Sarchand                                       
NSARCHAN                  1.650.555.0149       27-JAN-14 SH_CLERK         4200  
                      121            50                                         
                                                                                
        185 Alexis               Bull                                           
ABULL                     1.650.555.0150       20-FEB-15 SH_CLERK         4100  
                      121            50                                         
                                                                                
        188 Kelly                Chung                                          
KCHUNG                    1.650.555.0153       14-JUN-15 SH_CLERK         3800  
                      122            50                                         
                                                                                
        189 Jennifer             Dilly                                          
JDILLY                    1.650.555.0154       13-AUG-15 SH_CLERK         3600  
                      122            50                                         
                                                                                
        192 Sarah                Bell                                           
SBELL                     1.650.555.0157       04-FEB-14 SH_CLERK         4000  
                      123            50                                         
                                                                                
        193 Britney              Everett                                        
BEVERETT                  1.650.555.0158       03-MAR-15 SH_CLERK         3900  
                      123            50                                         
                                                                                
        201 Michael              Martinez                                       
MMARTINE                  1.515.555.0166       17-FEB-14 MK_MAN          13000  
                      100            20                                         
                                                                                
        205 Shelley              Higgins                                        
SHIGGINS                  1.515.555.0170       07-JUN-12 AC_MGR          12008  
                      101           110                                         
                                                                                

38 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select first_name,department_id,salary from employees e1
  2  where e1.salary>
  3  (select avg(e.salary) from employees e
  4* where e.department_id=e1.department_id)
SQL> /

FIRST_NAME           DEPARTMENT_ID     SALARY                                   
-------------------- ------------- ----------                                   
Steven                          90      24000                                   
Alexander                       60       9000                                   
Bruce                           60       6000                                   
Nancy                          100      12008                                   
Daniel                         100       9000                                   
Den                             30      11000                                   
Matthew                         50       8000                                   
Adam                            50       8200                                   
Payam                           50       7900                                   
Shanta                          50       6500                                   
Kevin                           50       5800                                   
Renske                          50       3600                                   
Trenna                          50       3500                                   
John                            80      14000                                   
Karen                           80      13500                                   
Alberto                         80      12000                                   
Gerald                          80      11000                                   
Eleni                           80      10500                                   
Sean                            80      10000                                   
David                           80       9500                                   
Peter                           80       9000                                   
Janette                         80      10000                                   
Patrick                         80       9500                                   
Allan                           80       9000                                   
Clara                           80      10500                                   
Danielle                        80       9500                                   
Lisa                            80      11500                                   
Harrison                        80      10000                                   
Tayler                          80       9600                                   
Ellen                           80      11000                                   
Nandita                         50       4200                                   
Alexis                          50       4100                                   
Kelly                           50       3800                                   
Jennifer                        50       3600                                   
Sarah                           50       4000                                   
Britney                         50       3900                                   
Michael                         20      13000                                   
Shelley                        110      12008                                   

38 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select first_name,department_id,salary from employees e1
  2  where e1.salary>
  3  (select avg(e.salary) from employees e
  4  where e.department_id=e1.department_id)
  5* order by e1.department_id
SQL> /

FIRST_NAME           DEPARTMENT_ID     SALARY                                   
-------------------- ------------- ----------                                   
Michael                         20      13000                                   
Den                             30      11000                                   
Trenna                          50       3500                                   
Renske                          50       3600                                   
Jennifer                        50       3600                                   
Kelly                           50       3800                                   
Britney                         50       3900                                   
Sarah                           50       4000                                   
Alexis                          50       4100                                   
Nandita                         50       4200                                   
Kevin                           50       5800                                   
Shanta                          50       6500                                   
Payam                           50       7900                                   
Matthew                         50       8000                                   
Adam                            50       8200                                   
Bruce                           60       6000                                   
Alexander                       60       9000                                   
Peter                           80       9000                                   
Allan                           80       9000                                   
David                           80       9500                                   
Patrick                         80       9500                                   
Danielle                        80       9500                                   
Tayler                          80       9600                                   
Sean                            80      10000                                   
Janette                         80      10000                                   
Harrison                        80      10000                                   
Eleni                           80      10500                                   
Clara                           80      10500                                   
Gerald                          80      11000                                   
Ellen                           80      11000                                   
Lisa                            80      11500                                   
Alberto                         80      12000                                   
Karen                           80      13500                                   
John                            80      14000                                   
Steven                          90      24000                                   
Daniel                         100       9000                                   
Nancy                          100      12008                                   
Shelley                        110      12008                                   

38 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select first_name,department_id,salary from employees e1
  2  where e1.salary >
  3  (select avg(e.salary) from employees e
  4  where e.department_id=e1.department_id)
  5* order by e1.department_id
SQL> ed
Wrote file afiedt.buf

  1  select department_id,count(employee_id) from employees e1
  2  where e1.salary >
  3  (select avg(e.salary) from employees e
  4  where e.department_id=e1.department_id)
  5* order by e1.department_id
SQL> /
select department_id,count(employee_id) from employees e1
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> ed
Wrote file afiedt.buf

  1  select e1.department_id,count(employee_id) from employees e1
  2  where e1.salary >
  3  (select avg(e.salary) from employees e
  4  where e.department_id=e1.department_id)
  5  group by e1.department_id
  6* order by e1.department_id
SQL> /

DEPARTMENT_ID COUNT(EMPLOYEE_ID)                                                
------------- ------------------                                                
           20                  1                                                
           30                  1                                                
           50                 13                                                
           60                  2                                                
           80                 17                                                
           90                  1                                                
          100                  2                                                
          110                  1                                                

8 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select a.department_id,a.department_name
  2*   from (Select department_id,department_name from departments) a 
  3  /

DEPARTMENT_ID DEPARTMENT_NAME                                                   
------------- ------------------------------                                    
           10 Administration                                                    
           20 Marketing                                                         
           30 Purchasing                                                        
           40 Human Resources                                                   
           50 Shipping                                                          
           60 IT                                                                
           70 Public Relations                                                  
           80 Sales                                                             
           90 Executive                                                         
          100 Finance                                                           
          110 Accounting                                                        
          120 Treasury                                                          
          130 Corporate Tax                                                     
          140 Control And Credit                                                
          150 Shareholder Services                                              
          160 Benefits                                                          
          170 Manufacturing                                                     
          180 Construction                                                      
          190 Contracting                                                       
          200 Operations                                                        
          210 IT Support                                                        
          220 NOC                                                               
          230 IT Helpdesk                                                       
          240 Government Sales                                                  
          250 Retail Sales                                                      
          260 Recruiting                                                        
          270 Payroll                                                           

27 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select a.department_id,a.department_name,a.location_id
  2*   from (Select * from departments) a 
SQL> /

DEPARTMENT_ID DEPARTMENT_NAME                LOCATION_ID                        
------------- ------------------------------ -----------                        
           10 Administration                        1700                        
           20 Marketing                             1800                        
           30 Purchasing                            1700                        
           40 Human Resources                       2400                        
           50 Shipping                              1500                        
           60 IT                                    1400                        
           70 Public Relations                      2700                        
           80 Sales                                 2500                        
           90 Executive                             1700                        
          100 Finance                               1700                        
          110 Accounting                            1700                        
          120 Treasury                              1700                        
          130 Corporate Tax                         1700                        
          140 Control And Credit                    1700                        
          150 Shareholder Services                  1700                        
          160 Benefits                              1700                        
          170 Manufacturing                         1700                        
          180 Construction                          1700                        
          190 Contracting                           1700                        
          200 Operations                            1700                        
          210 IT Support                            1700                        
          220 NOC                                   1700                        
          230 IT Helpdesk                           1700                        
          240 Government Sales                      1700                        
          250 Retail Sales                          1700                        
          260 Recruiting                            1700                        
          270 Payroll                               1700                        

27 rows selected.

SQL> 
SQL> select e.employee_id,e.firstname,e.department_id,e.salary from
  2  (select avg(salary) as averageSal from employees) as avgSalaries, Employees e
  3  where e.salary>avgSalaries.averageSal;
(select avg(salary) as averageSal from employees) as avgSalaries, Employees e
                                                  *
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.firstname,e.department_id,e.salary from
  2  (select avg(salary) as averageSal from employees) as avgSalaries, Employees e
  3* where e.salary>avgSalaries.averageSal
SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.firstname,e.department_id,e.salary from
  2  (select avg(salary) as averageSal from employees) as avgSalaries, Employees e
  3* on e.salary>avgSalaries.averageSal
SQL> /
(select avg(salary) as averageSal from employees) as avgSalaries, Employees e
                                                  *
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.firstname,e.department_id,e.salary from
  2  (select avg(salary) as averageSal from employees) 
  3  avgSalaries, Employees e
  4* where e.salary>avgSalaries.averageSal
SQL> /
select e.employee_id,e.firstname,e.department_id,e.salary from
                     *
ERROR at line 1:
ORA-00904: "E"."FIRSTNAME": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.department_id,e.salary from
  2  (select avg(salary) as averageSal from employees) 
  3  avgSalaries, Employees e
  4* where e.salary>avgSalaries.averageSal
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY                       
----------- -------------------- ------------- ----------                       
        100 Steven                          90      24000                       
        101 Neena                           90      17000                       
        102 Lex                             90      17000                       
        103 Alexander                       60       9000                       
        108 Nancy                          100      12008                       
        109 Daniel                         100       9000                       
        110 John                           100       8200                       
        111 Ismael                         100       7700                       
        112 Jose Manuel                    100       7800                       
        113 Luis                           100       6900                       
        114 Den                             30      11000                       
        120 Matthew                         50       8000                       
        121 Adam                            50       8200                       
        122 Payam                           50       7900                       
        123 Shanta                          50       6500                       
        145 John                            80      14000                       
        146 Karen                           80      13500                       
        147 Alberto                         80      12000                       
        148 Gerald                          80      11000                       
        149 Eleni                           80      10500                       
        150 Sean                            80      10000                       
        151 David                           80       9500                       
        152 Peter                           80       9000                       
        153 Christopher                     80       8000                       
        154 Nanette                         80       7500                       
        155 Oliver                          80       7000                       
        156 Janette                         80      10000                       
        157 Patrick                         80       9500                       
        158 Allan                           80       9000                       
        159 Lindsey                         80       8000                       
        160 Louise                          80       7500                       
        161 Sarath                          80       7000                       
        162 Clara                           80      10500                       
        163 Danielle                        80       9500                       
        164 Mattea                          80       7200                       
        165 David                           80       6800                       
        168 Lisa                            80      11500                       
        169 Harrison                        80      10000                       
        170 Tayler                          80       9600                       
        171 William                         80       7400                       
        172 Elizabeth                       80       7300                       
        174 Ellen                           80      11000                       
        175 Alyssa                          80       8800                       
        176 Jonathon                        80       8600                       
        177 Jack                            80       8400                       
        178 Kimberely                                7000                       
        201 Michael                         20      13000                       
        203 Susan                           40       6500                       
        204 Hermann                         70      10000                       
        205 Shelley                        110      12008                       
        206 William                        110       8300                       

51 rows selected.

SQL> 
SQL> select avg(salary) as averageSal from employees;

AVERAGESAL                                                                      
----------                                                                      
6461.83178                                                                      

SQL> 
SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.department_id,e.salary from
  2      (select avg(salary) as averageSal from employees)
  3      avgSalaries, Employees e
  4*   where e.salary>avgSalaries.averageSal
SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.department_id,e.salary,avgSalaries.averageSal from
  2      (select avg(salary) as averageSal from employees)
  3      avgSalaries, Employees e
  4    where e.salary>(select avg(e1.salary)  from employees e1
  5*    where e.department_id=e1.department_id) 
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        100 Steven                          90      24000 6461.83178            
        103 Alexander                       60       9000 6461.83178            
        104 Bruce                           60       6000 6461.83178            
        108 Nancy                          100      12008 6461.83178            
        109 Daniel                         100       9000 6461.83178            
        114 Den                             30      11000 6461.83178            
        120 Matthew                         50       8000 6461.83178            
        121 Adam                            50       8200 6461.83178            
        122 Payam                           50       7900 6461.83178            
        123 Shanta                          50       6500 6461.83178            
        124 Kevin                           50       5800 6461.83178            
        137 Renske                          50       3600 6461.83178            
        141 Trenna                          50       3500 6461.83178            
        145 John                            80      14000 6461.83178            
        146 Karen                           80      13500 6461.83178            
        147 Alberto                         80      12000 6461.83178            
        148 Gerald                          80      11000 6461.83178            
        149 Eleni                           80      10500 6461.83178            
        150 Sean                            80      10000 6461.83178            
        151 David                           80       9500 6461.83178            
        152 Peter                           80       9000 6461.83178            
        156 Janette                         80      10000 6461.83178            
        157 Patrick                         80       9500 6461.83178            
        158 Allan                           80       9000 6461.83178            
        162 Clara                           80      10500 6461.83178            
        163 Danielle                        80       9500 6461.83178            
        168 Lisa                            80      11500 6461.83178            
        169 Harrison                        80      10000 6461.83178            
        170 Tayler                          80       9600 6461.83178            
        174 Ellen                           80      11000 6461.83178            
        184 Nandita                         50       4200 6461.83178            
        185 Alexis                          50       4100 6461.83178            
        188 Kelly                           50       3800 6461.83178            
        189 Jennifer                        50       3600 6461.83178            
        192 Sarah                           50       4000 6461.83178            
        193 Britney                         50       3900 6461.83178            
        201 Michael                         20      13000 6461.83178            
        205 Shelley                        110      12008 6461.83178            

38 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.department_id,e.salary,avgSalaries.averageSal from
  2      (select avg(salary) as averageSal from employees)
  3      avgSalaries, Employees e
  4    where e.salary>(select avg(e1.salary)  from employees e1
  5     where e.department_id=e1.department_id) 
  6* order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        201 Michael                         20      13000 6461.83178            
        114 Den                             30      11000 6461.83178            
        137 Renske                          50       3600 6461.83178            
        141 Trenna                          50       3500 6461.83178            
        184 Nandita                         50       4200 6461.83178            
        185 Alexis                          50       4100 6461.83178            
        188 Kelly                           50       3800 6461.83178            
        189 Jennifer                        50       3600 6461.83178            
        192 Sarah                           50       4000 6461.83178            
        193 Britney                         50       3900 6461.83178            
        124 Kevin                           50       5800 6461.83178            
        123 Shanta                          50       6500 6461.83178            
        122 Payam                           50       7900 6461.83178            
        121 Adam                            50       8200 6461.83178            
        120 Matthew                         50       8000 6461.83178            
        104 Bruce                           60       6000 6461.83178            
        103 Alexander                       60       9000 6461.83178            
        145 John                            80      14000 6461.83178            
        146 Karen                           80      13500 6461.83178            
        147 Alberto                         80      12000 6461.83178            
        148 Gerald                          80      11000 6461.83178            
        149 Eleni                           80      10500 6461.83178            
        150 Sean                            80      10000 6461.83178            
        151 David                           80       9500 6461.83178            
        152 Peter                           80       9000 6461.83178            
        156 Janette                         80      10000 6461.83178            
        157 Patrick                         80       9500 6461.83178            
        158 Allan                           80       9000 6461.83178            
        162 Clara                           80      10500 6461.83178            
        163 Danielle                        80       9500 6461.83178            
        168 Lisa                            80      11500 6461.83178            
        169 Harrison                        80      10000 6461.83178            
        170 Tayler                          80       9600 6461.83178            
        174 Ellen                           80      11000 6461.83178            
        100 Steven                          90      24000 6461.83178            
        109 Daniel                         100       9000 6461.83178            
        108 Nancy                          100      12008 6461.83178            
        205 Shelley                        110      12008 6461.83178            

38 rows selected.

SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.department_id,e.salary,avgSalaries.averageSal from
  2      (select avg(salary) as averageSal from employees
  3        group by department_id)
  4      avgSalaries, Employees e
  5    where e.salary>(select avg(e1.salary)  from employees e1
  6     where e.department_id=e1.department_id) 
  7* order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        201 Michael                         20      13000 3475.55556            
        201 Michael                         20      13000       6500            
        201 Michael                         20      13000      10154            
        201 Michael                         20      13000 19333.3333            
        201 Michael                         20      13000       4150            
        201 Michael                         20      13000      10000            
        201 Michael                         20      13000       7000            
        201 Michael                         20      13000       4400            
        201 Michael                         20      13000       9500            
        201 Michael                         20      13000       5760            
        201 Michael                         20      13000 8601.33333            
        201 Michael                         20      13000 8955.88235            
        114 Den                             30      11000 3475.55556            
        114 Den                             30      11000       6500            
        114 Den                             30      11000      10154            
        114 Den                             30      11000 19333.3333            
        114 Den                             30      11000       4150            
        114 Den                             30      11000      10000            
        114 Den                             30      11000       7000            
        114 Den                             30      11000       4400            
        114 Den                             30      11000       9500            
        114 Den                             30      11000       5760            
        114 Den                             30      11000 8601.33333            
        114 Den                             30      11000 8955.88235            
        192 Sarah                           50       4000       5760            
        193 Britney                         50       3900       5760            
        120 Matthew                         50       8000 8601.33333            
        121 Adam                            50       8200 8601.33333            
        122 Payam                           50       7900 8601.33333            
        123 Shanta                          50       6500 8601.33333            
        124 Kevin                           50       5800 8601.33333            
        137 Renske                          50       3600 8601.33333            
        141 Trenna                          50       3500 8601.33333            
        184 Nandita                         50       4200 8601.33333            
        185 Alexis                          50       4100 8601.33333            
        188 Kelly                           50       3800 8601.33333            
        189 Jennifer                        50       3600 8601.33333            
        192 Sarah                           50       4000 8601.33333            
        193 Britney                         50       3900 8601.33333            
        120 Matthew                         50       8000 8955.88235            
        121 Adam                            50       8200 8955.88235            
        122 Payam                           50       7900 8955.88235            
        123 Shanta                          50       6500 8955.88235            
        124 Kevin                           50       5800 8955.88235            
        137 Renske                          50       3600 8955.88235            
        141 Trenna                          50       3500 8955.88235            
        184 Nandita                         50       4200 8955.88235            
        185 Alexis                          50       4100 8955.88235            
        188 Kelly                           50       3800 8955.88235            
        189 Jennifer                        50       3600 8955.88235            
        192 Sarah                           50       4000 8955.88235            
        193 Britney                         50       3900 8955.88235            
        193 Britney                         50       3900       4150            
        120 Matthew                         50       8000      10000            
        121 Adam                            50       8200      10000            
        122 Payam                           50       7900      10000            
        123 Shanta                          50       6500      10000            
        124 Kevin                           50       5800      10000            
        137 Renske                          50       3600      10000            
        141 Trenna                          50       3500      10000            
        184 Nandita                         50       4200      10000            
        185 Alexis                          50       4100      10000            
        188 Kelly                           50       3800      10000            
        189 Jennifer                        50       3600      10000            
        192 Sarah                           50       4000      10000            
        193 Britney                         50       3900      10000            
        120 Matthew                         50       8000       7000            
        121 Adam                            50       8200       7000            
        122 Payam                           50       7900       7000            
        123 Shanta                          50       6500       7000            
        124 Kevin                           50       5800       7000            
        137 Renske                          50       3600       7000            
        141 Trenna                          50       3500       7000            
        184 Nandita                         50       4200       7000            
        185 Alexis                          50       4100       7000            
        188 Kelly                           50       3800       7000            
        189 Jennifer                        50       3600       7000            
        192 Sarah                           50       4000       7000            
        193 Britney                         50       3900       7000            
        120 Matthew                         50       8000       4400            
        121 Adam                            50       8200       4400            
        122 Payam                           50       7900       4400            
        123 Shanta                          50       6500       4400            
        124 Kevin                           50       5800       4400            
        137 Renske                          50       3600       4400            
        141 Trenna                          50       3500       4400            
        184 Nandita                         50       4200       4400            
        185 Alexis                          50       4100       4400            
        188 Kelly                           50       3800       4400            
        189 Jennifer                        50       3600       4400            
        192 Sarah                           50       4000       4400            
        193 Britney                         50       3900       4400            
        120 Matthew                         50       8000       9500            
        121 Adam                            50       8200       9500            
        122 Payam                           50       7900       9500            
        123 Shanta                          50       6500       9500            
        124 Kevin                           50       5800       9500            

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        137 Renske                          50       3600       9500            
        141 Trenna                          50       3500       9500            
        184 Nandita                         50       4200       9500            
        185 Alexis                          50       4100       9500            
        188 Kelly                           50       3800       9500            
        189 Jennifer                        50       3600       9500            
        192 Sarah                           50       4000       9500            
        193 Britney                         50       3900       9500            
        120 Matthew                         50       8000       5760            
        121 Adam                            50       8200       5760            
        122 Payam                           50       7900       5760            
        123 Shanta                          50       6500       5760            
        124 Kevin                           50       5800       5760            
        137 Renske                          50       3600       5760            
        141 Trenna                          50       3500       5760            
        184 Nandita                         50       4200       5760            
        185 Alexis                          50       4100       5760            
        188 Kelly                           50       3800       5760            
        189 Jennifer                        50       3600       5760            
        120 Matthew                         50       8000 3475.55556            
        121 Adam                            50       8200 3475.55556            
        122 Payam                           50       7900 3475.55556            
        123 Shanta                          50       6500 3475.55556            
        124 Kevin                           50       5800 3475.55556            
        137 Renske                          50       3600 3475.55556            
        141 Trenna                          50       3500 3475.55556            
        184 Nandita                         50       4200 3475.55556            
        185 Alexis                          50       4100 3475.55556            
        188 Kelly                           50       3800 3475.55556            
        189 Jennifer                        50       3600 3475.55556            
        192 Sarah                           50       4000 3475.55556            
        193 Britney                         50       3900 3475.55556            
        120 Matthew                         50       8000       6500            
        121 Adam                            50       8200       6500            
        122 Payam                           50       7900       6500            
        123 Shanta                          50       6500       6500            
        124 Kevin                           50       5800       6500            
        137 Renske                          50       3600       6500            
        141 Trenna                          50       3500       6500            
        184 Nandita                         50       4200       6500            
        185 Alexis                          50       4100       6500            
        188 Kelly                           50       3800       6500            
        189 Jennifer                        50       3600       6500            
        192 Sarah                           50       4000       6500            
        193 Britney                         50       3900       6500            
        120 Matthew                         50       8000      10154            
        121 Adam                            50       8200      10154            
        122 Payam                           50       7900      10154            
        123 Shanta                          50       6500      10154            
        124 Kevin                           50       5800      10154            
        137 Renske                          50       3600      10154            
        141 Trenna                          50       3500      10154            
        184 Nandita                         50       4200      10154            
        185 Alexis                          50       4100      10154            
        188 Kelly                           50       3800      10154            
        189 Jennifer                        50       3600      10154            
        192 Sarah                           50       4000      10154            
        193 Britney                         50       3900      10154            
        120 Matthew                         50       8000 19333.3333            
        121 Adam                            50       8200 19333.3333            
        122 Payam                           50       7900 19333.3333            
        123 Shanta                          50       6500 19333.3333            
        124 Kevin                           50       5800 19333.3333            
        137 Renske                          50       3600 19333.3333            
        141 Trenna                          50       3500 19333.3333            
        184 Nandita                         50       4200 19333.3333            
        185 Alexis                          50       4100 19333.3333            
        188 Kelly                           50       3800 19333.3333            
        189 Jennifer                        50       3600 19333.3333            
        192 Sarah                           50       4000 19333.3333            
        193 Britney                         50       3900 19333.3333            
        120 Matthew                         50       8000       4150            
        121 Adam                            50       8200       4150            
        122 Payam                           50       7900       4150            
        123 Shanta                          50       6500       4150            
        124 Kevin                           50       5800       4150            
        137 Renske                          50       3600       4150            
        141 Trenna                          50       3500       4150            
        184 Nandita                         50       4200       4150            
        185 Alexis                          50       4100       4150            
        188 Kelly                           50       3800       4150            
        189 Jennifer                        50       3600       4150            
        192 Sarah                           50       4000       4150            
        103 Alexander                       60       9000 3475.55556            
        104 Bruce                           60       6000 3475.55556            
        103 Alexander                       60       9000       6500            
        104 Bruce                           60       6000       6500            
        103 Alexander                       60       9000      10154            
        104 Bruce                           60       6000      10154            
        103 Alexander                       60       9000 19333.3333            
        104 Bruce                           60       6000 19333.3333            
        103 Alexander                       60       9000       4150            
        104 Bruce                           60       6000       4150            
        103 Alexander                       60       9000      10000            
        104 Bruce                           60       6000      10000            
        103 Alexander                       60       9000       7000            
        104 Bruce                           60       6000       7000            

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        103 Alexander                       60       9000       4400            
        104 Bruce                           60       6000       4400            
        103 Alexander                       60       9000       9500            
        104 Bruce                           60       6000       9500            
        103 Alexander                       60       9000       5760            
        104 Bruce                           60       6000       5760            
        103 Alexander                       60       9000 8601.33333            
        104 Bruce                           60       6000 8601.33333            
        103 Alexander                       60       9000 8955.88235            
        104 Bruce                           60       6000 8955.88235            
        150 Sean                            80      10000 8955.88235            
        151 David                           80       9500 8955.88235            
        152 Peter                           80       9000 8955.88235            
        156 Janette                         80      10000 8955.88235            
        157 Patrick                         80       9500 8955.88235            
        158 Allan                           80       9000 8955.88235            
        162 Clara                           80      10500 8955.88235            
        163 Danielle                        80       9500 8955.88235            
        168 Lisa                            80      11500 8955.88235            
        169 Harrison                        80      10000 8955.88235            
        170 Tayler                          80       9600 8955.88235            
        174 Ellen                           80      11000 8955.88235            
        157 Patrick                         80       9500       4400            
        158 Allan                           80       9000       4400            
        162 Clara                           80      10500       4400            
        163 Danielle                        80       9500       4400            
        168 Lisa                            80      11500       4400            
        169 Harrison                        80      10000       4400            
        170 Tayler                          80       9600       4400            
        174 Ellen                           80      11000       4400            
        145 John                            80      14000       9500            
        146 Karen                           80      13500       9500            
        147 Alberto                         80      12000       9500            
        148 Gerald                          80      11000       9500            
        149 Eleni                           80      10500       9500            
        150 Sean                            80      10000       9500            
        151 David                           80       9500       9500            
        152 Peter                           80       9000       9500            
        156 Janette                         80      10000       9500            
        157 Patrick                         80       9500       9500            
        158 Allan                           80       9000       9500            
        162 Clara                           80      10500       9500            
        163 Danielle                        80       9500       9500            
        168 Lisa                            80      11500       9500            
        169 Harrison                        80      10000       9500            
        170 Tayler                          80       9600       9500            
        174 Ellen                           80      11000       9500            
        145 John                            80      14000       5760            
        146 Karen                           80      13500       5760            
        147 Alberto                         80      12000       5760            
        148 Gerald                          80      11000       5760            
        149 Eleni                           80      10500       5760            
        150 Sean                            80      10000       5760            
        151 David                           80       9500       5760            
        152 Peter                           80       9000       5760            
        156 Janette                         80      10000       5760            
        157 Patrick                         80       9500       5760            
        158 Allan                           80       9000       5760            
        162 Clara                           80      10500       5760            
        163 Danielle                        80       9500       5760            
        168 Lisa                            80      11500       5760            
        169 Harrison                        80      10000       5760            
        170 Tayler                          80       9600       5760            
        174 Ellen                           80      11000       5760            
        145 John                            80      14000 8601.33333            
        146 Karen                           80      13500 8601.33333            
        147 Alberto                         80      12000 8601.33333            
        148 Gerald                          80      11000 8601.33333            
        149 Eleni                           80      10500 8601.33333            
        150 Sean                            80      10000 8601.33333            
        151 David                           80       9500 8601.33333            
        152 Peter                           80       9000 8601.33333            
        156 Janette                         80      10000 8601.33333            
        157 Patrick                         80       9500 8601.33333            
        158 Allan                           80       9000 8601.33333            
        162 Clara                           80      10500 8601.33333            
        163 Danielle                        80       9500 8601.33333            
        168 Lisa                            80      11500 8601.33333            
        169 Harrison                        80      10000 8601.33333            
        170 Tayler                          80       9600 8601.33333            
        174 Ellen                           80      11000 8601.33333            
        145 John                            80      14000 8955.88235            
        146 Karen                           80      13500 8955.88235            
        147 Alberto                         80      12000 8955.88235            
        148 Gerald                          80      11000 8955.88235            
        149 Eleni                           80      10500 8955.88235            
        168 Lisa                            80      11500 19333.3333            
        169 Harrison                        80      10000 19333.3333            
        170 Tayler                          80       9600 19333.3333            
        174 Ellen                           80      11000 19333.3333            
        145 John                            80      14000       4150            
        146 Karen                           80      13500       4150            
        147 Alberto                         80      12000       4150            
        148 Gerald                          80      11000       4150            
        149 Eleni                           80      10500       4150            
        150 Sean                            80      10000       4150            
        151 David                           80       9500       4150            

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        152 Peter                           80       9000       4150            
        156 Janette                         80      10000       4150            
        157 Patrick                         80       9500       4150            
        158 Allan                           80       9000       4150            
        162 Clara                           80      10500       4150            
        163 Danielle                        80       9500       4150            
        168 Lisa                            80      11500       4150            
        169 Harrison                        80      10000       4150            
        170 Tayler                          80       9600       4150            
        174 Ellen                           80      11000       4150            
        145 John                            80      14000      10000            
        146 Karen                           80      13500      10000            
        147 Alberto                         80      12000      10000            
        148 Gerald                          80      11000      10000            
        149 Eleni                           80      10500      10000            
        150 Sean                            80      10000      10000            
        151 David                           80       9500      10000            
        152 Peter                           80       9000      10000            
        156 Janette                         80      10000      10000            
        157 Patrick                         80       9500      10000            
        158 Allan                           80       9000      10000            
        162 Clara                           80      10500      10000            
        163 Danielle                        80       9500      10000            
        168 Lisa                            80      11500      10000            
        169 Harrison                        80      10000      10000            
        170 Tayler                          80       9600      10000            
        174 Ellen                           80      11000      10000            
        145 John                            80      14000       7000            
        146 Karen                           80      13500       7000            
        147 Alberto                         80      12000       7000            
        148 Gerald                          80      11000       7000            
        149 Eleni                           80      10500       7000            
        150 Sean                            80      10000       7000            
        151 David                           80       9500       7000            
        152 Peter                           80       9000       7000            
        156 Janette                         80      10000       7000            
        157 Patrick                         80       9500       7000            
        158 Allan                           80       9000       7000            
        162 Clara                           80      10500       7000            
        163 Danielle                        80       9500       7000            
        168 Lisa                            80      11500       7000            
        169 Harrison                        80      10000       7000            
        170 Tayler                          80       9600       7000            
        174 Ellen                           80      11000       7000            
        145 John                            80      14000       4400            
        146 Karen                           80      13500       4400            
        147 Alberto                         80      12000       4400            
        148 Gerald                          80      11000       4400            
        149 Eleni                           80      10500       4400            
        150 Sean                            80      10000       4400            
        151 David                           80       9500       4400            
        152 Peter                           80       9000       4400            
        156 Janette                         80      10000       4400            
        145 John                            80      14000 3475.55556            
        146 Karen                           80      13500 3475.55556            
        147 Alberto                         80      12000 3475.55556            
        148 Gerald                          80      11000 3475.55556            
        149 Eleni                           80      10500 3475.55556            
        150 Sean                            80      10000 3475.55556            
        151 David                           80       9500 3475.55556            
        152 Peter                           80       9000 3475.55556            
        156 Janette                         80      10000 3475.55556            
        157 Patrick                         80       9500 3475.55556            
        158 Allan                           80       9000 3475.55556            
        162 Clara                           80      10500 3475.55556            
        163 Danielle                        80       9500 3475.55556            
        168 Lisa                            80      11500 3475.55556            
        169 Harrison                        80      10000 3475.55556            
        170 Tayler                          80       9600 3475.55556            
        174 Ellen                           80      11000 3475.55556            
        145 John                            80      14000       6500            
        146 Karen                           80      13500       6500            
        147 Alberto                         80      12000       6500            
        148 Gerald                          80      11000       6500            
        149 Eleni                           80      10500       6500            
        150 Sean                            80      10000       6500            
        151 David                           80       9500       6500            
        152 Peter                           80       9000       6500            
        156 Janette                         80      10000       6500            
        157 Patrick                         80       9500       6500            
        158 Allan                           80       9000       6500            
        162 Clara                           80      10500       6500            
        163 Danielle                        80       9500       6500            
        168 Lisa                            80      11500       6500            
        169 Harrison                        80      10000       6500            
        170 Tayler                          80       9600       6500            
        174 Ellen                           80      11000       6500            
        145 John                            80      14000      10154            
        146 Karen                           80      13500      10154            
        147 Alberto                         80      12000      10154            
        148 Gerald                          80      11000      10154            
        149 Eleni                           80      10500      10154            
        150 Sean                            80      10000      10154            
        151 David                           80       9500      10154            
        152 Peter                           80       9000      10154            
        156 Janette                         80      10000      10154            
        157 Patrick                         80       9500      10154            

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        158 Allan                           80       9000      10154            
        162 Clara                           80      10500      10154            
        163 Danielle                        80       9500      10154            
        168 Lisa                            80      11500      10154            
        169 Harrison                        80      10000      10154            
        170 Tayler                          80       9600      10154            
        174 Ellen                           80      11000      10154            
        145 John                            80      14000 19333.3333            
        146 Karen                           80      13500 19333.3333            
        147 Alberto                         80      12000 19333.3333            
        148 Gerald                          80      11000 19333.3333            
        149 Eleni                           80      10500 19333.3333            
        150 Sean                            80      10000 19333.3333            
        151 David                           80       9500 19333.3333            
        152 Peter                           80       9000 19333.3333            
        156 Janette                         80      10000 19333.3333            
        157 Patrick                         80       9500 19333.3333            
        158 Allan                           80       9000 19333.3333            
        162 Clara                           80      10500 19333.3333            
        163 Danielle                        80       9500 19333.3333            
        100 Steven                          90      24000 3475.55556            
        100 Steven                          90      24000       6500            
        100 Steven                          90      24000      10154            
        100 Steven                          90      24000 19333.3333            
        100 Steven                          90      24000       4150            
        100 Steven                          90      24000      10000            
        100 Steven                          90      24000       7000            
        100 Steven                          90      24000       4400            
        100 Steven                          90      24000       9500            
        100 Steven                          90      24000       5760            
        100 Steven                          90      24000 8601.33333            
        100 Steven                          90      24000 8955.88235            
        108 Nancy                          100      12008 3475.55556            
        109 Daniel                         100       9000 3475.55556            
        109 Daniel                         100       9000 8955.88235            
        108 Nancy                          100      12008 8955.88235            
        109 Daniel                         100       9000 8601.33333            
        108 Nancy                          100      12008 8601.33333            
        109 Daniel                         100       9000       5760            
        108 Nancy                          100      12008       5760            
        109 Daniel                         100       9000       9500            
        108 Nancy                          100      12008       9500            
        109 Daniel                         100       9000       4400            
        108 Nancy                          100      12008       4400            
        109 Daniel                         100       9000       7000            
        108 Nancy                          100      12008       6500            
        109 Daniel                         100       9000       6500            
        108 Nancy                          100      12008      10154            
        109 Daniel                         100       9000      10154            
        108 Nancy                          100      12008 19333.3333            
        109 Daniel                         100       9000 19333.3333            
        108 Nancy                          100      12008       4150            
        109 Daniel                         100       9000       4150            
        108 Nancy                          100      12008      10000            
        109 Daniel                         100       9000      10000            
        108 Nancy                          100      12008       7000            
        205 Shelley                        110      12008       5760            
        205 Shelley                        110      12008 19333.3333            
        205 Shelley                        110      12008       4400            
        205 Shelley                        110      12008      10000            
        205 Shelley                        110      12008      10154            
        205 Shelley                        110      12008 8955.88235            
        205 Shelley                        110      12008 8601.33333            
        205 Shelley                        110      12008       6500            
        205 Shelley                        110      12008       4150            
        205 Shelley                        110      12008       7000            
        205 Shelley                        110      12008 3475.55556            
        205 Shelley                        110      12008       9500            

456 rows selected.

SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,distinct(e.department_id),e.salary,avgSalaries.averageSal from
  2      (select avg(salary) as averageSal from employees
  3        group by department_id)
  4      avgSalaries, Employees e
  5    where e.salary>(select avg(e1.salary)  from employees e1
  6     where e.department_id=e1.department_id) 
  7* order by e.department_id
  8  /
  select e.employee_id,e.first_name,distinct(e.department_id),e.salary,avgSalaries.averageSal from
                                    *
ERROR at line 1:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.department_id,e.salary,avgSalaries.averageSal from
  2      (select avg(salary) as averageSal from employees
  3        group by department_id)
  4      avgSalaries, Employees e
  5    where avgSalaries.Department_id=e.Department_id  and e.salary> (select avg(e1.salary)  from employees e1
  6     where e.department_id=e1.department_id) 
  7* order by e.department_id
SQL> /
  where avgSalaries.Department_id=e.Department_id  and e.salary> (select avg(e1.salary)  from employees e1
        *
ERROR at line 5:
ORA-00904: "AVGSALARIES"."DEPARTMENT_ID": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.department_id,e.salary,avgSalaries.averageSal from
  2      (select department_id, avg(salary) as averageSal from employees
  3        group by department_id)
  4      avgSalaries, Employees e
  5    where avgSalaries.Department_id=e.Department_id  
  6  and e.salary> (select avg(e1.salary)  from employees e1
  7     where e.department_id=e1.department_id) 
  8* order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID     SALARY AVERAGESAL            
----------- -------------------- ------------- ---------- ----------            
        201 Michael                         20      13000       9500            
        114 Den                             30      11000       4150            
        123 Shanta                          50       6500 3475.55556            
        124 Kevin                           50       5800 3475.55556            
        137 Renske                          50       3600 3475.55556            
        141 Trenna                          50       3500 3475.55556            
        184 Nandita                         50       4200 3475.55556            
        185 Alexis                          50       4100 3475.55556            
        188 Kelly                           50       3800 3475.55556            
        189 Jennifer                        50       3600 3475.55556            
        192 Sarah                           50       4000 3475.55556            
        193 Britney                         50       3900 3475.55556            
        122 Payam                           50       7900 3475.55556            
        120 Matthew                         50       8000 3475.55556            
        121 Adam                            50       8200 3475.55556            
        104 Bruce                           60       6000       5760            
        103 Alexander                       60       9000       5760            
        170 Tayler                          80       9600 8955.88235            
        174 Ellen                           80      11000 8955.88235            
        169 Harrison                        80      10000 8955.88235            
        168 Lisa                            80      11500 8955.88235            
        163 Danielle                        80       9500 8955.88235            
        145 John                            80      14000 8955.88235            
        146 Karen                           80      13500 8955.88235            
        147 Alberto                         80      12000 8955.88235            
        148 Gerald                          80      11000 8955.88235            
        149 Eleni                           80      10500 8955.88235            
        150 Sean                            80      10000 8955.88235            
        151 David                           80       9500 8955.88235            
        152 Peter                           80       9000 8955.88235            
        156 Janette                         80      10000 8955.88235            
        157 Patrick                         80       9500 8955.88235            
        158 Allan                           80       9000 8955.88235            
        162 Clara                           80      10500 8955.88235            
        100 Steven                          90      24000 19333.3333            
        109 Daniel                         100       9000 8601.33333            
        108 Nancy                          100      12008 8601.33333            
        205 Shelley                        110      12008      10154            

38 rows selected.

SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2      (select department_id, avg(salary) as averageSal from employees
  3        group by department_id)
  4      avgSalaries, Employees e
  5    where avgSalaries.Department_id=e.Department_id  
  6  and e.salary> (select avg(e1.salary)  from employees e1
  7     where e.department_id=e1.department_id) 
  8* order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID AVERAGESAL            
----------- -------------------- ---------- ------------- ----------            
        201 Michael                   13000            20       9500            
        114 Den                       11000            30       4150            
        123 Shanta                     6500            50 3475.55556            
        124 Kevin                      5800            50 3475.55556            
        137 Renske                     3600            50 3475.55556            
        141 Trenna                     3500            50 3475.55556            
        184 Nandita                    4200            50 3475.55556            
        185 Alexis                     4100            50 3475.55556            
        188 Kelly                      3800            50 3475.55556            
        189 Jennifer                   3600            50 3475.55556            
        192 Sarah                      4000            50 3475.55556            
        193 Britney                    3900            50 3475.55556            
        122 Payam                      7900            50 3475.55556            
        120 Matthew                    8000            50 3475.55556            
        121 Adam                       8200            50 3475.55556            
        104 Bruce                      6000            60       5760            
        103 Alexander                  9000            60       5760            
        170 Tayler                     9600            80 8955.88235            
        174 Ellen                     11000            80 8955.88235            
        169 Harrison                  10000            80 8955.88235            
        168 Lisa                      11500            80 8955.88235            
        163 Danielle                   9500            80 8955.88235            
        145 John                      14000            80 8955.88235            
        146 Karen                     13500            80 8955.88235            
        147 Alberto                   12000            80 8955.88235            
        148 Gerald                    11000            80 8955.88235            
        149 Eleni                     10500            80 8955.88235            
        150 Sean                      10000            80 8955.88235            
        151 David                      9500            80 8955.88235            
        152 Peter                      9000            80 8955.88235            
        156 Janette                   10000            80 8955.88235            
        157 Patrick                    9500            80 8955.88235            
        158 Allan                      9000            80 8955.88235            
        162 Clara                     10500            80 8955.88235            
        100 Steven                    24000            90 19333.3333            
        109 Daniel                     9000           100 8601.33333            
        108 Nancy                     12008           100 8601.33333            
        205 Shelley                   12008           110      10154            

38 rows selected.

SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2      (select department_id, avg(salary) as averageSal from employees
  3        group by rollup(department_id))
  4      avgSalaries, Employees e
  5    where avgSalaries.Department_id=e.Department_id  
  6  and e.salary> (select avg(e1.salary)  from employees e1
  7     where e.department_id=e1.department_id) 
  8* order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID AVERAGESAL            
----------- -------------------- ---------- ------------- ----------            
        201 Michael                   13000            20       9500            
        114 Den                       11000            30       4150            
        123 Shanta                     6500            50 3475.55556            
        124 Kevin                      5800            50 3475.55556            
        137 Renske                     3600            50 3475.55556            
        141 Trenna                     3500            50 3475.55556            
        184 Nandita                    4200            50 3475.55556            
        185 Alexis                     4100            50 3475.55556            
        188 Kelly                      3800            50 3475.55556            
        189 Jennifer                   3600            50 3475.55556            
        192 Sarah                      4000            50 3475.55556            
        193 Britney                    3900            50 3475.55556            
        122 Payam                      7900            50 3475.55556            
        120 Matthew                    8000            50 3475.55556            
        121 Adam                       8200            50 3475.55556            
        104 Bruce                      6000            60       5760            
        103 Alexander                  9000            60       5760            
        170 Tayler                     9600            80 8955.88235            
        174 Ellen                     11000            80 8955.88235            
        169 Harrison                  10000            80 8955.88235            
        168 Lisa                      11500            80 8955.88235            
        163 Danielle                   9500            80 8955.88235            
        145 John                      14000            80 8955.88235            
        146 Karen                     13500            80 8955.88235            
        147 Alberto                   12000            80 8955.88235            
        148 Gerald                    11000            80 8955.88235            
        149 Eleni                     10500            80 8955.88235            
        150 Sean                      10000            80 8955.88235            
        151 David                      9500            80 8955.88235            
        152 Peter                      9000            80 8955.88235            
        156 Janette                   10000            80 8955.88235            
        157 Patrick                    9500            80 8955.88235            
        158 Allan                      9000            80 8955.88235            
        162 Clara                     10500            80 8955.88235            
        100 Steven                    24000            90 19333.3333            
        109 Daniel                     9000           100 8601.33333            
        108 Nancy                     12008           100 8601.33333            
        205 Shelley                   12008           110      10154            

38 rows selected.

SQL> ed
Wrote file afiedt.buf

  1    select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2      (select department_id, avg(salary) as averageSal from employees
  3        group by department_id)
  4      avgSalaries, Employees e
  5    where avgSalaries.Department_id=e.Department_id  
  6  and e.salary> (select avg(e1.salary)  from employees e1
  7     where e.department_id=e1.department_id) 
  8* order by e.department_id
SQL> select department_id,avg(Salary)  from employees
  2  group by rollup(department_id);

DEPARTMENT_ID AVG(SALARY)                                                       
------------- -----------                                                       
           10        4400                                                       
           20        9500                                                       
           30        4150                                                       
           40        6500                                                       
           50  3475.55556                                                       
           60        5760                                                       
           70       10000                                                       
           80  8955.88235                                                       
           90  19333.3333                                                       
          100  8601.33333                                                       
          110       10154                                                       
                     7000                                                       
               6461.83178                                                       

13 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2          (select department_id, avg(salary) as averageSal from employees
  3           group by cube(department_id,avg(Salary))
  4          avgSalaries, Employees e
  5        where avgSalaries.Department_id=e.Department_id
  6      and e.salary> (select avg(e1.salary)  from employees e1
  7         where e.department_id=e1.department_id)
  8*    order by e.department_id
SQL> /
         group by cube(department_id,avg(Salary))
                                     *
ERROR at line 3:
ORA-00934: group function is not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2          (select department_id, avg(salary) as averageSal from employees
  3           group by department_id)
  4          avgSalaries, Employees e
  5        where avgSalaries.Department_id=e.Department_id
  6      and e.salary> (select avg(e1.salary)  from employees e1
  7         where e.department_id=e1.department_id)
  8*    order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID AVERAGESAL            
----------- -------------------- ---------- ------------- ----------            
        201 Michael                   13000            20       9500            
        114 Den                       11000            30       4150            
        123 Shanta                     6500            50 3475.55556            
        124 Kevin                      5800            50 3475.55556            
        137 Renske                     3600            50 3475.55556            
        141 Trenna                     3500            50 3475.55556            
        184 Nandita                    4200            50 3475.55556            
        185 Alexis                     4100            50 3475.55556            
        188 Kelly                      3800            50 3475.55556            
        189 Jennifer                   3600            50 3475.55556            
        192 Sarah                      4000            50 3475.55556            
        193 Britney                    3900            50 3475.55556            
        122 Payam                      7900            50 3475.55556            
        120 Matthew                    8000            50 3475.55556            
        121 Adam                       8200            50 3475.55556            
        104 Bruce                      6000            60       5760            
        103 Alexander                  9000            60       5760            
        170 Tayler                     9600            80 8955.88235            
        174 Ellen                     11000            80 8955.88235            
        169 Harrison                  10000            80 8955.88235            
        168 Lisa                      11500            80 8955.88235            
        163 Danielle                   9500            80 8955.88235            
        145 John                      14000            80 8955.88235            
        146 Karen                     13500            80 8955.88235            
        147 Alberto                   12000            80 8955.88235            
        148 Gerald                    11000            80 8955.88235            
        149 Eleni                     10500            80 8955.88235            
        150 Sean                      10000            80 8955.88235            
        151 David                      9500            80 8955.88235            
        152 Peter                      9000            80 8955.88235            
        156 Janette                   10000            80 8955.88235            
        157 Patrick                    9500            80 8955.88235            
        158 Allan                      9000            80 8955.88235            
        162 Clara                     10500            80 8955.88235            
        100 Steven                    24000            90 19333.3333            
        109 Daniel                     9000           100 8601.33333            
        108 Nancy                     12008           100 8601.33333            
        205 Shelley                   12008           110      10154            

38 rows selected.

SQL> select department_id,avg(Sal) from employees
  2  group by cube(department_id,sum(sal))
  3  .
SQL> ed
Wrote file afiedt.buf

  1  select department_id,sum(Sal) from employees
  2  where department_id in(10,20)
  3* group by cube(department_id,sum(sal))
SQL> /
group by cube(department_id,sum(sal))
                            *
ERROR at line 3:
ORA-00934: group function is not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  select department_id,sum(Salary) from employees
  2  where department_id in(10,20)
  3* group by cube(department_id,salary)
SQL> /

DEPARTMENT_ID SUM(SALARY)                                                       
------------- -----------                                                       
                                                                                
                    23400                                                       
                     4400                                                       
                     6000                                                       
                    13000                                                       
           10                                                                   
           10        4400                                                       
           10        4400                                                       
           20                                                                   
           20       19000                                                       
           20        6000                                                       
           20       13000                                                       

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,sum(Salary) from employees
  2  where department_id in(80,90)
  3* group by cube(department_id,salary)
SQL> /

DEPARTMENT_ID SUM(SALARY)                                                       
------------- -----------                                                       
                   362500                                                       
                     6100                                                       
                    12400                                                       
                     6400                                                       
                     6800                                                       
                    14000                                                       
                     7200                                                       
                     7300                                                       
                     7400                                                       
                    15000                                                       
                    16000                                                       
                     8400                                                       
                     8600                                                       
                     8800                                                       
                    18000                                                       
                    28500                                                       
                     9600                                                       
                    30000                                                       
                    21000                                                       
                    22000                                                       
                    11500                                                       
                    12000                                                       
                    13500                                                       
                    14000                                                       
                    34000                                                       
                    24000                                                       
           80      304500                                                       
           80        6100                                                       
           80       12400                                                       
           80        6400                                                       
           80        6800                                                       
           80       14000                                                       
           80        7200                                                       
           80        7300                                                       
           80        7400                                                       
           80       15000                                                       
           80       16000                                                       
           80        8400                                                       
           80        8600                                                       
           80        8800                                                       
           80       18000                                                       
           80       28500                                                       
           80        9600                                                       
           80       30000                                                       
           80       21000                                                       
           80       22000                                                       
           80       11500                                                       
           80       12000                                                       
           80       13500                                                       
           80       14000                                                       
           90       58000                                                       
           90       34000                                                       
           90       24000                                                       

53 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select department_id,sum(Salary) from employees
  2  where department_id in(50,60)
  3* group by cube(department_id,salary)
SQL> /

DEPARTMENT_ID SUM(SALARY)                                                       
------------- -----------                                                       
                   185200                                                       
                     2100                                                       
                     4400                                                       
                     4800                                                       
                    12500                                                       
                     7800                                                       
                     5400                                                       
                     8400                                                       
                     5800                                                       
                     6000                                                       
                     9300                                                       
                    12800                                                       
                     6600                                                       
                     3400                                                       
                     3500                                                       
                     7200                                                       
                     3800                                                       
                     3900                                                       
                     4000                                                       
                     4100                                                       
                     8400                                                       
                     9600                                                       
                     5800                                                       
                     6000                                                       
                     6500                                                       
                     7900                                                       
                     8000                                                       
                     8200                                                       
                     9000                                                       
           50      156400                                                       
           50        2100                                                       
           50        4400                                                       
           50        4800                                                       
           50       12500                                                       
           50        7800                                                       
           50        5400                                                       
           50        8400                                                       
           50        5800                                                       
           50        6000                                                       
           50        9300                                                       
           50       12800                                                       
           50        6600                                                       
           50        3400                                                       
           50        3500                                                       
           50        7200                                                       
           50        3800                                                       
           50        3900                                                       
           50        4000                                                       
           50        4100                                                       
           50        4200                                                       
           50        5800                                                       
           50        6500                                                       
           50        7900                                                       
           50        8000                                                       
           50        8200                                                       
           60       28800                                                       
           60        4200                                                       
           60        9600                                                       
           60        6000                                                       
           60        9000                                                       

60 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,sum(Salary) from employees
  2  where department_id in(100,110)
  3* group by cube(department_id,salary)
SQL> /

DEPARTMENT_ID SUM(SALARY)                                                       
------------- -----------                                                       
                    71916                                                       
                     6900                                                       
                     7700                                                       
                     7800                                                       
                     8200                                                       
                     8300                                                       
                     9000                                                       
                    24016                                                       
          100       51608                                                       
          100        6900                                                       
          100        7700                                                       
          100        7800                                                       
          100        8200                                                       
          100        9000                                                       
          100       12008                                                       
          110       20308                                                       
          110        8300                                                       
          110       12008                                                       

18 rows selected.

SQL> select department_id,salaries from employees
  2  where department_id
  3  .
SQL> ed
Wrote file afiedt.buf

  1  select department_id,salary from employees
  2* where department_id in (100,110)
SQL> /

DEPARTMENT_ID     SALARY                                                        
------------- ----------                                                        
          100      12008                                                        
          100       9000                                                        
          100       8200                                                        
          100       7700                                                        
          100       7800                                                        
          100       6900                                                        
          110      12008                                                        
          110       8300                                                        

8 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select deptno,sum(sal) from emp_j
  2  where deptno in(10,20)
  3* group by cube(deptno,sal)
SQL> /
group by cube(deptno,sal)
                     *
ERROR at line 3:
ORA-00904: "SAL": invalid identifier 


SQL> desc emp_j
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(2)
 ENAME                                              VARCHAR2(20)
 DEPTNO                                             NUMBER(2)

SQL> alter table emp_j
  2  add sal number(4) default 1000;

Table altered.

SQL> ed
Wrote file afiedt.buf

  1  select deptno,sum(sal) from emp_j
  2      where deptno in(10,20)
  3*    group by cube(deptno,sal)
SQL> /

    DEPTNO   SUM(SAL)                                                           
---------- ----------                                                           
                 6000                                                           
                 6000                                                           
        10       3000                                                           
        10       3000                                                           
        20       3000                                                           
        20       3000                                                           

6 rows selected.

SQL> select * from emp_j;

     EMPNO ENAME                    DEPTNO        SAL                           
---------- -------------------- ---------- ----------                           
         1 Anil                         10       1000                           
         2 Sunil                        20       1000                           
         3 Akash                        10       1000                           
         4 Suresh                       30       1000                           
         5 Ramesh                       30       1000                           
         6 Reema                        20       1000                           
         7 Seema                        20       1000                           
         8 Parul                        10       1000                           
         9 Gauri                                 1000                           

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select * from emp_j
  2* order by deptno
SQL> /

     EMPNO ENAME                    DEPTNO        SAL                           
---------- -------------------- ---------- ----------                           
         3 Akash                        10       1000                           
         1 Anil                         10       1000                           
         8 Parul                        10       1000                           
         7 Seema                        20       1000                           
         2 Sunil                        20       1000                           
         6 Reema                        20       1000                           
         4 Suresh                       30       1000                           
         5 Ramesh                       30       1000                           
         9 Gauri                                 1000                           

9 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2           (select department_id, avg(salary) as averageSal from employees
  3              group by cube(department_id,salary))
  4            avgSalaries, Employees e
  5            where avgSalaries.Department_id=e.Department_id
  6          and e.department_id in(100,110) and  e.salary> (select avg(e1.salary)  from employees e1
  7             where e.department_id=e1.department_id)
  8*       order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID AVERAGESAL            
----------- -------------------- ---------- ------------- ----------            
        108 Nancy                     12008           100       6900            
        109 Daniel                     9000           100       6900            
        108 Nancy                     12008           100       7700            
        109 Daniel                     9000           100       7700            
        108 Nancy                     12008           100       7800            
        109 Daniel                     9000           100       7800            
        108 Nancy                     12008           100       8200            
        109 Daniel                     9000           100       8200            
        108 Nancy                     12008           100       9000            
        109 Daniel                     9000           100       9000            
        108 Nancy                     12008           100      12008            
        109 Daniel                     9000           100      12008            
        108 Nancy                     12008           100 8601.33333            
        109 Daniel                     9000           100 8601.33333            
        205 Shelley                   12008           110       8300            
        205 Shelley                   12008           110      12008            
        205 Shelley                   12008           110      10154            

17 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2           (select department_id, avg(salary) as averageSal from employees
  3              group by department_id)
  4            avgSalaries, Employees e
  5            where avgSalaries.Department_id=e.Department_id
  6          and e.department_id in(100,110) and  e.salary> (select avg(e1.salary)  from employees e1
  7             where e.department_id=e1.department_id)
  8*       order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID AVERAGESAL            
----------- -------------------- ---------- ------------- ----------            
        108 Nancy                     12008           100 8601.33333            
        109 Daniel                     9000           100 8601.33333            
        205 Shelley                   12008           110      10154            

SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2           (select department_id, avg(salary) as averageSal,sum(avg(Salary)) from employees
  3              group by department_id)
  4            avgSalaries, Employees e
  5            where avgSalaries.Department_id=e.Department_id
  6          and e.department_id in(100,110) and  e.salary> (select avg(e1.salary)  from employees e1
  7             where e.department_id=e1.department_id)
  8*       order by e.department_id
SQL> /
         (select department_id, avg(salary) as averageSal,sum(avg(Salary)) from employees
                 *
ERROR at line 2:
ORA-00937: not a single-group group function 


SQL> ed
Wrote file afiedt.buf

  1  select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2           (select department_id, avg(salary) as averageSal from employees
  3              group by department_id) avgSalaries, Employees e
  4  where avgSalaries.Department_id=e.Department_id
  5           and  e.salary> (select avg(e1.salary)  from employees e1
  6             where e.department_id=e1.department_id)
  7*       order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID AVERAGESAL            
----------- -------------------- ---------- ------------- ----------            
        201 Michael                   13000            20       9500            
        114 Den                       11000            30       4150            
        123 Shanta                     6500            50 3475.55556            
        124 Kevin                      5800            50 3475.55556            
        137 Renske                     3600            50 3475.55556            
        141 Trenna                     3500            50 3475.55556            
        184 Nandita                    4200            50 3475.55556            
        185 Alexis                     4100            50 3475.55556            
        188 Kelly                      3800            50 3475.55556            
        189 Jennifer                   3600            50 3475.55556            
        192 Sarah                      4000            50 3475.55556            
        193 Britney                    3900            50 3475.55556            
        122 Payam                      7900            50 3475.55556            
        120 Matthew                    8000            50 3475.55556            
        121 Adam                       8200            50 3475.55556            
        104 Bruce                      6000            60       5760            
        103 Alexander                  9000            60       5760            
        170 Tayler                     9600            80 8955.88235            
        174 Ellen                     11000            80 8955.88235            
        169 Harrison                  10000            80 8955.88235            
        168 Lisa                      11500            80 8955.88235            
        163 Danielle                   9500            80 8955.88235            
        145 John                      14000            80 8955.88235            
        146 Karen                     13500            80 8955.88235            
        147 Alberto                   12000            80 8955.88235            
        148 Gerald                    11000            80 8955.88235            
        149 Eleni                     10500            80 8955.88235            
        150 Sean                      10000            80 8955.88235            
        151 David                      9500            80 8955.88235            
        152 Peter                      9000            80 8955.88235            
        156 Janette                   10000            80 8955.88235            
        157 Patrick                    9500            80 8955.88235            
        158 Allan                      9000            80 8955.88235            
        162 Clara                     10500            80 8955.88235            
        100 Steven                    24000            90 19333.3333            
        109 Daniel                     9000           100 8601.33333            
        108 Nancy                     12008           100 8601.33333            
        205 Shelley                   12008           110      10154            

38 rows selected.

SQL> select e.employee_id,e.first_name,e.salary,e.department_id,avgSalaries.averageSal from
  2    2          (select department_id, avg(salary) as averageSal from employees
  3    3           group by department_id)
  4    4          avgSalaries, Employees e
  5    5        where avgSalaries.Department_id=e.Department_id
  6    6      and e.salary> (select avg(e1.salary)  from employees e1
  7    7         where e.department_id=e1.department_id)
  8  .
SQL> /
  2          (select department_id, avg(salary) as averageSal from employees
  *
ERROR at line 2:
ORA-00903: invalid table name 


SQL> spool off
