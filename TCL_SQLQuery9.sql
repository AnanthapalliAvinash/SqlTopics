select * from products
begin Transaction;
delete from products where PId=10004
begin Transaction;
rollback 
begin Transaction;
insert into products values(10004,'earphones',20000,1002)
commit Transaction
Begin Tran 
SAVE Transaction SP1  
DELETE FROM products WHERE PId = 10004  
rollback

