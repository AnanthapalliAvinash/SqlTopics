select * from customers 
SELECT upper(CustName)
FROM customers;
SELECT lower(CustName)
FROM customers;
select CustName,len(CustName)
from customers
select CustName,datalength(CustName)
from customers
select datalength(' new york ')
select len(' new york ')
select getdate()
from customers
select getdate()
from emp
select coalesce(null,CustId,CustName,null) from customers
select * from emp
select coalesce(Emp_Id,Emp_Name) from emp
insert into customers values('c110',' jack ',-876543,'mumbai','india',34,'10-29-2000')