create database emp;
use emp;
create table department(DEPTNO int primary key,  DNAME text, LOC text);
create table Employee(empno int primary key ,ENAME text ,JOB text ,HIREDATE text ,MANAGERID int ,SALARY int ,commission int ,DEPTNO int, foreign key(DEPTNO) references department(DEPTNO));
select * from Employee;
select * from department;

insert into department values(101,"developer","mumbai");
insert into Employee values(1010,"Hrushi","developing web apps","2022-06-13",200,40000,0,101);
insert into department values(104,"devops","hyd");
insert into Employee values(1014,"samir","clerk","2021-09-6",204,35000,657,104);


create table product(id bigint primary key, sku varchar(255),name varchar(255),description varchar(255),unitprice decimal(13,2),imageurl varchar(255),active bit(1),unitsinstock int,datecreated datetime(6),lastupdated datetime(6),categoryid bigint, foreign key(categoryid) references productcategory(categoryid));
create table productcategory(categoryid bigint primary key,categoryname varchar(255));
insert into product values(101,"none","santoor","body soap",20.0,"abc.png",1,100,"2022-05-06","2022-07-06",1011);
insert into productcategory values(1013,"food");
select * from product;
select * from productcategory;
alter table product drop active;