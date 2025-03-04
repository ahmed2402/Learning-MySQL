CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1,"AHMED",20);
INSERT INTO student VALUES(2,"YE",29);

SELECT * FROM student;