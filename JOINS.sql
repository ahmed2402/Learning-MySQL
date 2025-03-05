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
where a.id = b.manager_id ;

-- --union
select name from employee
union
select name from employee ;

-- --union all
select name from employee
union all
select name from employee ;


CREATE TABLE Student2 (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO Student2
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from Student2;

select name,marks 
from Student2
where marks > (select avg(marks) from Student2) ;


select name,rollno
from Student2
where rollno in (
	select rollno
	from Student2
	where rollno % 2 = 0
);

select * from Student2 
where city = "Delhi";

select max(marks) from (select * from Student2 
where city = "Delhi") as temp;


-- mysql views

create view view1 as
select rollno,name,marks  from Student2;

select * from view1
where marks > 90;

drop view view1;




