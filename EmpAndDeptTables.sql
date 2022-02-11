create table Employee(EId int,Ename varchar(20),Salary int,Deptid int,DeptName varchar(10))
insert into Employee values(101,'raju',10000,1,'dev'),(102,'madhu',20000,2,'QA')
create table Department(EId int,Ename varchar(20),Salary int,Deptid int,DeptName varchar(10))
insert into Department values(101,'raju',10000,1,'dev'),(102,'madhu',20000,2,'QA')
select * from Employee
select * from Department
select coalesce(EName,null,'sai') from Employee
insert into Employee values(103,null,30000,2,'QA')


