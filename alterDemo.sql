SQL> create table categories
  2  (catid number(2) primary key,
  3  catname varchar2(20),
  4  description varchar2(50));

Table created.

SQL> insert into categories values(1,'Beverages','Tea,Coffee,Cold Coffee');

1 row created.

SQL> ed
Wrote file afiedt.buf

  1* insert into categories values(2,'Lunch','Indian,Continental,American')
SQL> /

1 row created.

SQL> create table Products
  2  (productid number(3) primary key,
  3  prodname varcha2(30),
  4  unitprice number(10,2),
  5  categoryid number(2) constraint fk_cat_prod foreign key references categories(catid)
  6  );
prodname varcha2(30),
                *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  create table Products
  2  (productid number(3) primary key,
  3  prodname varchar2(30),
  4  unitprice number(10,2),
  5  categoryid number(2) constraint fk_cat_prod foreign key references categories(catid)
  6* )
SQL> /
categoryid number(2) constraint fk_cat_prod foreign key references categories(catid)
                     *
ERROR at line 5:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  create table Products
  2  (productid number(3) primary key,
  3  prodname varchar2(30),
  4  unitprice number(10,2),
  5  categoryid number(2),
  6  constraint fk_cat_prod foreign key references categories(catid)
  7* )
SQL> /
constraint fk_cat_prod foreign key references categories(catid)
                                   *
ERROR at line 6:
ORA-00906: missing left parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  create table Products
  2  (productid number(3) primary key,
  3  prodname varchar2(30),
  4  unitprice number(10,2),
  5  categoryid number(2),
  6  constraint fk_cat_prod foreign key(categoryid) references categories(catid)
  7* )
SQL> /

Table created.

SQL> insert into products values(1,'Mixed Fruit Juice',40,null);

1 row created.

SQL> alter table products
  2  add constraint c_prodnotNull  prodname not null;
add constraint c_prodnotNull  prodname not null
                              *
ERROR at line 2:
ORA-02263: need to specify the datatype for this column 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2* add constraint c_prodnotNull  prodname varchar2(30) not null
SQL> 
SQL> /
add constraint c_prodnotNull  prodname varchar2(30) not null
                              *
ERROR at line 2:
ORA-01430: column being added already exists in table 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2  modify prodname varchar2(30) not null 
  3*  constraint c_prodnotNull  
SQL> 
SQL> /
 constraint c_prodnotNull  
 *
ERROR at line 3:
ORA-02253: constraint specification not allowed here 


SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2  modify prodname varchar2(30) 
  3*  constraint c_prodnotNull  not null 
SQL> 
SQL> /

Table altered.

SQL> desc products
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 PRODUCTID                                                         NOT NULL NUMBER(3)
 PRODNAME                                                          NOT NULL VARCHAR2(30)
 UNITPRICE                                                                  NUMBER(10,2)
 CATEGORYID                                                                 NUMBER(2)

SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2  add UnitMeasurement varchar2(30) 
  3*  constraint c_prodmeasure  not null 
SQL> /
alter table products
            *
ERROR at line 1:
ORA-01758: table must be empty to add mandatory (NOT NULL) column 


SQL> select * from products;

 PRODUCTID PRODNAME                        UNITPRICE CATEGORYID                                                         
---------- ------------------------------ ---------- ----------                                                         
         1 Mixed Fruit Juice                      40                                                                    

SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2*  add UnitMeasurement varchar2(30)
SQL> /

Table altered.

SQL> select * from products;

 PRODUCTID PRODNAME                        UNITPRICE CATEGORYID UNITMEASUREMENT                                         
---------- ------------------------------ ---------- ---------- ------------------------------                          
         1 Mixed Fruit Juice                      40                                                                    

SQL> update products
  2  set unitmeasurement='per litre'
  3  where productid=1;

1 row updated.

SQL> set unitmeasurement='per litre'
SP2-0735: unknown SET option beginning "unitmeasur..."
SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2     modify unitmeasurement varchar2(30)
  3*     constraint c_produnitnotNull  not null
SQL> /

Table altered.

SQL> desc products;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 PRODUCTID                                                         NOT NULL NUMBER(3)
 PRODNAME                                                          NOT NULL VARCHAR2(30)
 UNITPRICE                                                                  NUMBER(10,2)
 CATEGORYID                                                                 NUMBER(2)
 UNITMEASUREMENT                                                   NOT NULL VARCHAR2(30)

SQL> delete from products;

1 row deleted.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  alter table products
  2*    add supplierid number(2) not null
SQL> /

Table altered.

SQL> spool off
