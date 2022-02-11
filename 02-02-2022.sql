1. Write a script to extracts all the numerics from Alphanumeric String

declare @input varchar(20);
SELECT @input = '1ndjsd9hvha43sbd4';
declare @b int
set @b=patindex('%[^0-9]%',@input)
while @b >0
begin
set @input = stuff(@input,@b,1,'')
set @b = patindex('%[^0-9]%',@input)
end
select @input;


2. Write a script to calculate age based on the Input DOB

select *,DATEDIFF(MONTH,DOB,GETDATE())/12 from emp2
select *,DATEDIFF(YEAR,DOB,GETDATE()) from emp2
select *,DATEDIFF(DAY,DOB,GETDATE())/365 from emp2
 
4. Display Calendar Table based on the input year. If I give the year 2017 then populate data for 2017 only

Date e.g.  1/1/2017 

DayofYear 1 – 365/366 (Note 1)

Week 1-52/53

DayofWeek 1-7

Month 1-12

DayofMonth 1-30/31 (Note 2)

Note 1: DayofYear varies depending on the number of days in the given year.

Note 2: DayofMonth varies depending on number of days in the given month

Weekly calculations are always for a 7 day period Sunday to Saturday.

declare @date varchar(20)='01-01-2017'
select datename(DAYOFYEAR,@date),datepart(DW,@date),datename(WEEK,@date),datepart(MONTH,@date),datepart(DAY,@date) from emp2


5.Display Emp and Manager Hierarchies based on the input till the topmost hierarchy. (Input would be empid)

SELECT e.Emp_Id , e.Emp_name ,m.managerid,m.managername  FROM emp e join manager1 m ON (e.managerid = m.managerid);
