CREATE DATABASE FK;
USE FK;

CREATE TABLE dept(
	id INT PRIMARY KEY,
    course VARCHAR(50)
    );
    
INSERT INTO dept (id,course) VALUES
(101,"CS"),
(102,"SE") ;    

SELECT * FROM dept;

UPDATE dept 
SET id = 103
WHERE id = 102 ;
    
CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(60),
    dept_id INT,
    FOREIGN KEY (dept_id) references dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    );
    
DROP TABLE teacher; 
 
INSERT INTO teacher VALUES 
(1,"AHMED",101),
(2,"lalala",102) ;

select * from teacher ;
    
    