select * from emp
select getdate() from emp
select CURRENT_TIMESTAMP from emp
select datename(day,DOB) from customers
select datename(month,DOB) from customers
select datename(year,DOB) from customers

select datepart(MONTH,DOB) from customers
select datepart(day,DOB) from customers
select datepart(year,DOB) from customers
select * from customers

select dateadd(month,20,DOB) from customers
select dateadd(day,20,DOB) from customers
select dateadd(year,2,DOB) from customers
select day(DOB) from customers
select isdate(22-12-2022)
select isdate(1-21-2022)
select isdate(2022-01-20)
select isdate(2022-20-01)
select DATEDIFF(day,01-26-2022,01-24-2022)
select datediff(day,01-24-2022,01-26-2022)
select DATEDIFF(month,03-26-2022,01-26-2022)
select DATEDIFF(day,01-26-2024,01-24-2022)


select eomonth(DOB) from customers
select * from customers




