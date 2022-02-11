create procedure empdetails
as 
begin
select * from emp
end
exec empdetails

---alter sp
---input parameter
go
alter procedure employeedetails
@Emp_name varchar(20)
as 
begin
set nocount on;
select Emp_name from emp where Emp_name=@Emp_name
update  emp set Emp_name='raja' where Emp_Id=102
alter table emp alter column Working_hrs int 
---select * from emp where salary in (select avg(salary) from emp group by salary having avg(salary)>= any(select max(salary) from emp))

end
exec employeedetails 'konda'

select * from emp
---rename sp
exec sp_rename 'empdetails' , 'employeedetails'

go
create proc emp4
as 
begin
select * from emp
end

exec emp4
---drop sp
drop proc emp4
---sp input parameter
go
create proc sp_emp(@Emp_Id int,@Emp_name varchar(20),@salary int,@MobileNo int,@DOB date,@age int ,@Working_hrs int)
as 
begin 
insert into emp values(@Emp_Id,@Emp_name,@salary,@MobileNo,@DOB,@age,@Working_hrs)
end

exec sp_emp 113,null,25000,null,null,30,null 
select * from emp

---sp optional parameter
go
alter proc sp_emp(@Emp_Id varchar(3),@Emp_name varchar(20),@salary float,@MobileNo varchar(10),@DOB varchar(10)='N/A',@age varchar(20)='N/A' ,@Working_hrs int=null)
as 
begin
set nocount on;
insert into emp values(@Emp_Id,@Emp_name,@salary,@MobileNo,@DOB,@age,@Working_hrs)
end

exec sp_emp '108','sai',30000,'9878045321'

delete from emp where Emp_Id=108
---sp output parameter
go
CREATE PROCEDURE spGetEmployeeCount
@DOB nvarchar(20),
@EmployeeCount int Output
AS
BEGIN
SELECT @EmployeeCount = COUNT(Emp_Id) 
FROM emp
WHERE DOB = @DOB
END
DECLARE @EmployeeTotal int
EXECUTE spGetEmployeeCount '07-07-1999', @EmployeeTotal output
PRINT @EmployeeTotal


select * from emp
insert into emp values(114,'satya',80000,9876809876,'07-07-1999',22,9)


go
alter procedure sp_add(@n1 varchar(10),@n2 varchar(10)='N/A',@n3 varchar(10)='kkk')
as 
begin 
declare @result varchar(10)
set @result= @n1+@n2+@n3;
print @result
end

exec sp_add 'satya'