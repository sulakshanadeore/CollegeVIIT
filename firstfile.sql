create table dept
   (deptno int primary key,
   dname varchar(20),
    loc varchar(20));

 create table emp
    (empno int primary key,
    ename varchar(20),
    sal int,
    deptno int foreign key references dept(deptno));

           



