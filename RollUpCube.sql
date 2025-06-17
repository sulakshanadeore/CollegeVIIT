SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,manager_id,avg(salary),max(salary) from employees
  2    where department_id not in(10,20,40,50)
  3     group by job_id,department_id,manager_id
  4     having avg(salary)>5000
  5*    order by department_id
SQL> ed
Wrote file afiedt.buf

  1  select department_id,manager_id,avg(salary),max(salary) from employees
  2*  group by job_id
SQL> /
select department_id,manager_id,avg(salary),max(salary) from employees
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> ed
Wrote file afiedt.buf

  1  select department_id,manager_id,avg(salary),max(salary) from employees
  2*  group by department_id
SQL> 
SQL> /
select department_id,manager_id,avg(salary),max(salary) from employees
                     *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary),max(salary) from employees
  2*  group by department_id
SQL> /

DEPARTMENT_ID AVG(SALARY) MAX(SALARY)                                                                                   
------------- ----------- -----------                                                                                   
           50  3475.55556        8200                                                                                   
           40        6500        6500                                                                                   
          110       10154       12008                                                                                   
           90  19333.3333       24000                                                                                   
           30        4150       11000                                                                                   
           70       10000       10000                                                                                   
                     7000        7000                                                                                   
           10        4400        4400                                                                                   
           20        9500       13000                                                                                   
           60        5760        9000                                                                                   
          100  8601.33333       12008                                                                                   
           80  8955.88235       14000                                                                                   

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary) from employees
  2*  group by rollup(department_id)
SQL> /

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

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary) from employees
  2  where department_id in(10,20)
  3*  group by rollup(department_id)
SQL> 
SQL> /

DEPARTMENT_ID AVG(SALARY)                                                                                               
------------- -----------                                                                                               
           10        4400                                                                                               
           20        9500                                                                                               
                     7800                                                                                               

SQL> ed
Wrote file afiedt.buf

  1  select department_id,sum(salary) from employees
  2  where department_id in(10,20)
  3*  group by rollup(department_id)
SQL> /

DEPARTMENT_ID SUM(SALARY)                                                                                               
------------- -----------                                                                                               
           10        4400                                                                                               
           20       19000                                                                                               
                    23400                                                                                               

SQL> select 9500+4400 from dual;

 9500+4400                                                                                                              
----------                                                                                                              
     13900                                                                                                              

SQL> select avg(13900/2) from dual;

AVG(13900/2)                                                                                                            
------------                                                                                                            
        6950                                                                                                            

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary) from employees
  2      where department_id in(10,20)
  3* group by department_id
SQL> /

DEPARTMENT_ID AVG(SALARY)                                                                                               
------------- -----------                                                                                               
           10        4400                                                                                               
           20        9500                                                                                               

SQL> select avg(13900)/2 from dual;

AVG(13900)/2                                                                                                            
------------                                                                                                            
        6950                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1* select 13900/2 from dual
SQL> /

   13900/2                                                                                                              
----------                                                                                                              
      6950                                                                                                              

SQL> select 20900/2 from dual;

   20900/2                                                                                                              
----------                                                                                                              
     10450                                                                                                              

SQL> ed
Wrote file afiedt.buf

  1* select 20900/3 from dual
SQL> /

   20900/3                                                                                                              
----------                                                                                                              
6966.66667                                                                                                              

SQL> ed
Wrote file afiedt.buf

  1* select avg(20900/3) from dual
SQL> /

AVG(20900/3)                                                                                                            
------------                                                                                                            
  6966.66667                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary) from employees
  2  where department_id in(10,20)
  3* group by rollup (Department_id)
SQL> /

DEPARTMENT_ID AVG(SALARY)                                                                                               
------------- -----------                                                                                               
           10        4400                                                                                               
           20        9500                                                                                               
                     7800                                                                                               

SQL> select avg(9500+4400) from dual;

AVG(9500+4400)                                                                                                          
--------------                                                                                                          
         13900                                                                                                          

SQL> ed
Wrote file afiedt.buf

  1* select avg((9500+4400)/2) from dual
SQL> 
SQL> /

AVG((9500+4400)/2)                                                                                                      
------------------                                                                                                      
              6950                                                                                                      

SQL> select department_id,avg(salary) from employees
  2    2  where department_id in(10,20)
  3  ed
  4  /
  2  where department_id in(10,20)
  *
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select department_id,min(salary) from employees
  2*     where department_id in(10,20)
  3  /
select department_id,min(salary) from employees
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> ed
Wrote file afiedt.buf

  1  select department_id,min(salary) from employees
  2      where department_id in(10,20)
  3* group by rollup(department_id)
SQL> /

DEPARTMENT_ID MIN(SALARY)                                                                                               
------------- -----------                                                                                               
           10        4400                                                                                               
           20        6000                                                                                               
                     4400                                                                                               

SQL> ed
Wrote file afiedt.buf

  1  select department_id,job_id,min(salary) from employees
  2*  group by department_id,job_id
  3  /

DEPARTMENT_ID JOB_ID     MIN(SALARY)                                                                                    
------------- ---------- -----------                                                                                    
           90 AD_VP            17000                                                                                    
          100 FI_MGR           12008                                                                                    
           80 SA_REP            6100                                                                                    
              SA_REP            7000                                                                                    
           90 AD_PRES          24000                                                                                    
           20 MK_REP            6000                                                                                    
          110 AC_MGR           12008                                                                                    
           60 IT_PROG           4200                                                                                    
           30 PU_CLERK          2500                                                                                    
           80 SA_MAN           10500                                                                                    
           50 SH_CLERK          2500                                                                                    
           20 MK_MAN           13000                                                                                    
           30 PU_MAN           11000                                                                                    
           50 ST_CLERK          2100                                                                                    
           70 PR_REP           10000                                                                                    
          110 AC_ACCOUNT        8300                                                                                    
           50 ST_MAN            5800                                                                                    
          100 FI_ACCOUNT        6900                                                                                    
           10 AD_ASST           4400                                                                                    
           40 HR_REP            6500                                                                                    

20 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,job_id,min(salary) from employees
  2  where department_id in (10,20)
  3   group by department_id,job_id
  4* order by department_id
SQL> /

DEPARTMENT_ID JOB_ID     MIN(SALARY)                                                                                    
------------- ---------- -----------                                                                                    
           10 AD_ASST           4400                                                                                    
           20 MK_MAN           13000                                                                                    
           20 MK_REP            6000                                                                                    

SQL> ed
Wrote file afiedt.buf

  1  select department_id,job_id,min(salary) from employees
  2  where department_id in (10,20)
  3   group by cube(department_id,job_id)
  4* order by department_id
SQL> /

DEPARTMENT_ID JOB_ID     MIN(SALARY)                                                                                    
------------- ---------- -----------                                                                                    
           10 AD_ASST           4400                                                                                    
           10                   4400                                                                                    
           20 MK_MAN           13000                                                                                    
           20 MK_REP            6000                                                                                    
           20                   6000                                                                                    
              AD_ASST           4400                                                                                    
              MK_MAN           13000                                                                                    
              MK_REP            6000                                                                                    
                                4400                                                                                    

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,job_id,min(salary) from employees
  2  where department_id in (10,20,30)
  3   group by cube(department_id,job_id)
  4* order by department_id
SQL> /

DEPARTMENT_ID JOB_ID     MIN(SALARY)                                                                                    
------------- ---------- -----------                                                                                    
           10 AD_ASST           4400                                                                                    
           10                   4400                                                                                    
           20 MK_MAN           13000                                                                                    
           20 MK_REP            6000                                                                                    
           20                   6000                                                                                    
           30 PU_CLERK          2500                                                                                    
           30 PU_MAN           11000                                                                                    
           30                   2500                                                                                    
              AD_ASST           4400                                                                                    
              MK_MAN           13000                                                                                    
              MK_REP            6000                                                                                    
              PU_CLERK          2500                                                                                    
              PU_MAN           11000                                                                                    
                                2500                                                                                    

14 rows selected.

SQL> spool off
