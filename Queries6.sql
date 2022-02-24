create database triggers;
use triggers;
show tables;

#before insert trigger
create table customers
(cust_id int, age int, name varchar(30));

delimiter //
create trigger age_verify
before insert on customers
for each row
if new.age<0 then set new.age=0;
end if;//

insert into customers
values(101, 27, "james"),
(102, -40,"ammy"),
(103, 32,"beny"),
(104, -39,"angel");

Select * from customers;

# after insert trigger

create table customers1(
id int auto_increment primary key,
name varchar(40) not null,
emil varchar(30),birthdate date);

--drop table customers1

create table customers1(
id int auto_increment primary key,
name varchar(40) not null,
email varchar(30),birthdate date);

create table message(
id int auto_increment,
messageId int,
message varchar(300) not null,
primary key(id,messageId));

Delimiter //
create trigger
check_null_dob
after insert
on customers1
for each row
begin
if new.birthdate is null then
insert into message (messageId, message)
values(new.id,concat('Hi',new.name, ', please update date of birth.'));
end if;
end
delimiter ;

select * from customers1;


insert into customers1 (name, email, birthdate)
values("sneha", "sneha@abc.com", NULL),
("roald", "rold@xyz.com", "1998-11-18"),
("chris", "chris@abc.com", "1997-11-18"),
("alice", "alice@abc.com", NULL);

select * from message;
create table employees(
emp_id int primary key,
emp_name varchar(25),
age int, 
salary float);

insert into employees values(101, "jimmy", 35, 70000),
(102, "sneha", 24, 50000),
(103, "shilpa", 25, 40000),
(104, "samaya", 23, 40000),
(105, "swetha", 26, 30000),
(106, "sharanya", 28, 50000),

delimiter //
create trigger upd_trigger
before update
on employees
for each row
begin
if new.salary=10000 then
set new.salary=50000;
elseif new.salary < 10000 then
set new.salary = 40000;
end if;
end //
delimiter ;

update employees
set salary = 8000;

select * from employees;

# before delete
create table salary(
eid int primary key,
validfrom date not null,
amount float not null);


insert into salary (eid, validfrom, amount)
values(101, '2000-05-08', 55000),
(102, '2000-08-08', 50000),
(103, '1999-05-08', 75000);

select * from salary;
create table salarydel (id int primary key auto_increment,
eid int, validfrom date not null,
amount float not null,
deletedat timestamp default now());

delimiter $$
create trigger salary_delete
before delete
on salary
for each row
begin
insert into salarydel(eid, validfrom,amount)
value(old.eid, old.validfrom, old.amount);
end$$

delimiter;

delete from salary
where eid=103;

select * from salarydel;









