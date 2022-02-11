SELECT * FROM emp

---single row sub query
select * from emp where salary=(select min(salary) from emp)
SELECT Emp_Id, Emp_name 
FROM emp
WHERE Emp_name =   
(SELECT Emp_name 
FROM emp   
WHERE Emp_name LIKE 'r_j')

---multiple row sub query
select * from emp where Emp_Id in (select Emp_Id from emp where salary=20000)

---set procedure parameters
select Emp_name,avg(salary)from emp group by Emp_name having avg(salary)>all(select min(salary) from emp)
select Emp_name,avg(salary)from emp group by Emp_name having avg(salary)>any(select min(salary) from emp)
select Emp_name,avg(salary)from emp group by Emp_name having avg(salary)in(select min(salary) from emp)

---corelated sub query
select Emp_name,Emp_Id,salary from emp where salary>all (select max(salary) from emp group by Emp_Id)
select Emp_name,Emp_Id,age,Working_hrs from emp where age in (select age from emp order by Emp_Id)



---nested sub query
select * from emp where salary in (select avg(salary) from emp group by salary having avg(salary)>= any(select min(salary) from emp))
select * from emp

---exists and not exists
SELECT Emp_Id, salary,Emp_name FROM emp WHERE exists(SELECT * FROM emp where Emp_name='konda')
SELECT Emp_Id, salary,Emp_name FROM emp WHERE not exists(SELECT  salary FROM emp where Emp_name='konda')


---derived tables
select * from(select Emp_name,Emp_Id,salary from emp) as empdetails where salary>20000

---select * from(select PName,PId,orders.OId,OrederDate from orders inner join products on orders.OId=products.OId) as empdetails
---select *from products
---select * from orders