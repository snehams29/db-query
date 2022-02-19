CREATE TABLE STUDENT_TEST(
student_id INT NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
DOB DATETIME,
MARKS int
);
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(2,'SNEHA','MS','80')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(3,'AKSHATHA','MS','80')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(4,'SHILPA','MS','70')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(5,'SWETHA','RANI','45')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(6,'SACHIN','CHANDRA','40')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(7,'SANDY','S','40')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(8,'SANDHYA','RAI','35')
INSERT INTO STUDENT_TEST(student_id,FIRST_NAME,LAST_NAME,MARKS)
VALUES(9,'SANJANA','RAI','30')
SELECT MARKS FROM student_test WHERE MARKS BETWEEN 40 AND 80;
SELECT AVG(MARKS)FROM student_test;
SELECT AVG(MARKS),FIRST_NAME FROM student_test GROUP BY FIRST_NAME

SELECT FIRST_NAME AS 'student_name' FROM student_test;

SELECT COUNT(student_id), MARKS,FIRST_NAME
FROM student_test
GROUP BY MARKS,FIRST_NAME
HAVING COUNT(student_id) > 0;

SELECT student_id,FIRST_NAME, MARKS,
CASE
    WHEN MARKS > 35 THEN 'PASS'
    ELSE 'FAIL'
END AS RESULT
FROM student_test;

SELECT * FROM student_test
WHERE MARKS >= 60



select *from student_test
DELETE FROM STUDENT_TEST WHERE student_id=2

UPDATE student_test SET MARKS=30 WHERE STUDENT_ID=1 

SELECT *FROM student_test ORDER BY FIRST_NAME ASC;
select *from student_test WHERE student_id in (1,2,3);
 
 CREATE TABLE DEPARTMENT(
 department_id int not null primary key AUTO_INCREMENT,
 department_name  varchar(30)
 );
 
 INSERT INTO DEPARTMENT(department_name)
VALUES('MANAGEMENT')

select * FROM DEPARTMENT 

 CREATE TABLE emp(
 emp_id int not null primary key AUTO_INCREMENT,
 emp_name  varchar(30),
 dep_id int not null,  
 FOREIGN KEY (dep_id)
		REFERENCES DEPARTMENT(department_id)
 );
 
 INSERT INTO emp(emp_name,dep_id)
VALUES('swathi',3)

 SELECT emp.emp_name,department.department_name FROM emp
 inner join department
 on emp.dep_id=department.department_id
 
 
 SELECT emp.emp_name,department.department_name FROM emp
 LEFT join department
 on emp.dep_id=department.department_id
 
 
 SELECT emp.emp_name,department.department_name FROM emp
 RIGHT join department
 on emp.dep_id=department.department_id
 

