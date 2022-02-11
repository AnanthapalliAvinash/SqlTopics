CREATE TABLE EMP_3  
(  
   EMP_ID INT IDENTITY (101, 1),  
   NAME VARCHAR (50),  
   age INT  
)
INSERT INTO EMP_3(NAME,age) VALUES('RAJESH',20)  
INSERT INTO EMP_1(NAME,SALARY) VALUES('PANKAJ',20000)  
INSERT INTO EMP_1(NAME,SALARY) VALUES('CHITHU',30000) 
INSERT INTO EMP_1(NAME,SALARY) VALUES(' ',null) 

  
  select * from EMP_1 union
  select * from EMP_3
CREATE TABLE EMP_2  
(  
   EMP_ID INT IDENTITY (101, 1),  
   NAME VARCHAR (50),  
   SALARY INT  
)  
drop table EMP_1
INSERT INTO EMP_2(NAME,SALARY) VALUES('RAVI',20000)  
INSERT INTO EMP_2(NAME,SALARY) VALUES('JHANI',15000)  
INSERT INTO EMP_2(NAME,SALARY) VALUES('CHITHU',30000)
INSERT INTO EMP_2(NAME,SALARY) VALUES('',null) 


select * from EMP_1 union all select * from EMP_2

select * from EMP_1 union select * from EMP_2
select * from EMP_1 intersect select * from EMP_2
select * from EMP_1 except select * from EMP_2
select * from EMP_1
select * from EMP_2

  