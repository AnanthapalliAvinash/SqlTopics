select * from emp

go
create function dbo.func(@var int)
returns int
as 
begin
return @var*10
end

select dbo.func(100)

drop function func
go
create or alter function dbo.func1(@Emp_name varchar(20),@salary int,@percent int)
returns int as
begin
return @salary-(@salary*@percent)/100
---return @Emp_name +'bob'
end

select *,dbo.func1(Emp_name,salary,10) as tenpercent from emp

drop function dbo.func1

create or alter function dbo.func2()
 returns varchar(20) as
begin
declare @Emp_Id int 
set @Emp_Id  = (select Emp_name,Emp_Id from emp where Emp_name='konda')
return @Emp_Id 
end 

print dbo.func2()


create or alter function inlinetable(@sal int)
returns table
as
return
select * from emp where salary>=@sal


select * from inlinetable(10000)


create or alter  function multilineTable()
returns @emp4 table(Emp_Id varchar(20),Emp_name varchar(20),salary float,age varchar(10) )
as
begin
insert into @emp4 select Emp_Id,Emp_name,salary,age from emp
return
end

select * from multilineTable()





