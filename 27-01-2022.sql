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