drop database Sample1
restore database Sample1
create table products(PId int primary key,PName varchar(10),Price int not null)
select * from products
insert into products values(10001,'watch',5000,2,1000),(10002,'shoes',2000,1,1001),(10004,'earbuds',1000 ,1,1002 )
alter table products add quantity varchar(10)
delete from products
update products set PName='laptop' where PId=10004
drop table student
create table student(
SId int primary key,SName varchar(20) unique not null,SAge int check(Sage>=18),DOB varchar(10),marks int not null )
insert into student values(1001,'null',18,'11-08-1998',65)
select * from student
insert into student values(1004,'null',18,'11-08-1998','')
delete from student where SId=1002 
insert into student values(1003,'vyshnavi',20,'12-12-1998',75)
alter table products add OId int foreign key references orders(OId)
create table orders(OId int primary key,OrederDate varchar(10),orderQuantity int)
select * from orders
select * from products
delete from orders where OId=1000
delete from products where OId=1000
insert into orders values(1001,'30-09-2021',1),(1002,'25-09-2021',1)
alter table products drop column quantity
select * from student
select * from student where SAge=18 and SAge=18
create table Sample(
id int,
name varchar(10),
primary key(id,name),
age int,
salary int
)
create table Sample2(
Id int ,
Name varchar(10),
foreign key(Id,Name) references Sample(id,name),
Sid int,
age int,
salary int
)
drop table Sample
select * from Sample
select * from Sample2
select * from customers
select CustId,CustName,City,Country,count(CustId) over(partition by Country) from customers


