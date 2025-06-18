SQL> desc categories
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CATID                                     NOT NULL NUMBER(2)
 CATNAME                                            VARCHAR2(20)
 DESCRIPTION                                        VARCHAR2(50)

SQL> select * from categories;

     CATID CATNAME                                                              
---------- --------------------                                                 
DESCRIPTION                                                                     
--------------------------------------------------                              
         1 Beverages                                                            
Tea,Coffee,Cold Coffee                                                          
                                                                                
         2 Lunch                                                                
Indian,Continental,American                                                     
                                                                                

SQL> ed
Wrote file afiedt.buf

  1  alter table categories
  2* modify catname varchar2(20) constraint chk_nameLength check (len(catname)>2 and len(catname)<=20)
SQL> /
modify catname varchar2(20) constraint chk_nameLength check (len(catname)>2 and len(catname)<=20)
                                                                                *
ERROR at line 2:
ORA-00904: "LEN": invalid identifier 


SQL> select length(catname) from categories;

LENGTH(CATNAME)                                                                 
---------------                                                                 
              9                                                                 
              5                                                                 

SQL> ed
Wrote file afiedt.buf

  1  alter table categories
  2*    modify catname varchar2(20) constraint chk_nameLength check (length(catname)>2 and length(catname)<=20)
SQL> /

Table altered.

SQL> desc products
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCTID                                 NOT NULL NUMBER(3)
 PRODNAME                                  NOT NULL VARCHAR2(30)
 UNITPRICE                                          NUMBER(10,2)
 CATEGORYID                                         NUMBER(2)
 UNITMEASUREMENT                           NOT NULL VARCHAR2(30)
 SUPPLIERID                                NOT NULL NUMBER(2)

SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2*    modify unitprice number(10,2) constraint chk_unitPrice check (unitprice>0) 
SQL> /

Table altered.

SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2*    modify unitprice number(10,2) constraint c_unitPriceNotNull not null
SQL> /

Table altered.

SQL> desc products
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCTID                                 NOT NULL NUMBER(3)
 PRODNAME                                  NOT NULL VARCHAR2(30)
 UNITPRICE                                 NOT NULL NUMBER(10,2)
 CATEGORYID                                         NUMBER(2)
 UNITMEASUREMENT                           NOT NULL VARCHAR2(30)
 SUPPLIERID                                NOT NULL NUMBER(2)

SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2*    modify categoryid number(2) constraint c_catIdDefault default 0
SQL> /
   modify categoryid number(2) constraint c_catIdDefault default 0
                               *
ERROR at line 2:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2*    modify categoryid number(2) constraint c_catIdDefault default 1
SQL> /
   modify categoryid number(2) constraint c_catIdDefault default 1
                               *
ERROR at line 2:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* add discount number(2) constraint c_catIdDefault default 1
SQL> /
add discount number(2) constraint c_catIdDefault default 1
                       *
ERROR at line 2:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* add discount number(2) constraint c_catIdDefault set default 1
SQL> 
SQL> /
add discount number(2) constraint c_catIdDefault set default 1
                       *
ERROR at line 2:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* add discount number(2) constraint c_catIdDefault set default=1
SQL> 
SQL> /
add discount number(2) constraint c_catIdDefault set default=1
                       *
ERROR at line 2:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* modify categoryid number(2) default=1
SQL> /
modify categoryid number(2) default=1
                                   *
ERROR at line 2:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* modify categoryid number(2) default 1
SQL> /

Table altered.

SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* add discount_perc number(2) default 1
SQL> /

Table altered.

SQL> create table suppliers
  2  (supplierid number(2),
  3  companyName varchar2(20),
  4  city varchar2(20),
  5  country varchar2(30) default 'India');

Table created.

SQL> alter table supplier
  2  modify supplierid number(2) constraint pk_supplier primary key;
alter table supplier
*
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1  alter table suppliers
  2* modify supplierid number(2) constraint pk_supplier primary key
SQL> /

Table altered.

SQL> desc products
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCTID                                 NOT NULL NUMBER(3)
 PRODNAME                                  NOT NULL VARCHAR2(30)
 UNITPRICE                                 NOT NULL NUMBER(10,2)
 CATEGORYID                                         NUMBER(2)
 UNITMEASUREMENT                           NOT NULL VARCHAR2(30)
 SUPPLIERID                                NOT NULL NUMBER(2)
 DISCOUNT_PERC                                      NUMBER(2)

SQL> ed
Wrote file afiedt.buf

  1  alter table products	
  2* modify supplierid number(2) constraint fk_supplier_products foreign key references suppliers(supplierid)
SQL> /
modify supplierid number(2) constraint fk_supplier_products foreign key references suppliers(supplierid)
                            *
ERROR at line 2:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products	
  2* add constraint fk_supplier_products foreign key(supplierid) references suppliers(supplierid)
SQL> /

Table altered.

SQL> rename table products to Products
  2  ;
rename table products to Products
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> rename table products to Products_Data;
rename table products to Products_Data
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> rename  products to Products_Data table;
rename  products to Products_Data table
                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  alter  table products
  2* rename to ProductsData
SQL> /

Table altered.

SQL> ed
Wrote file afiedt.buf

  1  alter  table ProductsData
  2* rename to Products
SQL> /

Table altered.

SQL> 
SQL> desc products
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCTID                                 NOT NULL NUMBER(3)
 PRODNAME                                  NOT NULL VARCHAR2(30)
 UNITPRICE                                 NOT NULL NUMBER(10,2)
 CATEGORYID                                         NUMBER(2)
 UNITMEASUREMENT                           NOT NULL VARCHAR2(30)
 SUPPLIERID                                NOT NULL NUMBER(2)
 DISCOUNT_PERC                                      NUMBER(2)

SQL> alter table products
  2  rename prodname to productname;
rename prodname to productname
       *
ERROR at line 2:
ORA-14155: missing PARTITION, PARTITIONS, SUBPARTITION, or SUBPARTITIONS 
keyword 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* rename column prodname to productname
SQL> /

Table altered.

SQL> alter table products
  2  drop column discount_perc;

Table altered.

SQL> spool off
