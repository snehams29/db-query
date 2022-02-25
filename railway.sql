create database Railway
use Railway;

select *from Train
create table Train(
train_no int primary key,
train_name varchar(50),
arrival_time time,
departure_time time,
availability_of_seats int,
train_date date );

drop table Train;

create table station(
stationno int,
name varchar(50),
arrival_time time,
train_no int,
 CONSTRAINT PK_station PRIMARY KEY (stationno,train_no),
constraint foreign key (train_no)references Train(train_no));

drop table station;
drop table routes;
drop table fares;

drop table routes;

create table routes(
via varchar(50),
train_no int,
constraint foreign key (train_no)references Train(train_no));
select * from routes;
truncate table routes;
insert into routes(via,train_no)values('surat,baroda,kota',101);
insert into routes(via,train_no)values('surat,baroda,kota',102);
insert into routes(via,train_no)values('surat,baroda,kota',103);
insert into routes(via,train_no)values('surat,baroda,kota',104);
insert into routes(via,train_no)values('manmad,nasik,bhopal',104);
insert into routes(via,train_no)values('manmad,nasik,bhopal',105);

ALTER TABLE routes
ADD from_location varchar(50);

ALTER TABLE routes
ADD To_location varchar(50);

select * from fares;

create table fares(
train_no int,
via varchar(50),
fare int,
from_location varchar(50),
To_location varchar(50),
constraint foreign key (train_no)references Train(train_no)
);



drop table fares;

INSERT INTO Train(train_no,train_name,arrival_time,departure_time, availability_of_seats,train_date)VALUES(101,'passenger Trains','09:00','08:00',100,"2022-05-29");
INSERT INTO Train(train_no,train_name,arrival_time,departure_time, availability_of_seats,train_date)VALUES(102,'Mail/Express Trains','08:00','07:00',100,"2022-03-25");
INSERT INTO Train(train_no,train_name,arrival_time,departure_time, availability_of_seats,train_date)VALUES(103,'superfast trains','07:00','10:00',200,"2022-08-29");
INSERT INTO Train(train_no,train_name,arrival_time,departure_time, availability_of_seats,train_date)VALUES(104,'Rajdhani trains','07:00','10:00',100,"2022-02-15");
INSERT INTO Train(train_no,train_name,arrival_time,departure_time, availability_of_seats,train_date)VALUES(105,'shatabdi trains','06:00','06:00',150,"2022-03-14");

INSERT INTO station(stationno,name,arrival_time,train_no)VALUES(01,'mumbai','09:00',101);
INSERT INTO station(stationno,name,arrival_time,train_no)VALUES(01,'chaurch gate','08:00',102);
INSERT INTO station(stationno,name,arrival_time,train_no)VALUES(02,'new delhi','09:00',103);
INSERT INTO station(stationno,name,arrival_time,train_no)VALUES(03,'mumbai','09:00',101);

select * from Train;

Select * from station;

Select * from fares;

Select * from routes;

SELECT *  FROM Train  WHERE train_no = '101';    

SELECT *  FROM Train Where train_no='101' AND train_name ="passenger trains";  

SELECT *  FROM Train  WHERE train_no = '102'  OR train_name = 'shatabdi trains';  

SELECT *  FROM fares  WHERE (train_no = '101' AND via = 'surat')  OR (fare< 2000);  

SELECT DISTINCT fare  FROM fares;  

SELECT DISTINCT stationno, name  FROM station;  

SELECT Train.train_no, routes.via  
FROM routes  
INNER JOIN Train  
ON routes.via = Train.train_no;  

SELECT officers.officer_id, students.student_name  
FROM officers  
LEFT OUTER JOIN students  
ON officers.officer_id = students.student_id;

SELECT *  
FROM routes
WHERE via = '1000'  
ORDER BY train_no;  

select * from routes

update routes set from_location="churchgate",To_location="delhi" where train_no=101;
update routes set from_location="churchgate",To_location="delhi" where train_no=102;
update routes set from_location="cst",To_location="delhi" where train_no=102;
update routes set from_location="churchgate",To_location="delhi" where train_no=101;
update routes set from_location="churchgate",To_location="delhi" where train_no=103;
update routes set from_location="churchgate",To_location="delhi" where train_no=104;
update routes set from_location="churchgate",To_location="delhi" where train_no=105
update routes set from_location="cst",To_location="mumbai" where train_no=103;

select * from Train inner join routes on train.train_no=routes.train_no;

select * from Train 
inner join 
routes on train.train_no=routes.train_no
where routes.from_location='churchgate' AND To_location='mumbai'; 

select * from routes;

ALTER TABLE fares
ADD from_location varchar(50);

ALTER TABLE fares
ADD To_location varchar(50);

select * from fares  where train_no=102;

update fares set from_location='churchgate',To_location="delhi" , via='surat,Baroda,kota' where train_no=102;

select * from fares

Insert into fares(train_no,via,fare,from_location,To_location)values(102,'surat,baroda,kota',2000,'churchgate','delhi');

Insert into fares(train_no,via,fare,from_location,To_location)values(102,'manmad,nasik,bhopal',3000,'cst','delhi');

select  * from Train 
inner join 
routes on train.train_no=routes.train_no
where routes.from_location='churchgate' AND routes.To_location='delhi'; 

select * from routes;

select * from Train 
inner join 
routes on train.train_no=routes.train_no
where routes.from_location='cst' AND routes.To_location='delhi'; 

 
 


