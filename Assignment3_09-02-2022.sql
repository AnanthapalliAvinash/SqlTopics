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