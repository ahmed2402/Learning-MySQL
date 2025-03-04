CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student (id, name, age) VALUES
(1,"ahmvd",20),
(2,"carti",29);

INSERT INTO student VALUES (3,"YE",44);

SELECT * FROM student;

-- PRACTICE QUESTION
CREATE DATABASE XYZ ;
USE XYZ ;
CREATE TABLE employee(
	ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary FLOAT 
);

INSERT INTO employee (ID,Name,Salary) VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM employee ;





