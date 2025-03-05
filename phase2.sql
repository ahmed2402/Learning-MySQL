-- CREATE DATABASE office;
-- USE OFFICE;

-- CREATE TABLE employee(
-- 	id INT ,
--     name VARCHAR(100),
--     salary INT default 50000
-- );

-- INSERT INTO employee (id,name) VALUES
-- (1,"ahmed"),
-- (2,"anything");

-- SELECT * FROM employee


CREATE DATABASE college2;
USE college2;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student ;
SELECT name,marks FROM student;
SELECT city FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student where marks > 80;
SELECT * FROM student where city = "Delhi";

SELECT *
FROM student 
WHERE marks > 80 AND city ="Delhi";


SELECT *
FROM student 
WHERE marks>75;

SELECT *
FROM student 
ORDER BY marks DESC 
LIMIT 3;

SELECT max(marks) 
FROM student ;

SELECT min(marks) 
FROM student ;

SELECT AVG(marks) 
FROM student ;

SELECT COUNT(rollno) 
FROM student ;

SELECT city , avg(marks)
FROM student
GROUP BY city;

-- Write the QUERY to find avg marks in each city in ascending order

SELECT city , avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks) ASC ;

SELECT grade,count(name)
FROM student
group by grade;


SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING max(marks)>90;

SELECT city,name 
FROM student
WHERE grade = "A" 
GROUP BY city,name
HAVING max(marks) > 90 
ORDER BY city DESC ;

SET SQL_SAFE_UPDATES = 0 ;

UPDATE student 
SET grade = "O"
WHERE grade = "A" ;

select * from student;

DELETE FROM student
WHERE marks<33;

ALTER TABLE student
ADD COLUMN agEe INT NOT NULL DEFAULT 18 ;

SELECT * FROM STUDENT ;

ALTER TABLE student
DROP COLUMN age ;

ALTER TABLE STUDENT
RENAME TO student;

ALTER TABLE student
CHANGE COLUMN age AGE INT NOT NULL;

ALTER TABLE student
MODIFY COLUMN AGE INT DEFAULT 18;



