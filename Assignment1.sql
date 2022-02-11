create table emp1(id int,name varchar(40),firstname varchar(20),middlename varchar(20),lastname varchar(20),
                  fathername varchar(20),salary int,DOB date,deptname varchar(10))

insert into emp1 values(101,'R.sai kumar reddy','sai','kumar','reddy','raju',20000,'11/09/2000','dev'),
					   (102,'L.konda reddy lekkala','konda','reddy','lekkala','konda',10000,'10/13/2000','QA'),
					   (103,'T.ramesh kumar thota','ramesh','kumar','thota','naresh',5000,'09/30/1998','HR'),
					   (104,'R.vikram singh rathode ','vikram','singh','rathode','satya',3000,'05/12/1996','dev'),
					   (105,'N.rama rao nandamuri','rama','rao','nandamuri','harikrishna',4000,'04/18/1989','QA'),
					   (106,'P.satya narayana pulamanthula','satya','narayana','pulamanthula','nagaraju',4500,'12/06/1997','dev')
select * from emp1
drop table emp1
insert into emp1 values(112,'K.chandra mahesh kollu','chandra','mahesh','kollu','ramesh',25000,'09-22-1996','HR'),
					   (113,'L.chandra shekar lekkala','chandra','shekar','lekkala','konda',15000,'03-30-1996','dev')
					   
insert into emp1 values(115,'c.sekar ram chandra','sekar','ram','chandra','ramesh',20000,'09-22-1990','HR'),
                       (116,'c.sekar chandra ram','sekar','chandra','ram','rajesh',23000,'09-22-1989','dev')

1.Write a query to Get a List of Employees who have a one part name.
SELECT SUBSTRING(name, 1, CHARINDEX(' ', name) - 1) AS Firstname FROM emp1
SELECT RTRIM(LEFT(REPLACE(Name,' ',REPLICATE(' ',100)),100)) AS FirstName from emp1;

2.Write a query to Get a List of Employees who have a three part name.

SELECT reverse(SUBSTRING(reverse(name), 1, CHARINDEX(' ', reverse(name)) - 1)) AS lastname FROM emp1

SELECT LTRIM(RIGHT(REPLACE(Name,' ',REPLICATE(' ',100)),100)) AS LastName from emp1;

3.write a query to get a list of Employees who have a First Middle Or last name as Ram, and not anything else

select name from emp1 where name like'% ram %'
select name from emp1 where name like'ram %'
select name from emp1 where name like'% ram'
select name from emp1 where name like '_%'

4.Write a query which gives employee types in the organization.

select distinct deptname,name from emp1

5.Write a query which returns Name, FatherName, DOB of employees whose PresentBasic is
i. Greater than 30000.
ii. Less than 3000.
iii. Between 3000 and 5000. (Note:Assume 1 as least unit in currency).
select name,fathername,DOB from emp1 where salary>30000

select name,fathername,DOB from emp1 where salary<3000

select name,fathername,DOB from emp1 where salary between 3000 and 5000

6.Write a query which returns All the details of employees whose Name
i. Ends with 'KHAN'
ii. Starts with 'CHANDRA'
iii. Is 'RAMESH' and their initial will be in the range of alphabets a-t.
select * from emp1 where name like '%khan%'

select * from emp1 where name like 'chandra%'

select * from emp1 where firstname='ramesh' and left(name,1) between 'A' and 'T'
select * from emp1 where firstname='ramesh' and name like '[A-T]%'

select top 1 salary,name from emp1 order by salary desc 
select * from emp1
select * from emp1 where deptname='HR' and salary>5000
select * from emp1 union
select * from emp4
select * into emp4 from emp2
select * from emp2 union select * from emp4



