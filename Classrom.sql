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