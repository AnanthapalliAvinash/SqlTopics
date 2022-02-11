select * from emp



select * from emp2
create table emp_Audit(id int ,inserted_by varchar(20))

create or alter trigger empinsert
on emp2
for insert
as
begin
declare @id int
select @id = id from inserted
insert into emp_Audit (id,inserted_by) values(@id,ORIGINAL_LOGIN())
print 'insert trigger executed'
end
go
insert into emp2 values(107,'ramesh',30000,'12-09-1998',121)
drop trigger empinsert

create or alter trigger empupdate
on emp2
for update
as
begin
declare @id int
select @id = id from inserted
--insert into emp_Audit (id,inserted_by) values(@id,ORIGINAL_LOGIN())
--update emp2 set name='raj' where id=101  
print 'update trigger executed'
end
go
update emp2 set name='raju' where id=101
select * from emp_Audit
select * from emp2