SQL> create table orders
  2  (orderid number(2) primary key,
  3  orderdate date,
  4  custid number(2),
  5  empid number(2));

Table created.

SQL> create table order_details
  2  (orderid number(2) foreign key references orders(orderid) on delete cascade,
  3  productid number(2
  4  .
SQL> ed
Wrote file afiedt.buf

  1  create table order_details
  2  (orderid number(2) foreign key references orders(orderid) on delete cascade,
  3  productid number(3) foreign key references products(productid),
  4  qty number(3),
  5  unitprice number(10,2),
  6* shippingid number(2))
SQL> /
(orderid number(2) foreign key references orders(orderid) on delete cascade,
                   *
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  create table order_details
  2  (
  3  orderid number(2) constraint fk_orders_ordDetails foreign key references orders(orderid) on delete cascade,
  4  productid number(3) constraint fk_prod_ordDetails foreign key references products(productid),
  5  qty number(3),
  6  unitprice number(10,2),
  7  shippingid number(2)
  8* )
SQL> /
orderid number(2) constraint fk_orders_ordDetails foreign key references orders(orderid) on delete cascade,
                  *
ERROR at line 3:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  create table order_details
  2  (
  3  orderid number(2),
  4  productid number(3),
  5  qty number(3),
  6  unitprice number(10,2),
  7  shippingid number(2),
  8  constraint fk_orders_ordDetails foreign key references orders(orderid) on delete cascade,
  9  constraint fk_prod_ordDetails foreign key references products(productid)
 10* )
 11  /
constraint fk_orders_ordDetails foreign key references orders(orderid) on delete cascade,
                                            *
ERROR at line 8:
ORA-00906: missing left parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  create table order_details
  2  (
  3  orderid number(2),
  4  productid number(3),
  5  qty number(3),
  6  unitprice number(10,2),
  7  shippingid number(2),
  8  constraint fk_orders_ordDetails foreign key(orderid) references orders(orderid) on delete cascade,
  9  constraint fk_prod_ordDetails foreign key(productid) references products(productid)
 10* )
SQL> /

Table created.

SQL> 
SQL> s
SP2-0042: unknown command "s" - rest of line ignored.
SQL> select * from products;

no rows selected

SQL> desc product
ERROR:
ORA-04043: object product does not exist 


SQL> desc products
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCTID                                 NOT NULL NUMBER(3)
 PRODUCTNAME                               NOT NULL VARCHAR2(30)
 UNITPRICE                                 NOT NULL NUMBER(10,2)
 CATEGORYID                                         NUMBER(2)
 UNITMEASUREMENT                           NOT NULL VARCHAR2(30)
 SUPPLIERID                                NOT NULL NUMBER(2)

SQL> insert into products values(1,'Tea',10,1,'per unit',1);
insert into products values(1,'Tea',10,1,'per unit',1)
*
ERROR at line 1:
ORA-02291: integrity constraint (C##HR.FK_SUPPLIER_PRODUCTS) violated - parent 
key not found 


SQL> select * from suppliers;

no rows selected

SQL> desc suppliers
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SUPPLIERID                                NOT NULL NUMBER(2)
 COMPANYNAME                                        VARCHAR2(20)
 CITY                                               VARCHAR2(20)
 COUNTRY                                            VARCHAR2(30)

SQL> insert into suppliers values(10,'ABC','Pune','India');

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into suppliers(supplierid,companyname,city) values(20,'PQR','Pune')
SQL> /

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into products values(1,'Tea',10,1,'per unit',10);
SQL> /
insert into products values(1,'Tea',10,1,'per unit',10);
                                                       *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1* insert into products values(1,'Tea',10,1,'per unit',10)
SQL> /

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into products values(2,'Coffee',20,1,'per unit',10)
SQL> 
SQL> /

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into products values(3,'Indian',100,2,'per unit',20)
SQL> /

1 row created.

SQL> select * from products;

 PRODUCTID PRODUCTNAME                     UNITPRICE CATEGORYID                 
---------- ------------------------------ ---------- ----------                 
UNITMEASUREMENT                SUPPLIERID                                       
------------------------------ ----------                                       
         1 Tea                                    10          1                 
per unit                               10                                       
                                                                                
         2 Coffee                                 20          1                 
per unit                               10                                       
                                                                                
         3 Indian                                100          2                 
per unit                               20                                       
                                                                                

SQL> set lines 200
SQL> /

 PRODUCTID PRODUCTNAME                     UNITPRICE CATEGORYID UNITMEASUREMENT                SUPPLIERID                                                                                               
---------- ------------------------------ ---------- ---------- ------------------------------ ----------                                                                                               
         1 Tea                                    10          1 per unit                               10                                                                                               
         2 Coffee                                 20          1 per unit                               10                                                                                               
         3 Indian                                100          2 per unit                               20                                                                                               

SQL> desc orders
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ORDERID                                                                                                           NOT NULL NUMBER(2)
 ORDERDATE                                                                                                                  DATE
 CUSTID                                                                                                                     NUMBER(2)
 EMPID                                                                                                                      NUMBER(2)

SQL> insert into orders values (11,sysdate,1,1);

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into orders values (12,sysdate,2,2)
SQL> /

1 row created.

SQL> desc order_details
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ORDERID                                                                                                                    NUMBER(2)
 PRODUCTID                                                                                                                  NUMBER(3)
 QTY                                                                                                                        NUMBER(3)
 UNITPRICE                                                                                                                  NUMBER(10,2)
 SHIPPINGID                                                                                                                 NUMBER(2)

SQL> insert into order_Details values(11,1,10,20,1);

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into order_Details values(11,2,10,20,1)
SQL> /

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into order_Details values(12,2,20,20,1)
SQL> /

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into order_Details values(12,3,40,20,1)
SQL> 
SQL> /

1 row created.

SQL> select * from orders
  2  ;

   ORDERID ORDERDATE     CUSTID      EMPID                                                                                                                                                              
---------- --------- ---------- ----------                                                                                                                                                              
        11 18-JUN-25          1          1                                                                                                                                                              
        12 18-JUN-25          2          2                                                                                                                                                              

SQL> select * from order_Details;

   ORDERID  PRODUCTID        QTY  UNITPRICE SHIPPINGID                                                                                                                                                  
---------- ---------- ---------- ---------- ----------                                                                                                                                                  
        11          1         10         20          1                                                                                                                                                  
        11          2         10         20          1                                                                                                                                                  
        12          2         20         20          1                                                                                                                                                  
        12          3         40         20          1                                                                                                                                                  

SQL> delete from orders
  2  where orderid=11;

1 row deleted.

SQL> select * from order_Details;

   ORDERID  PRODUCTID        QTY  UNITPRICE SHIPPINGID                                                                                                                                                  
---------- ---------- ---------- ---------- ----------                                                                                                                                                  
        12          2         20         20          1                                                                                                                                                  
        12          3         40         20          1                                                                                                                                                  

SQL> select * from orders;

   ORDERID ORDERDATE     CUSTID      EMPID                                                                                                                                                              
---------- --------- ---------- ----------                                                                                                                                                              
        12 18-JUN-25          2          2                                                                                                                                                              

SQL> create table emp(empid number(3), unique, not null
  2  .
SQL> ed
Wrote file afiedt.buf

  1  create table emp(empid number(3), 
  2  ename varchar(20),
  3  sal number(10,2),
  4* constraint pk_emp unique, not null)
SQL> /
constraint pk_emp unique, not null)
                        *
ERROR at line 4:
ORA-00906: missing left parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  create table emp(empid number(3), 
  2  ename varchar(20),
  3  sal number(10,2),
  4* constraint pk_emp unique and not null)
SQL> /
constraint pk_emp unique and not null)
                         *
ERROR at line 4:
ORA-00906: missing left parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  create table emp(empid number(3), 
  2  ename varchar(20),
  3  sal number(10,2),
  4* constraint pk_emp (unique,not null))
SQL> /
constraint pk_emp (unique,not null))
                  *
ERROR at line 4:
ORA-00904: : invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  create table emp(empid number(3)unique not null, 
  2  ename varchar(20),
  3* sal number(10,2),
  4  /
sal number(10,2),
                *
ERROR at line 3:
ORA-00904: : invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  create table emp(empid number(3)unique not null, 
  2  ename varchar(20),
  3* sal number(10,2))
SQL> /

Table created.

SQL> ed
Wrote file afiedt.buf

  1  create table projects(
  2  projectid number(2),
  3  empid number(3), 
  4  duration number(3),
  5  technology varchar2(40),
  6  constraint c_fkemp_proj foreign key(empid) references emp(empid)
  7* )
SQL> /

Table created.

SQL> drop table projects;

Table dropped.

SQL> ed
Wrote file afiedt.buf

  1  create table projects(
  2      projectid number(2),
  3      empid number(3),
  4      duration number(3),
  5      technology varchar2(40),
  6      constraint c_fkemp_proj foreign key(empid) references emp(empid) on delete cascade
  7*    )
SQL> /

Table created.

SQL> 
SQL> create view vw_empview
  2  
SQL> ed
Wrote file afiedt.buf

  1  create view vw_empview
  2  (employeeid, employeename)
  3  as
  4* select empid,ename from emp
SQL> /
create view vw_empview
            *
ERROR at line 1:
ORA-01031: insufficient privileges 


SQL> connect / as sysdba;
Connected.
SQL> grant create view,alter view to c##hr;
grant create view,alter view to c##hr
                  *
ERROR at line 1:
ORA-00990: missing or invalid privilege 


SQL> grant view to c##hr;
grant view to c##hr
      *
ERROR at line 1:
ORA-01919: role 'VIEW' does not exist 


SQL> grant create view to c##hr;

Grant succeeded.

SQL> grant alter view to c##hr;
grant alter view to c##hr
      *
ERROR at line 1:
ORA-00990: missing or invalid privilege 


SQL> grant drop view to c##hr;
grant drop view to c##hr
      *
ERROR at line 1:
ORA-00990: missing or invalid privilege 


SQL> conn c##hr/hr
Connected.
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create view vw_empview
  2    (employeeid, employeename)
  3     as
  4*  select empid,ename from emp
SQL> /

View created.

SQL> select * from emp;

no rows selected

SQL> select * from vw_empview;

no rows selected

SQL> insert into vw_empview values (1,'Seema');

1 row created.

SQL> select * from vw_empview;

EMPLOYEEID EMPLOYEENAME                                                                                                                                                                                 
---------- --------------------                                                                                                                                                                         
         1 Seema                                                                                                                                                                                        

SQL> select * from emp;

     EMPID ENAME                       SAL                                                                                                                                                              
---------- -------------------- ----------                                                                                                                                                              
         1 Seema                                                                                                                                                                                        

SQL> create view vw_mgrviewEmp
  2  as select * from emp;

View created.

SQL> select * from emp;

     EMPID ENAME                       SAL                                                                                                                                                              
---------- -------------------- ----------                                                                                                                                                              
         1 Seema                                                                                                                                                                                        

SQL> select * from vw_mgrviewemp;

     EMPID ENAME                       SAL                                                                                                                                                              
---------- -------------------- ----------                                                                                                                                                              
         1 Seema                                                                                                                                                                                        

SQL> create view vw_readonly
  2  (employeeid,employeename)
  3  as
  4  select empid,ename from emp
  5  .
SQL> ed
Wrote file afiedt.buf

  1  create view vw_second 
  2  (employeeid,employeename)
  3  as
  4  select empid,ename from emp
  5* readonly
SQL> /

View created.

SQL> select * from vw_second;

EMPLOYEEID EMPLOYEENAME                                                                                                                                                                                 
---------- --------------------                                                                                                                                                                         
         1 Seema                                                                                                                                                                                        

SQL> insert into vw_second values (2,'Danish');

1 row created.

SQL> select * from vw_second;

EMPLOYEEID EMPLOYEENAME                                                                                                                                                                                 
---------- --------------------                                                                                                                                                                         
         1 Seema                                                                                                                                                                                        
         2 Danish                                                                                                                                                                                       

SQL> select empid,ename from emp ;

     EMPID ENAME                                                                                                                                                                                        
---------- --------------------                                                                                                                                                                         
         1 Seema                                                                                                                                                                                        
         2 Danish                                                                                                                                                                                       

SQL> drop view vw_second;

View dropped.

SQL> create view vw_second
  2  as
  3  select empid,ename from emp with read only;

View created.

SQL> insert into vw_second values (3,'Manish');
insert into vw_second values (3,'Manish')
*
ERROR at line 1:
ORA-42399: cannot perform a DML operation on a read-only view 


SQL> select * from vw_second;

     EMPID ENAME                                                                                                                                                                                        
---------- --------------------                                                                                                                                                                         
         1 Seema                                                                                                                                                                                        
         2 Danish                                                                                                                                                                                       

SQL> ed
Wrote file afiedt.buf

  1  create view vw_sal_rollUp
  2  as
  3  (select department_id,sum(salary) as totalSal from employees
  4   where department_id in(10,20)
  5   group by rollup(department_id)
  6* )
SQL> /

View created.

SQL> select * from vw_sal_rollup;

DEPARTMENT_ID   TOTALSAL                                                                                                                                                                                
------------- ----------                                                                                                                                                                                
           10       4400                                                                                                                                                                                
           20      19000                                                                                                                                                                                
                   23400                                                                                                                                                                                

SQL> ed
Wrote file afiedt.buf

  1  create view vw_checkViewEmployees
  2  as
  3  select employee_id,first_name,department_id from employees
  4  where department_id in(10,20)
  5* with check option
SQL> /

View created.

SQL> select * from vw_checkviewemployees;

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID                                                                                                                                                          
----------- -------------------- -------------                                                                                                                                                          
        200 Jennifer                        10                                                                                                                                                          
        201 Michael                         20                                                                                                                                                          
        202 Pat                             20                                                                                                                                                          

SQL> insert into vw_checkviewemployees values (207,'Jack',10);
insert into vw_checkviewemployees values (207,'Jack',10)
*
ERROR at line 1:
ORA-01400: cannot insert NULL into ("C##HR"."EMPLOYEES"."LAST_NAME") 


SQL> desc employees
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 EMPLOYEE_ID                                                                                                       NOT NULL NUMBER(6)
 FIRST_NAME                                                                                                                 VARCHAR2(20)
 LAST_NAME                                                                                                         NOT NULL VARCHAR2(25)
 EMAIL                                                                                                             NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                                                                               VARCHAR2(20)
 HIRE_DATE                                                                                                         NOT NULL DATE
 JOB_ID                                                                                                            NOT NULL VARCHAR2(10)
 SALARY                                                                                                                     NUMBER(8,2)
 COMMISSION_PCT                                                                                                             NUMBER(2,2)
 MANAGER_ID                                                                                                                 NUMBER(6)
 DEPARTMENT_ID                                                                                                              NUMBER(4)

SQL> set lines 100
SQL> /
insert into vw_checkviewemployees values (207,'Jack',10)
*
ERROR at line 1:
ORA-01400: cannot insert NULL into ("C##HR"."EMPLOYEES"."LAST_NAME") 


SQL> desc employees
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 EMPLOYEE_ID                                           NOT NULL NUMBER(6)
 FIRST_NAME                                                     VARCHAR2(20)
 LAST_NAME                                             NOT NULL VARCHAR2(25)
 EMAIL                                                 NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                   VARCHAR2(20)
 HIRE_DATE                                             NOT NULL DATE
 JOB_ID                                                NOT NULL VARCHAR2(10)
 SALARY                                                         NUMBER(8,2)
 COMMISSION_PCT                                                 NUMBER(2,2)
 MANAGER_ID                                                     NUMBER(6)
 DEPARTMENT_ID                                                  NUMBER(4)

SQL> 
SQL> drop view vw_checkviewemployees;

View dropped.

SQL> ed
Wrote file afiedt.buf

  1  create or replace view vw_checkViewEmployees
  2     as
  3      select employee_id,first_name,last_name,email,hire_date,job_id,department_id from employees
  4      where department_id in(10,20)
  5*    with check option
SQL> /

View created.

SQL> insert into vw_checkviewemployees values (207,'Jack','Jill','jack@gmail.com',sysdate,'PU_CLERK',10);

1 row created.

SQL> commit;

Commit complete.

SQL> select * from vw_checkviewemployees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     HIRE_DATE      
----------- -------------------- ------------------------- ------------------------- ---------      
JOB_ID     DEPARTMENT_ID                                                                            
---------- -------------                                                                            
        200 Jennifer             Whalen                    JWHALEN                   17-SEP-13      
AD_ASST               10                                                                            
                                                                                                    
        207 Jack                 Jill                      jack@gmail.com            18-JUN-25      
PU_CLERK              10                                                                            
                                                                                                    
        201 Michael              Martinez                  MMARTINE                  17-FEB-14      
MK_MAN                20                                                                            
                                                                                                    

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     HIRE_DATE      
----------- -------------------- ------------------------- ------------------------- ---------      
JOB_ID     DEPARTMENT_ID                                                                            
---------- -------------                                                                            
        202 Pat                  Davis                     PDAVIS                    17-AUG-15      
MK_REP                20                                                                            
                                                                                                    

SQL> insert into vw_checkviewemployees values (208,'Ana','Gill','ana@gmail.com',sysdate,'PU_CLERK',30);
insert into vw_checkviewemployees values (208,'Ana','Gill','ana@gmail.com',sysdate,'PU_CLERK',30)
            *
ERROR at line 1:
ORA-01402: view WITH CHECK OPTION where-clause violation 


SQL> ed
Wrote file afiedt.buf

  1* insert into vw_checkviewemployees values (208,'Ana','Gill','ana@gmail.com',sysdate,'PU_CLERK',20)
SQL> 
SQL> /

1 row created.

SQL> commit;

Commit complete.

SQL> select * from vw_checkviewemployees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     HIRE_DATE      
----------- -------------------- ------------------------- ------------------------- ---------      
JOB_ID     DEPARTMENT_ID                                                                            
---------- -------------                                                                            
        200 Jennifer             Whalen                    JWHALEN                   17-SEP-13      
AD_ASST               10                                                                            
                                                                                                    
        207 Jack                 Jill                      jack@gmail.com            18-JUN-25      
PU_CLERK              10                                                                            
                                                                                                    
        201 Michael              Martinez                  MMARTINE                  17-FEB-14      
MK_MAN                20                                                                            
                                                                                                    

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     HIRE_DATE      
----------- -------------------- ------------------------- ------------------------- ---------      
JOB_ID     DEPARTMENT_ID                                                                            
---------- -------------                                                                            
        202 Pat                  Davis                     PDAVIS                    17-AUG-15      
MK_REP                20                                                                            
                                                                                                    
        208 Ana                  Gill                      ana@gmail.com             18-JUN-25      
PU_CLERK              20                                                                            
                                                                                                    

SQL> update vw_checkviewemployees
  2  set email ='ana@yahoo.com'
  3  where employee_id=208;

1 row updated.

SQL> select * from vw_checkviewemployees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     HIRE_DATE      
----------- -------------------- ------------------------- ------------------------- ---------      
JOB_ID     DEPARTMENT_ID                                                                            
---------- -------------                                                                            
        200 Jennifer             Whalen                    JWHALEN                   17-SEP-13      
AD_ASST               10                                                                            
                                                                                                    
        207 Jack                 Jill                      jack@gmail.com            18-JUN-25      
PU_CLERK              10                                                                            
                                                                                                    
        201 Michael              Martinez                  MMARTINE                  17-FEB-14      
MK_MAN                20                                                                            
                                                                                                    

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     HIRE_DATE      
----------- -------------------- ------------------------- ------------------------- ---------      
JOB_ID     DEPARTMENT_ID                                                                            
---------- -------------                                                                            
        202 Pat                  Davis                     PDAVIS                    17-AUG-15      
MK_REP                20                                                                            
                                                                                                    
        208 Ana                  Gill                      ana@yahoo.com             18-JUN-25      
PU_CLERK              20                                                                            
                                                                                                    

SQL> spool off
