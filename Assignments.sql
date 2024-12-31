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

---Assignment-4----

1) ---not null---
---(without assigning in the create table section)

drop table if exists emp
 CREATE TABLE emp (
    id INT,
    name VARCHAR(20),
    pass VARCHAR(10),
    mob BIGINT
);

insert into emp values(1,'manu','aswe12345',4546474747)
insert into emp values(null,'shibu','dgt45',4637383838)
select * from emp
sp_help emp

---not null---(assigning in the create table section)
drop table if exists emp
 CREATE TABLE emp (
    id INT not null,
    name VARCHAR(20),
    pass VARCHAR(10),
    mob BIGINT
);

insert into emp values(1,'manu','aswe12345',4546474747)
insert into emp values(100,'shibu','dgt45',4637383838)
select * from emp
sp_help emp

---not null---(Add constraints to existing table)
drop table if exists emp
 CREATE TABLE emp (
    id INT not null,
    name VARCHAR(20),
    pass VARCHAR(10),
    mob BIGINT
);

insert into emp values(1,'manu','aswe12345',4546474747)
insert into emp values(100,'shibu','dgt45',4637383838)
select * from emp
sp_help emp

---make name also not null---
alter table emp alter column name varchar(20) not null
insert into emp values(100,null,'dgt45',4637383838)
insert into emp values(100,'ko','dgt45',4637383838)
select * from emp
sp_help emp

---unique---
---without assigning in the table section---

drop table if exists emp2
create table emp2(id int,username varchar(20),pass varchar(10),mon bigint)

insert into emp2 values(100,'manu','aswe23',7878787878) 
insert into emp2 values(101,'manu','aswe23',7878787878) 
insert into emp2 values(102,'manu','aswe23',7878787878) 

select * from emp2

---unique assigning in the table section---
drop table if exists emp2
create table emp2(id int,username varchar(20) unique,pass varchar(10),mon bigint)

insert into emp2 values(100,'anu','aswe23',7878787878) 
insert into emp2 values(101,'nu','aswe23',7878787878) 
insert into emp2 values(102,'maanu','aswe23',7878787878) 
select * from emp2
sp_help emp2

---unique (Add constraints to existing table)---(make unique ID)
drop table if exists emp2
create table emp2(id int,username varchar(20),pass varchar(10),mon bigint)

insert into emp2 values(100,'anu','aswe23',7878787878) 
insert into emp2 values(101,'nu','aswe23',7878787878) 
insert into emp2 values(102,'maanu','aswe23',7878787878) 
select * from emp2
sp_help emp2

alter table emp2 add constraint uniqueconss unique(id)
alter table emp2 add constraint uniq unique(username)

--contains duplicate values--
insert into emp2 values(100,'anu','aswe23',7878787878) 
insert into emp2 values(100,'nu','aswe23',7878787878) 
insert into emp2 values(100,'maanu','aswe23',7878787878) 

--contains non-duplicate values---
insert into emp2 values(100,'anu','aswe23',7878787878) 
insert into emp2 values(101,'nu','aswe23',7878787878) 
insert into emp2 values(102,'maanu','aswe23',7878787878) 

select * from emp2

alter table emp2 drop constraint uniquecons,uniqueconss


--check--
---(without assigning in the create table section)

drop table if exists salart45
create table salary45(id int,name varchar(20),salary int)

insert into salary45 values(10,'manu',1500)
insert into salary45 values(20,'kk',3000)

select * from salary45
sp_help salary45

---check---(assigning in the create table section)

drop table if exists salary455
create table salary455(id int,name varchar(20),salary int check(salary>2500))

insert into salary455 values(10,'manu',1500)
insert into salary455 values(20,'kk',3000)
insert into salary455 values(10,'manu',2000)
insert into salary455 values(20,'kk',2400)

select * from salary455
sp_help salary455

---check---(Add constraints to existing table)
drop table if exists salary455
create table salary455(id int,name varchar(20),salary int check(salary>2500))

insert into salary455 values(10,'manu',3500)
insert into salary455 values(20,'kk',3000)
insert into salary455 values(10,'manu',3300)
insert into salary455 values(20,'kk',2400)

select * from salary455
sp_help salary455

alter table salary455 add  age int
ALTER TABLE salary455 ADD CONSTRAINT ageconst CHECK(age>28)

insert into salary455 values(10,'manu',3500,25)
insert into salary455 values(20,'kk',3000,28)
insert into salary455 values(10,'manu',3300,30)

select * from salary455
sp_help salary455

---drop constraint---
sp_help salary455

alter table salary455 drop constraint CK__salary455__salar__60A75C0F
alter table salary455 drop constraint CK__salary455__salar__693CA210

---default-
---(without assigning in the create table section)---

drop table if exists manu200
create table manu200(slno int,studentname varchar(20),age int)
insert into manu200 values(10,'manu',27)
insert into manu200 values(11,'mau',28)

select * from manu200

---default---(assigning in the create table section)
drop table if exists manu200
create table manu200(slno int,studentname varchar(20),age int default 22)

--3 ways assign---
insert into manu200 values(10,'manu',27) ---(we can assign our own value)
insert into manu200 values(11,'manu',default) ---(we can give default so that it will take default value)
insert into manu200 (slno,studentname)values(11,'mannu') --(we can give only other fields where default field will assign automatically)

select * from manu200
sp_help manu200

---default---(Add constraints to existing table)
drop table if exists manu200
create table manu200(slno int,studentname varchar(20),age int default 22)

insert into manu200 values(10,'manu',27) ---(we can assign our own value)
insert into manu200 values(11,'manu',default) ---(we can give default so that it will take default value)
insert into manu200 (slno,studentname)values(11,'mannu') --(we can give only other fields where default field will assign automatically)

select * from manu200
sp_help manu200

alter table manu200 add constraint defaultcons default 100 for slno
sp_help manu200
insert into manu200 values(1,'manu',27) ---(we can assign our own value)
insert into manu200 values(default,'manu',default) ---(we can give default so that it will take default value)
insert into manu200 (slno,studentname)values(default,'mannu') --(we can give only other fields where default field will assign automatically)

select * from manu200

---drop constraint---
sp_help manu200
alter table manu200 drop constraint defaultcons

