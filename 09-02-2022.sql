select * from emp 
alter table emp add deptname varchar(20)
alter table emp add number int
alter table emp add managerid int
alter table emp add managername varchar(20)
insert into emp values(113,'Benjamin',40000,8765432109,'11-09-1998',22,3,'dev',7859,101,'prakash'),
(114,'Benjamin',21000,null,null,30,8,'QA',6897,102,'suresh'),
(115,'Sheriff',32000,null,'30-09-1999',20,4,'manager',9875,103,'ramesh'),
(116,'Sherrif',39000,8978906554,'03-11-2000',20,3,'dev',8659,104,'raju'),
(117,'Sharuk',37000,null,'30-09-1999',20,4,'manager',7600,105,'konda'),
(118,'Salman',42000,8978906554,'03-11-2000',20,3,'QA',7550,105,'satya')
select * from manager1
select * from emp 

create table manager1(managerid int ,managername varchar(20),eid int)
insert into manager1 values(101,'prakash',113),(102,'satya',114),(103,'raj',115)
alter table emp drop column managername  

select distinct ss.Emp_name
from emp as ss, emp as sd
where ss.Emp_name=sd.Emp_name and SOUNDEX(ss.Emp_name)=SOUNDEX(sd.Emp_name)
      and
      left(ss.Emp_name,2)=left(sd.Emp_name,2)
      and
      ss.Emp_name<>sd.Emp_name

select distinct ss.Emp_name,
from load as ss, load as sd
where ss.lastname=sd.lastname and SOUNDEX(ss.firstname)=SOUNDEX(sd.firstname)
      and
      left(ss.firstname,2)=left(sd.firstname,2)
      and
      ss.firstname<>sd.firstname

SELECT COALESCE(words.CanonicalVersion, words.word)  FROM emp
        WHERE emp.Emp_name = @Searchterm;

1)Write a query to find the all the names which are similar in pronouncing as suresh, sort the result in the order of similarity

select Emp_name from emp where SOUNDEX(Emp_name)=soundex('sheriff')

2)write a query to find second highest salary in organisation without using subqueries and top

SELECT salary FROM emp ORDER BY salary DESC offset 1 rows fetch next 1 row only

3)write a query to find max salary and dep name from all the dept with out using top and limit
   SELECT salary,deptname FROM emp ORDER BY salary DESC offset 0 rows fetch next 1 row only

4)Write a SQL query to the maximum number from a table without using MAX or MIN aggregate functions.
Consider the numbers as mentioned below:
7859
6897
9875
8659
7600
7550
select top 1 number from emp  order by number desc


5) Write an SQL query to fetch all the Employees who are also managers from the EmployeeDetails table.

select e.Emp_name,e.Emp_Id,m.managername,e.salary from emp e,manager1 m where e.managerid=m.managerid