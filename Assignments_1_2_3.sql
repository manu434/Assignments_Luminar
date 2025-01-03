---Assignment-1-----

create database assignment
use assignment

create table employement1(empid int,empname varchar(10),department varchar(10),contacNo bigint,emailid varchar(30),empheadID int)
insert into employement1 values(101,'isha','E-101',1234567890,'isha@gmail.com',105),(102,'priya','E-104',1234567890,'priya@yahoo.com',103),(103,'neha','E-101',1234567890,'neha@gmail.com',101),(104,'Rahul','E-102',1234567890,'rahul@yahoo.com',105),(105,'Abhishek','E-101',1234567890,'abhishek@gmail.com',102)

select * from employement1

---Assignment-2-----

create table student(Sudentid int,studentname varchar(10),email varchar(20),password varchar(10),age int,division varchar(5),marks bigint,pass_fail varchar(10))
insert into student values(100,'manu','manu@gmail.com','aswe',21,'A',100,'PASS')
insert into student values(101,'anu','anu@gmail.com','asw55e',22,'B',1,'FAIL')
insert into student values(102,'chanu','chanu@gmail.com','asw44e',23,'C',10,'FAIL')
insert into student values(103,'deki','deki@gmail.com','aswe4',24,'A',50,'PASS')
insert into student values(104,'venki','venki@gmail.com','as4we',25,'D',0,'FAIL')

select * from student

--a--
select * from student where age>23

--b--
select * from student where status='FAIL'

--c--
select * from student where Sudentid=100

--d--
select marks from student where Sudentid=101 

--e--
sp_rename 'student.pass_fail','status','column'
select * from student

--f--
alter table student add password varchar(10)
alter table student drop column password
select * from student

--g--
update student set age+=6
select * from student

--h--
update student set marks-=10
select * from student

--i--
alter table student alter column age bigint
sp_help student

--j--
select * into student1 from student
select * into student2 from student
select * from student1
select * from student2
---k--
delete from student1
select * from student1

--l---
drop table student2
select * from student2
---m---

select * from student

----Assignment3---

create table studentstable(slno int,admission bigint,firstname varchar(10),lastname varchar(10),age int)
create table feetable(slno int,admission bigint,course varchar(20),amount_paid bigint)

insert into studentstable values(1,3420,'nicholas','samuel',14)
insert into studentstable values(2,3380,'joel','john',15)
insert into studentstable values(3,3410,'japheth','becky',16)
insert into studentstable values(4,3398,'george','joshua',14)
insert into studentstable values(5,3386,'john','lucky',15)
insert into studentstable values(6,3403,'simon','dan',13)
insert into studentstable values(7,3400,'calton','becham',16)

select * from studentstable

insert into feetable values(1,3380,'Electrical',20000)
insert into feetable values(2,3420,'ICT',15000)
insert into feetable values(3,3398,'Commerce',13000)
insert into feetable values(4,3410,'HR',12000)

Select * from feetable

select studentstable.firstname,studentstable.lastname,feetable.course from studentstable inner join feetable on studentstable.admission=feetable.admission
select studentstable.firstname,studentstable.lastname,feetable.course from studentstable left join feetable on studentstable.admission=feetable.admission
select studentstable.firstname,studentstable.lastname,feetable.course from studentstable right join feetable on studentstable.admission=feetable.admission
select studentstable.firstname,studentstable.lastname,feetable.course from studentstable full join feetable on studentstable.admission=feetable.admission



