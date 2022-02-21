create database sql_workbench;

use sql_workbench;

#Numeric functions
select abs(22);
select abs(-22);
select abs(-50);

select mod(10,4)

select mod(10,4) as remainder

select mod(15,3) as remainder;

select mod(50.6,2)as remainder;

select power(4,2);

select power(10,3);

select sqrt(4)

select sqrt(144)

select greatest(2, 5, 18, 6, 12);

select least(2, 7, 8, 45, 1);

select truncate (22.897, 2);

select round(22.897)

select round(22.897,1)

#student table
CREATE table student_details(
stu_id int primary key,
stu_name varchar(25),
age int,
gender char(1),
dob date,
city varchar(20)
);

INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(101,'SNEHA',22,'m',"2010-11-22",'pune')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(102,'raja',23,'M',"1999-11-22",'kerala')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(103,'ganga',24,'f',"1996-12-24",'mangalore')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(104,'rajendra',26,'M',"1989-06-18",'gujrath')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(105,'shilpa',28,'f',"1989-05-17",'orissa')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(106,'swetha',29,'f',"1986-04-21",'kasaragod')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(107,'shruthi',30,'f',"1985-03-15",'surathkal')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(108,'ashwini',35,'f',"1983-08-21",'kannur')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(109,'sanvi',38,'f',"1980-09-10",'bangalore')
INSERT INTO student_details(stu_id,stu_name,age,gender,dob,city)
VALUES(110,'shrisha',20,'m',"1980-05-20",'hyderbad')

select * from student_details

select stu_name,age,city from student_details;

#where
select * from student_details where city="kasaragod"

select * from student_details where city="mangalore" and gender='f';

select * from student_details where city="mangalore" or city='kasaragod';

select * from student_details where not city='kasaragod';

#Group by
 
 select city,count(stu_id)as total_students
 from student_details group by city;
 
 #Having
 
 select city, count(stu_id) as total_students
 from student_details group by city 
 having count(stu_id) > 3;
 
 #order by
 select * from student_details order by city desc;
 
 #strings functions
 
 select upper('pune')as upper_case
 
  select lower('pune')as lower_case
  
  select character_length('pune')as total_len;
 
 select stu_name, char_length(stu_name) as total_len from student_details;
 
 select concat("pune", "is", "In india");
 
 select concat("pune", "is", "In india")as merged;
 
 select stu_id, stu_name, concat(stu_name," ",age)as name_age from student_details;
 
 select reverse('pune');
 
 select reverse(stu_name)from student_details;

select replace("orange is vegetable", "vegetabl", "fruits")

select length("    pune   ");

select ltrim("     pune      ");

select length(ltrim("    pune    "));

select length(rtrim("    pune    "));

select position("fruit" in "orange is a fruit")as name;

select ascii('a');

select ascii('4');



