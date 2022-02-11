SELECT ROW_NUMBER() OVER( ORDER BY name) AS rownumbers, name FROM emp1  
SELECT Rank() OVER( ORDER BY name) AS ranks, name FROM emp1 
SELECT Dense_Rank() OVER( ORDER BY name) AS ranks, name FROM emp1  
SELECT ntile(3) OVER( ORDER BY name) AS Id, name FROM emp1

select name,id,COUNT(id) OVER(PARTITION BY deptname) AS deptcount from emp1 
select * from emp1