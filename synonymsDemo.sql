SQL> connect / as sysdba
Connected.
SQL> grant create synonym to C##hr;

Grant succeeded.

SQL> connect C##hr/hr
Connected.
SQL> create or replace synonym emp for employees;
create or replace synonym emp for employees
                          *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> create or replace synonym emp1 for employees;

Synonym created.

SQL> select * from emp1;

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

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        102 Lex                  Garcia                                         
LGARCIA                   1.515.555.0102       13-JAN-11 AD_VP           17000  
                      100            90                                         
                                                                                
        103 Alexander            James                                          
AJAMES                    1.590.555.0103       03-JAN-16 IT_PROG          9000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      102            60                                         
                                                                                
        104 Bruce                Miller                                         
BMILLER                   1.590.555.0104       21-MAY-17 IT_PROG          6000  
                      103            60                                         
                                                                                
        105 David                Williams                                       

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
DWILLIAMS                 1.590.555.0105       25-JUN-15 IT_PROG          4800  
                      103            60                                         
                                                                                
        106 Valli                Jackson                                        
VJACKSON                  1.590.555.0106       05-FEB-16 IT_PROG          4800  
                      103            60                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        107 Diana                Nguyen                                         
DNGUYEN                   1.590.555.0107       07-FEB-17 IT_PROG          4200  
                      103            60                                         
                                                                                
        108 Nancy                Gruenberg                                      
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008  
                      101           100                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        109 Daniel               Faviet                                         
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000  
                      108           100                                         
                                                                                
        110 John                 Chen                                           
JCHEN                     1.515.555.0110       28-SEP-15 FI_ACCOUNT       8200  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      108           100                                         
                                                                                
        111 Ismael               Sciarra                                        
ISCIARRA                  1.515.555.0111       30-SEP-15 FI_ACCOUNT       7700  
                      108           100                                         
                                                                                
        112 Jose Manuel          Urman                                          

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
JMURMAN                   1.515.555.0112       07-MAR-16 FI_ACCOUNT       7800  
                      108           100                                         
                                                                                
        113 Luis                 Popp                                           
LPOPP                     1.515.555.0113       07-DEC-17 FI_ACCOUNT       6900  
                      108           100                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        114 Den                  Li                                             
DLI                       1.515.555.0114       07-DEC-12 PU_MAN          11000  
                      100            30                                         
                                                                                
        115 Alexander            Khoo                                           
AKHOO                     1.515.555.0115       18-MAY-13 PU_CLERK         3100  
                      114            30                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        116 Shelli               Baida                                          
SBAIDA                    1.515.555.0116       24-DEC-15 PU_CLERK         2900  
                      114            30                                         
                                                                                
        117 Sigal                Tobias                                         
STOBIAS                   1.515.555.0117       24-JUL-15 PU_CLERK         2800  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      114            30                                         
                                                                                
        118 Guy                  Himuro                                         
GHIMURO                   1.515.555.0118       15-NOV-16 PU_CLERK         2600  
                      114            30                                         
                                                                                
        119 Karen                Colmenares                                     

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
KCOLMENA                  1.515.555.0119       10-AUG-17 PU_CLERK         2500  
                      114            30                                         
                                                                                
        120 Matthew              Weiss                                          
MWEISS                    1.650.555.0120       18-JUL-14 ST_MAN           8000  
                      100            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        121 Adam                 Fripp                                          
AFRIPP                    1.650.555.0121       10-APR-15 ST_MAN           8200  
                      100            50                                         
                                                                                
        122 Payam                Kaufling                                       
PKAUFLIN                  1.650.555.0122       01-MAY-13 ST_MAN           7900  
                      100            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        123 Shanta               Vollman                                        
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500  
                      100            50                                         
                                                                                
        124 Kevin                Mourgos                                        
KMOURGOS                  1.650.555.0124       16-NOV-17 ST_MAN           5800  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
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
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        128 Steven               Markle                                         
SMARKLE                   1.650.555.0128       08-MAR-18 ST_CLERK         2200  
                      120            50                                         
                                                                                
        129 Laura                Bissot                                         
LBISSOT                   1.650.555.0129       20-AUG-15 ST_CLERK         3300  
                      121            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        130 Mozhe                Atkinson                                       
MATKINSO                  1.650.555.0130       30-OCT-15 ST_CLERK         2800  
                      121            50                                         
                                                                                
        131 James                Marlow                                         
JAMRLOW                   1.650.555.0131       16-FEB-15 ST_CLERK         2500  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      121            50                                         
                                                                                
        132 TJ                   Olson                                          
TJOLSON                   1.650.555.0132       10-APR-17 ST_CLERK         2100  
                      121            50                                         
                                                                                
        133 Jason                Mallin                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
JMALLIN                   1.650.555.0133       14-JUN-14 ST_CLERK         3300  
                      122            50                                         
                                                                                
        134 Michael              Rogers                                         
MROGERS                   1.650.555.0134       26-AUG-16 ST_CLERK         2900  
                      122            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        135 Ki                   Gee                                            
KGEE                      1.650.555.0135       12-DEC-17 ST_CLERK         2400  
                      122            50                                         
                                                                                
        136 Hazel                Philtanker                                     
HPHILTAN                  1.650.555.0136       06-FEB-18 ST_CLERK         2200  
                      122            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        137 Renske               Ladwig                                         
RLADWIG                   1.650.555.0137       14-JUL-13 ST_CLERK         3600  
                      123            50                                         
                                                                                
        138 Stephen              Stiles                                         
SSTILES                   1.650.555.0138       26-OCT-15 ST_CLERK         3200  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      123            50                                         
                                                                                
        139 John                 Seo                                            
JSEO                      1.650.555.0139       12-FEB-16 ST_CLERK         2700  
                      123            50                                         
                                                                                
        140 Joshua               Patel                                          

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
JPATEL                    1.650.555.0140       06-APR-16 ST_CLERK         2500  
                      123            50                                         
                                                                                
        141 Trenna               Rajs                                           
TRAJS                     1.650.555.0141       17-OCT-13 ST_CLERK         3500  
                      124            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        142 Curtis               Davies                                         
CDAVIES                   1.650.555.0142       29-JAN-15 ST_CLERK         3100  
                      124            50                                         
                                                                                
        143 Randall              Matos                                          
RMATOS                    1.650.555.0143       15-MAR-16 ST_CLERK         2600  
                      124            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        144 Peter                Vargas                                         
PVARGAS                   1.650.555.0144       09-JUL-16 ST_CLERK         2500  
                      124            50                                         
                                                                                
        145 John                 Singh                                          
JSINGH                    44.1632.960000       01-OCT-14 SA_MAN          14000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
            .4        100            80                                         
                                                                                
        146 Karen                Partners                                       
KPARTNER                  44.1632.960001       05-JAN-15 SA_MAN          13500  
            .3        100            80                                         
                                                                                
        147 Alberto              Errazuriz                                      

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
AERRAZUR                  44.1632.960002       10-MAR-15 SA_MAN          12000  
            .3        100            80                                         
                                                                                
        148 Gerald               Cambrault                                      
GCAMBRAU                  44.1632.960003       15-OCT-17 SA_MAN          11000  
            .3        100            80                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        149 Eleni                Zlotkey                                        
EZLOTKEY                  44.1632.960004       29-JAN-18 SA_MAN          10500  
            .2        100            80                                         
                                                                                
        150 Sean                 Tucker                                         
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000  
            .3        145            80                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        151 David                Bernstein                                      
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500  
           .25        145            80                                         
                                                                                
        152 Peter                Hall                                           
PHALL                     44.1632.960007       20-AUG-15 SA_REP           9000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
           .25        145            80                                         
                                                                                
        153 Christopher          Olsen                                          
COLSEN                    44.1632.960008       30-MAR-16 SA_REP           8000  
            .2        145            80                                         
                                                                                
        154 Nanette              Cambrault                                      

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
NCAMBRAU                  44.1632.960009       09-DEC-16 SA_REP           7500  
            .2        145            80                                         
                                                                                
        155 Oliver               Tuvault                                        
OTUVAULT                  44.1632.960010       23-NOV-17 SA_REP           7000  
           .15        145            80                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        156 Janette              King                                           
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000  
           .35        146            80                                         
                                                                                
        157 Patrick              Sully                                          
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500  
           .35        146            80                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        158 Allan                McEwen                                         
AMCEWEN                   44.1632.960013       01-AUG-14 SA_REP           9000  
           .35        146            80                                         
                                                                                
        159 Lindsey              Smith                                          
LSMITH                    44.1632.960014       10-MAR-15 SA_REP           8000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
            .3        146            80                                         
                                                                                
        160 Louise               Doran                                          
LDORAN                    44.1632.960015       15-DEC-15 SA_REP           7500  
            .3        146            80                                         
                                                                                
        161 Sarath               Sewall                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
SSEWALL                   44.1632.960016       03-NOV-16 SA_REP           7000  
           .25        146            80                                         
                                                                                
        162 Clara                Vishney                                        
CVISHNEY                  44.1632.960017       11-NOV-15 SA_REP          10500  
           .25        147            80                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        163 Danielle             Greene                                         
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500  
           .15        147            80                                         
                                                                                
        164 Mattea               Marvins                                        
MMARVINS                  44.1632.960019       24-JAN-18 SA_REP           7200  
            .1        147            80                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        165 David                Lee                                            
DLEE                      44.1632.960020       23-FEB-18 SA_REP           6800  
            .1        147            80                                         
                                                                                
        166 Sundar               Ande                                           
SANDE                     44.1632.960021       24-MAR-18 SA_REP           6400  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
            .1        147            80                                         
                                                                                
        167 Amit                 Banda                                          
ABANDA                    44.1632.960022       21-APR-18 SA_REP           6200  
            .1        147            80                                         
                                                                                
        168 Lisa                 Ozer                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
LOZER                     44.1632.960023       11-MAR-15 SA_REP          11500  
           .25        148            80                                         
                                                                                
        169 Harrison             Bloom                                          
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000  
            .2        148            80                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        170 Tayler               Fox                                            
TFOX                      44.1632.960025       24-JAN-16 SA_REP           9600  
            .2        148            80                                         
                                                                                
        171 William              Smith                                          
WSMITH                    44.1632.960026       23-FEB-17 SA_REP           7400  
           .15        148            80                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        172 Elizabeth            Bates                                          
EBATES                    44.1632.960027       24-MAR-17 SA_REP           7300  
           .15        148            80                                         
                                                                                
        173 Sundita              Kumar                                          
SKUMAR                    44.1632.960028       21-APR-18 SA_REP           6100  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
            .1        148            80                                         
                                                                                
        174 Ellen                Abel                                           
EABEL                     44.1632.960029       11-MAY-14 SA_REP          11000  
            .3        149            80                                         
                                                                                
        175 Alyssa               Hutton                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
AHUTTON                   44.1632.960030       19-MAR-15 SA_REP           8800  
           .25        149            80                                         
                                                                                
        176 Jonathon             Taylor                                         
JTAYLOR                   44.1632.960031       24-MAR-16 SA_REP           8600  
            .2        149            80                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        177 Jack                 Livingston                                     
JLIVINGS                  44.1632.960032       23-APR-16 SA_REP           8400  
            .2        149            80                                         
                                                                                
        178 Kimberely            Grant                                          
KGRANT                    44.1632.960033       24-MAY-17 SA_REP           7000  
           .15        149                                                       

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        179 Charles              Johnson                                        
CJOHNSON                  44.1632.960034       04-JAN-18 SA_REP           6200  
            .1        149            80                                         
                                                                                
        180 Winston              Taylor                                         
WTAYLOR                   1.650.555.0145       24-JAN-16 SH_CLERK         3200  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      120            50                                         
                                                                                
        181 Jean                 Fleaur                                         
JFLEAUR                   1.650.555.0146       23-FEB-16 SH_CLERK         3100  
                      120            50                                         
                                                                                
        182 Martha               Sullivan                                       

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
MSULLIVA                  1.650.555.0147       21-JUN-17 SH_CLERK         2500  
                      120            50                                         
                                                                                
        183 Girard               Geoni                                          
GGEONI                    1.650.555.0148       03-FEB-18 SH_CLERK         2800  
                      120            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        184 Nandita              Sarchand                                       
NSARCHAN                  1.650.555.0149       27-JAN-14 SH_CLERK         4200  
                      121            50                                         
                                                                                
        185 Alexis               Bull                                           
ABULL                     1.650.555.0150       20-FEB-15 SH_CLERK         4100  
                      121            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        186 Julia                Dellinger                                      
JDELLING                  1.650.555.0151       24-JUN-16 SH_CLERK         3400  
                      121            50                                         
                                                                                
        187 Anthony              Cabrio                                         
ACABRIO                   1.650.555.0152       07-FEB-17 SH_CLERK         3000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      121            50                                         
                                                                                
        188 Kelly                Chung                                          
KCHUNG                    1.650.555.0153       14-JUN-15 SH_CLERK         3800  
                      122            50                                         
                                                                                
        189 Jennifer             Dilly                                          

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
JDILLY                    1.650.555.0154       13-AUG-15 SH_CLERK         3600  
                      122            50                                         
                                                                                
        190 Timothy              Venzl                                          
TVENZL                    1.650.555.0155       11-JUL-16 SH_CLERK         2900  
                      122            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        191 Randall              Perkins                                        
RPERKINS                  1.650.555.0156       19-DEC-17 SH_CLERK         2500  
                      122            50                                         
                                                                                
        192 Sarah                Bell                                           
SBELL                     1.650.555.0157       04-FEB-14 SH_CLERK         4000  
                      123            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        193 Britney              Everett                                        
BEVERETT                  1.650.555.0158       03-MAR-15 SH_CLERK         3900  
                      123            50                                         
                                                                                
        194 Samuel               McLeod                                         
SMCLEOD                   1.650.555.0159       01-JUL-16 SH_CLERK         3200  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      123            50                                         
                                                                                
        195 Vance                Jones                                          
VJONES                    1.650.555.0160       17-MAR-17 SH_CLERK         2800  
                      123            50                                         
                                                                                
        196 Alana                Walsh                                          

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
AWALSH                    1.650.555.0161       24-APR-16 SH_CLERK         3100  
                      124            50                                         
                                                                                
        197 Kevin                Feeney                                         
KFEENEY                   1.650.555.0162       23-MAY-16 SH_CLERK         3000  
                      124            50                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        198 Donald               OConnell                                       
DOCONNEL                  1.650.555.0163       21-JUN-17 SH_CLERK         2600  
                      124            50                                         
                                                                                
        199 Douglas              Grant                                          
DGRANT                    1.650.555.0164       13-JAN-18 SH_CLERK         2600  
                      124            50                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        200 Jennifer             Whalen                                         
JWHALEN                   1.515.555.0165       17-SEP-13 AD_ASST          4400  
                      101            10                                         
                                                                                
        201 Michael              Martinez                                       
MMARTINE                  1.515.555.0166       17-FEB-14 MK_MAN          13000  

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                      100            20                                         
                                                                                
        202 Pat                  Davis                                          
PDAVIS                    1.603.555.0167       17-AUG-15 MK_REP           6000  
                      201            20                                         
                                                                                
        203 Susan                Jacobs                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
SJACOBS                   1.515.555.0168       07-JUN-12 HR_REP           6500  
                      101            40                                         
                                                                                
        204 Hermann              Brown                                          
HBROWN                    1.515.555.0169       07-JUN-12 PR_REP          10000  
                      101            70                                         
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
        205 Shelley              Higgins                                        
SHIGGINS                  1.515.555.0170       07-JUN-12 AC_MGR          12008  
                      101           110                                         
                                                                                
        206 William              Gietz                                          
WGIETZ                    1.515.555.0171       07-JUN-12 AC_ACCOUNT       8300  
                      205           110                                         

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                                                                
        207 Jack                 Jill                                           
jack@gmail.com                                 18-JUN-25 PU_CLERK               
                                     10                                         
                                                                                
        208 Ana                  Gill                                           
ana@yahoo.com                                  18-JUN-25 PU_CLERK               

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY  
------------------------- -------------------- --------- ---------- ----------  
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                         
-------------- ---------- -------------                                         
                                     20                                         
                                                                                

109 rows selected.

SQL> 
SQL> select * from user_views
  2  ;

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
VW_EMPVIEW                                                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
         27                                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select empid,ename from emp                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select empid,ename from emp                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
N N N DEFINER                  1                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
USING_NLS_COMP                                                                  

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
NO  NO  NO  NO  NO  NO  NO                                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
VW_MGRVIEWEMP                                                                   

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
         37                                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select "EMPID","ENAME","SAL" from emp                                           

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select "EMPID","ENAME","SAL" from emp                                           

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
N N N DEFINER                  1                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
USING_NLS_COMP                                                                  

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
NO  NO  NO  NO  NO  NO  NO                                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
VW_CHECKVIEWEMPLOYEES                                                           

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
        146                                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select employee_id,first_name,last_name,email,hire_date,job_id,department_id fro

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select employee_id,first_name,last_name,email,hire_date,job_id,department_id fro

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
m employees                                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
    where department_id in(10,20)                                               

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
   with check option                                                            

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
N N N DEFINER                  1                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
USING_NLS_COMP                                                                  

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
NO  NO  NO  NO  NO  NO  NO                                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
VW_SECOND                                                                       

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
         42                                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select empid,ename from emp with read only                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
select empid,ename from emp with read only                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
N Y N DEFINER                  1                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
USING_NLS_COMP                                                                  

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
NO  NO  NO  NO  NO  NO  NO                                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
VW_SAL_ROLLUP                                                                   

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
        125                                                                     

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
(select department_id,sum(salary) as totalSal from employees                    

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
 where department_i                                                             

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
(select department_id,sum(salary) as totalSal from employees                    

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
 where department_id in(10,20)                                                  

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
 group by rollup(department_id)                                                 

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
)                                                                               

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
N N N DEFINER                  1                                                

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
USING_NLS_COMP                                                                  

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
NO  NO  NO  NO  NO  NO  NO                                                      

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
TEXT_LENGTH                                                                     
-----------                                                                     
TEXT                                                                            
--------------------------------------------------------------------------------
TEXT_VC                                                                         
--------------------------------------------------------------------------------
TYPE_TEXT_LENGTH                                                                
----------------                                                                
TYPE_TEXT                                                                       
--------------------------------------------------------------------------------
OID_TEXT_LENGTH                                                                 
---------------                                                                 
OID_TEXT                                                                        
--------------------------------------------------------------------------------
VIEW_TYPE_OWNER                                                                 
--------------------------------------------------------------------------------
VIEW_TYPE                                                                       
--------------------------------------------------------------------------------
SUPERVIEW_NAME                                                                  
--------------------------------------------------------------------------------
E R C BEQUEATH     ORIGIN_CON_ID                                                
- - - ------------ -------------                                                
DEFAULT_COLLATION                                                               
--------------------------------------------------------------------------------
CON CON EXT EXT HAS ADM PDB                                                     
--- --- --- --- --- --- ---                                                     
                                                                                

SQL> 
SQL> ed
Wrote file afiedt.buf

  1* select view_name from user_views
  2  /

VIEW_NAME                                                                       
--------------------------------------------------------------------------------
VW_MGRVIEWEMP                                                                   
VW_EMPVIEW                                                                      
VW_SECOND                                                                       
VW_SAL_ROLLUP                                                                   
VW_CHECKVIEWEMPLOYEES                                                           

SQL> create or replace synonym v2_chekemp for vw_checkViewemployees;

Synonym created.

SQL> select * from  v2_checkemp;
select * from  v2_checkemp
               *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from  v2_chekemp;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     HIRE_DATE JOB_ID     DEPARTMENT_ID                    
------------------------- --------- ---------- -------------                    
        200 Jennifer             Whalen                                         
JWHALEN                   17-SEP-13 AD_ASST               10                    
                                                                                
        207 Jack                 Jill                                           
jack@gmail.com            18-JUN-25 PU_CLERK              10                    
                                                                                
        201 Michael              Martinez                                       
MMARTINE                  17-FEB-14 MK_MAN                20                    
                                                                                

EMPLOYEE_ID FIRST_NAME           LAST_NAME                                      
----------- -------------------- -------------------------                      
EMAIL                     HIRE_DATE JOB_ID     DEPARTMENT_ID                    
------------------------- --------- ---------- -------------                    
        202 Pat                  Davis                                          
PDAVIS                    17-AUG-15 MK_REP                20                    
                                                                                
        208 Ana                  Gill                                           
ana@yahoo.com             18-JUN-25 PU_CLERK              20                    
                                                                                

SQL> 
SQL> create public synonym c1 for employees;
create public synonym c1 for employees
*
ERROR at line 1:
ORA-01031: insufficient privileges 


SQL> connect / as sysdba;
Connected.
SQL> grant create sequence to C##hr;

Grant succeeded.

SQL> connect c##hr/hr;
Connected.
SQL> clear scr

SQL> create sequence seq_products
  2  start with 21
  3  increment by 1
  4  maxvalue 50
  5  .
SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_products
  2  start with 21
  3  increment by 1
  4* maxvalue 25
SQL> /

Sequence created.

SQL> select seq_products.nextval from dua;
select seq_products.nextval from dua
                                 *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* select seq_products.nextval from dual
SQL> /

   NEXTVAL                                                                      
----------                                                                      
        21                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        22                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        23                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        24                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        25                                                                      

SQL> /
select seq_products.nextval from dual
*
ERROR at line 1:
ORA-08004: sequence SEQ_PRODUCTS.NEXTVAL exceeds MAXVALUE and cannot be 
instantiated 


SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_products
  2     start with 21
  3     increment by 1
  4     maxvalue 25
  5* cycle
SQL> /
create sequence seq_products
                *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> ed
Wrote file afiedt.buf

  1  create or replace sequence seq_products
  2     start with 21
  3     increment by 1
  4     maxvalue 25
  5* cycle
SQL> /
create or replace sequence seq_products
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> drop sequence seq_products;

Sequence dropped.

SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_products
  2     start with 21
  3     increment by 1
  4   maxvalue 25
  5* cycle
SQL> /

Sequence created.

SQL> select seq_products.nextval from dual;

   NEXTVAL                                                                      
----------                                                                      
        21                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        22                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        23                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        24                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        25                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
         1                                                                      

SQL> drop sequence seq_products;

Sequence dropped.

SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_products
  2      start with 21
  3      increment by 1
  4     maxvalue 25
  5     minvalue 21
  6* cycle
SQL> /
create sequence seq_products
*
ERROR at line 1:
ORA-04013: number to CACHE must be less than one cycle 


SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_products
  2      start with 21
  3      increment by 1
  4     maxvalue 25
  5     cycle
  6* minvalue 21
SQL> /
create sequence seq_products
*
ERROR at line 1:
ORA-04013: number to CACHE must be less than one cycle 


SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_products
  2      start with 21
  3      increment by 1
  4     maxvalue 25
  5     cycle
  6  minvalue 21
  7* nocache
SQL> /

Sequence created.

SQL> select seq_products.nextval from dual;

   NEXTVAL                                                                      
----------                                                                      
        21                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        22                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        23                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        24                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        25                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        21                                                                      

SQL> 
SQL> ed
Wrote file afiedt.buf

  1* select seq_products.nextval from dual
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_empdata
  2  start with 100
  3  decrement by 1
  4  minvalue 95
  5  maxvalue 96
  6  cycle
  7* nocache
SQL> /
decrement by 1
*
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_empdata
  2  start with 100
  3  increment by -1
  4  minvalue 95
  5  maxvalue 96
  6  cycle
  7* nocache
SQL> /
create sequence seq_empdata
*
ERROR at line 1:
ORA-04008: START WITH cannot be more than MAXVALUE 


SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_empdata
  2  start with 100
  3  increment by -1
  4  minvalue 95
  5  maxvalue 100
  6  cycle
  7* nocache
SQL> /

Sequence created.

SQL> select seq_empdata.nextval from dual;

   NEXTVAL                                                                      
----------                                                                      
       100                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        99                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        98                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        97                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        96                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
        95                                                                      

SQL> /

   NEXTVAL                                                                      
----------                                                                      
       100                                                                      

SQL> 
SQL> select seq_empdata.currval from dual;

   CURRVAL                                                                      
----------                                                                      
       100                                                                      

SQL> ed
Wrote file afiedt.buf

  1* select seq_empdata.nextval from dual
SQL> /

   NEXTVAL                                                                      
----------                                                                      
        99                                                                      

SQL> ed
Wrote file afiedt.buf

  1  create sequence seq_magic
  2  start with 11111
  3  increment by 10
  4  maxvalue 90000
  5  nocycle
  6* cache 5
SQL> /

Sequence created.

SQL> create sequence emp_empidSequence
  2  start with 3
  3  increment by 1
  4  nomaxvalue;

Sequence created.

SQL> insert into emp values (emp_empidsequence.nextval,'Arpita',10000);

1 row created.

SQL> select * from emp;

     EMPID ENAME                       SAL                                      
---------- -------------------- ----------                                      
         1 Seema                                                                
         2 Danish                                                               
         5 Arpita                    10000                                      

SQL> /

     EMPID ENAME                       SAL                                      
---------- -------------------- ----------                                      
         1 Seema                                                                
         2 Danish                                                               
         3 Arpita                    10000                                      
         4 Hari                      20000                                      
         5 Arpita                    10000                                      

SQL> spool off
