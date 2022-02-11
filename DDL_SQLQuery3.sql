create table emp (
Emp_Id varchar(3),
Emp_name varchar(30),
salary varchar(10),
MobileNo varchar(10),

);

insert into emp(Emp_Id,Emp_name,salary,MobileNo) values(101,'konda',30000,9876543210)
select * from emp
insert into emp(Emp_Id,Emp_name,salary,MobileNo) values(102,'Raju',40000,9896543210)
insert into emp(Emp_Id,Emp_name,salary,MobileNo) values(103,'satya',20000,9876843210)
select * from emp
alter table emp add age varchar(4)
insert into emp(Emp_Id,Emp_name,salary,MobileNo,age) values(104,'ram',20000,9876843210,23)
select * from emp
alter table emp add DOB varchar(4)
ALTER TABLE emp 
ALTER COLUMN DOB varchar(20);
alter table emp add age varchar(5)
insert into emp(Emp_Id,Emp_name,salary,MobileNo,age,DOB) values(103,'satya',20000,9876843210,20,'10-1-1998')
alter table emp drop column age
truncate table emp
create table dept(dept_id int,dept_name varchar(10),Emp_Id int)
exec sp_rename 'dept', 'Department'
select * from Department

