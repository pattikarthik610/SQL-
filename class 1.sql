--- To create a database,show the database,drop of database---
create database DA_DS_k; #creating database
show databases; #shows databases
use DA_DS_k;
drop database DA_DS_k; #droping the database
create database Class1;
use Class;



CREATE database da_ds;
create database sample_1;
create database Karthik;

drop database class1;
drop database da_ds_k;
drop database elite_may;
show databases;


create database K;
use K;

drop database K;

create database tables;
use tables;
 
create table students_mark(
id int primary key,
student_name varchar(50),
gender varchar(10),
maths int,
hindi int,
gk int,
contact bigint
);
insert into students_mark(id,student_name,gender,maths,hindi,gk,contact) values
(1,"xyz","male",25,24,32,123456789),
(2,"abd","female",26,27,38,126756789);
select*from students_mark;
create table employee(
id int primary key,
emp_name varchar(50),
dep varchar(40),
salary bigint
);
show tables;
select* from employee;

select*from students_mark;











