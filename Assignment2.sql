create table emp2(id int primary key,name varchar(20),salary int,DOB date,ManagerId int)
insert into emp2 values('101','raj12',20000,'09-08-1998',120),('102','satya360',29000,'08-03-1996',121)
insert into emp2 values('103','r11am',30000,'01-12-1999',120)
insert into emp2 values('104','11ra1m',30000,'01-12-1999',120)
create table Manager(MId int,managername varchar(20), eid int foreign key references emp2(id) )
insert into Manager values(120,'sumit',101),(120,'sumit',102),(121,'satya',103),(121,'satya',104)

select name,substring(name,PATINDEX('%[^a-z]%',name),len(name)+1) from emp2
select * from emp2 where len(name)<=8 AND name like '%[^a-zA-Z0-9]%'

Select SubString(name, PatIndex('%[a-z]%', name),5) from emp2
SELECT * FROM emp2
WHERE  PATINDEX('%[A-Z]%', name) > 0 
AND PATINDEX('%[0-9]%', name) > 0
select cast(replace(translate( 'paul123f321',replicate('#',26), 'abcdefghijklmnopqrstuvwxyz'),'#','') as integer ) as num from emp2
select id,name,LEFT(name,CHARINDEX(' ', name)) 'age' FROM emp2
select id,name,left(name,PATINDEX('%[^0-9]%',name)) 'age' FROM emp2

drop table Manager
drop table emp2
delete from emp2 where id='a104'
SELECT FLOOR((CAST (GetDate() as date) - CAST(DOB as date)) / 365.25) AS Age from emp2
select *,DATEDIFF(MONTH,DOB,GETDATE())/12 from emp2
select *,DATEDIFF(YEAR,DOB,GETDATE()) from emp2
select *,DATEDIFF(DAY,DOB,GETDATE())/365 from emp2
select * into emp3 from emp1
select * from emp2

select datename(DAYOFYEAR,DOB),datepart(DW,DOB),datename(WEEK,DOB),datepart(MONTH,DOB),datepart(DAY,DOB) from emp2

select * from emp2
select * from Manager
select e.name,e.id,m.managername from emp2 e,emp2 m where e.id=m.managerid
select e.name,e.id,m.managername from emp2 e join Manager m on e.id=m.eid

Select E.id,E.name 
From emp2 as E 
Inner Join Manager as Ep on Ep.eid=E.id 
Where E.id=101 or Ep.eid=101;


SELECT 
    COUNT (sub.eid) AS number_of_employees,sup.id
FROM Manager sub
JOIN emp2 sup
ON sub.eid = sup.id
GROUP BY sup.id;


;WITH EMP_CTE AS
(
SELECT  MId, CAST('' AS VARCHAR(50)) managername, 0 AS EmployeeLevel FROM Manager WHERE MId IS NULL
UNION ALL
SELECT  T.MId,CAST(C.name AS VARCHAR(50)) managername, EmployeeLevel + 1 AS EmployeeLevel FROM Manager AS T
INNER JOIN emp2  AS C ON C.id=T.MId
)

CREATE TABLE Products
   (
      ProductID int IDENTITY (1,1) NOT NULL
      , QtyAvailable smallint
      , UnitPrice money
      , InventoryValue AS QtyAvailable * UnitPrice persisted
    );
	INSERT INTO dbo.Products (QtyAvailable, UnitPrice)
   VALUES (25, 2.00), (10, 1.5);

   ALTER TABLE dbo.Products ADD RetailValue AS (QtyAvailable * UnitPrice * 1.5) PERSISTED;

   select * from Products
-- Display the rows in the table.
SELECT InventoryValue
FROM dbo.Products;
drop table Products

SELECT FLOOR((CAST (GetDate() as date) - CAST(DOB as date)) / 365.25) AS Age from emp2
select *,DATEDIFF(MONTH,DOB,GETDATE())/12 from emp2
select *,DATEDIFF(YEAR,DOB,GETDATE()) from emp2
select *,DATEDIFF(DAY,DOB,GETDATE())/365 from emp2
select * into emp3 from emp1
select * from emp2

select datename(DAYOFYEAR,DOB),datepart(DW,DOB),datename(WEEK,DOB),datepart(MONTH,DOB),datepart(DAY,DOB) from emp2


declare @a varchar(20);
SELECT @a = '1ndjsd9hvha43sbd4';
declare @b int
set @b=patindex('%[^0-9]%',@a)
while @b >0
begin
set @a = stuff(@a,@b,1,'')
set @b = patindex('%[^0-9]%',@a)
end
select @a;

SELECT e.Emp_Id , e.EMPNAME ,m.MANAGERID , m.MANAGERNAME FROM emp e join MANAGER m ON (e.Emp_Id = m.MANAGERID);

select * from emp2
