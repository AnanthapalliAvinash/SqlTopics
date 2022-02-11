select * from customers
create view [AllCustomers] as 
select CustId,CustName,Country from customers where Country='india'
select * from AllCustomers
create view [AvgCustomers] as 
select * from customers where age>(select avg(age) from customers)
select * from AvgCustomers