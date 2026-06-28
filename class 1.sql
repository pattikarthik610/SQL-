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



use tables;
show tables;
select id,maths,hindi from students_mark;
select student_name,gender,contact from students_mark;
select distinct gender from students_mark;
select student_name from students_mark
where gender ="Male"
;
select*from students_mark
where hindi<60;
select*from students_mark
where hindi>30 and maths>30;
select*from students_mark
order by id desc;
select*from students_mark
order by  maths desc;
select*from students_mark
where not gender="male"
order by id desc;
select*from students_mark
where not gender="male"
order by id desc,hindi desc;
insert into students_mark(id,student_name,gender,maths,hindi,gk,contact) values
(4,"xyo","male",27,28,38,173456789),
(5,"aby","female",20,21,36,124756789),
(6,"ayo","male",22,27,38,173456799),
(7,"acy","female",29,23,36,124757789);
select*from students_mark;


Use tables;
Create TABLE students (
	student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_data date
);
insert into students(student_id,student_name,email,join_data) values
(1,"angle","angle@gmail.com","2025-08-15"),
(2,"raghav","raghav@gmail.com","2025-08-16"),
(3,"prashant","prashant@gmail.com","2025-08-17"),
(4,"siddu","siddu@gmail.com","2025-08-18");
Create TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT,
    fees DECIMAL(8,2)
);
INSERT INTO courses(course_id, course_name, duration_months, fees) VALUES
(11, "da", 3, 10000),
(12, "ds", 4, 15000),
(13, "full stack", 6, 20000),
(14, "reactjs", 5, 12000), -- Ensure no extra characters follow this comma
(15, "digital marketing", 3, 15000);
select*from courses;
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
select*from enrollments;
INSERT INTO enrollments(enrollment_id, student_id, course_id, enrollment_date) VALUES 
(101,1,12,"2016-01-15"),
(102,2,15,"2016-01-28"),
(103,3,14,"2016-01-15"),
(104,4,15,"2016-01-15"),
(105,1,13,"2016-01-15"),
(106,2,15,"2016-01-15"),
(107,3,12,"2016-01-15"),
(108,4,13,"2016-01-15"),
(109,1,14,"2016-01-15"),
(110,2,13,"2016-01-20"),
(111,3,15,"2016-01-15"),
(112,2,11,"2016-01-15");
select*from enrollments;
show tables;
select*from students;
select * from students as s
join enrollments as e on s.student_id = e.student_id
where e.student_id = 1;
select count(*) from students as s
join enrollments as e on s.student_id = e.student_id
where e.student_id = 1;
select*from courses;
select sum(fees) from courses as c
join enrollments as e on c.course_id = e.course_id
where e.student_id = 1;
select sum(fees) from courses as c
join enrollments as e on c.course_id = e.course_id
where e.student_id = 2;
select e.course_id,c.course_name,sum(fees) from courses as c
join enrollments as e on c.course_id = e.course_id
group by e.course_id;
select e.course_id,c.course_name,sum(fees) from courses as c
join enrollments as e on c.course_id = e.course_id
group by e.course_id
order by sum(fees) desc;
select e.course_id,c.course_name,sum(fees) from courses as c
join enrollments as e on c.course_id = e.course_id
group by e.course_id
order by sum(fees) desc
Limit 3;
select e.course_id,c.course_name,sum(fees) from courses as c
left join enrollments as e on c.course_id = e.course_id
group by e.course_id,c.course_name
order by sum(fees) desc;












