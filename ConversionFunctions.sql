select * from emp
select cast(salary as varchar(20)) from emp
select cast(Emp_name as int) from emp
select cast(age as varchar(10)) from emp
select cast(DOB as datetime) from customers

alter table emp alter column salary float
insert into emp values(109,'jack',20000.50,9876543210,20-09-1994,30,10)
select convert(float,Emp_name) from emp
select TRY_Convert(int,Emp_name) from emp
select TRY_Cast(Emp_name as int) from emp
select parse('11-08-1998' as datetime)
select parse('sql server' as datetime)

select try_parse('sql server' as datetime)



