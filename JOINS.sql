CREATE DATABASE JOINS;
USE JOINS;
CREATE TABLE student(
	student_id int primary key,
    name varchar(60)
);

insert into student values
(101,"adam"),
(102,"bob"),
(103,"casey");

CREATE TABLE course (
	student_id int primary key,
    course varchar(60)
) ;

insert into course values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

select * from student;
select * from course;

-- inner join
select * 
from student as s
inner join course as c
on s.student_id = c.student_id ;

-- left join
select * 
from student as s
left join course as c
on s.student_id = c.student_id ;

-- right join
select * 
from student as s
right join course as c
on s.student_id = c.student_id ;

-- full join
select * 
from student as s
left join course as c
on s.student_id = c.student_id 
UNION
select * 
from student as s
right join course as c
on s.student_id = c.student_id ;

-- left exclusive join
select * 
from student as s
left join course as c
on s.student_id = c.student_id 
where c.student_id is null ;

-- right exclusive join
select * 
from student as s
right join course as c
on s.student_id = c.student_id 
where s.student_id is null ;

-- full exclusive join
select * 
from student as s
left join course as c
on s.student_id = c.student_id 
where c.student_id is null 
UNION
select * 
from student as s
right join course as c
on s.student_id = c.student_id 
where s.student_id is null ;

-- SELF JOIN

create table employee(
	id int primary key,
    name varchar(50),
    manager_id int 
);

insert into employee values 
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

select * from employee;

select a.name as manager_name, b.name 
from employee as a
join employee as b
where a.id = b.manager_id

select name from employee

