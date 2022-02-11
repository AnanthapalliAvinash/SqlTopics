create table customers(CustId varchar(10),CustName varchar(10),PostalCode int,City varchar(10),Country varchar(10))
insert into customers values('c100','john',500081,'hyd','india',24,'08-11-1998'),('c101','raj',500018,'delhi','india',21,'07-08-2000'),('c102','james',122348,'london','UK',23,'09-15-2002'),('c103','bob',123456,'berlin','germany',28,'11-15-1999')
select * from customers
select distinct Country from customers
select Country from customers
select top 3 Country from customers
select Country,CustName from customers order by CustId offset 1 rows fetch next 5 rows only
select * from customers
select * from customers limit 3
select last CustName from customers
alter table customers add age int
delete from customers
select CustId,CustName,age from customers where age>=22
select CustId,CustName,Country from customers where age>20 and Country='india'
insert into customers values('c104','alice',199876,'mexico','mexico',21,'10-25-1997')
insert into customers values('c105','lucifer',199854,'paries','US',26,'03-07-1997')
insert into customers values('c106','marcus',199765,'london','Uk',30,'04-13-2000')

select CustId,CustName,Country,age from customers where age=21 or Country='mexico' 
select CustId as CId,CustName as CName from customers where age=24
select * from customers where age between 20 and 25
select * from customers where age not between 20 and 25
select count(*) from customers group by Country
select * from customers where Country='india' order by age desc
select * from customers where Country='india' order by age asc
SELECT *  
FROM customers 
WHERE CustId IN ('c100','c102','c104') 
select sum(salary),Emp_name from emp group by Emp_name having sum(salary)>10000
alter table emp 
alter column salary int
select * from emp
select * from emp where DOB between  '08-06-1997' and '07-07-2020'
alter table emp add Working_hrs int
insert into emp values(101,'konda',30000,9876567874,'06-09-1998',23,9),(102,'raju',40000,9878567874,'10-01-1998',23,8),(103,'mani',20000,9876897874,'18-02-1997',24,6)
delete from emp where Emp_Id=106
SELECT Emp_Name, COUNT(Working_hrs) AS total_employee  
FROM emp WHERE salary>20000  
GROUP BY Emp_Name  
HAVING COUNT(Working_hrs)>= 1    
insert into emp values(104,'bob',35000,8765908765,'04-06-1996',25,3),(105,'john',55000,9876908765,'07-07-1999',22,5)
insert into emp values(108,'ram',40000,8765908765,'08-06-2020',25,7)
select count(*)from(select Emp_Name,Emp_Id,salary from emp) as TotalEmployees
insert into emp values(106,'alice',null,8978709876,'12-11-1998',24,6)
select * from emp where salary is null
select * from emp where salary is not null
select isnull(salary,50000) from emp
select * from emp
delete from emp where Working_hrs=7
insert into emp values(107,'raj',10000,null,'12-01-1998',24,8)
select isnull(salary,25000) from emp
select isnull(MobileNo,9876543210) from emp
alter table customers add DOB date
select * from customers
delete from customers


