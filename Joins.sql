select * from products
select * from orders
select  PId,orders.OId,PName,orders.OrederDate from orders,products where orders.OId=products.OId
select * from orders left join products on orders.OId=products.OId
insert into products values(10004,'mobile',20000,1003),(10005,'laptop',50000,1007)
insert into orders values(1006,'12-06-2021',1)
insert into orders values(1005,'30-09-2020',1)
delete from orders where OId=1002
select * from orders right join products on orders.OId=products.OId
select PId,orders.OId,PName,orders.OrederDate from orders full outer join products on orders.OId=products.OId
select * from orders cross join products
SELECT * FROM orders o, orders o1 WHERE o.OId=o1.OId;
SELECT * FROM orders AS o CROSS APPLY(SELECT * FROM products AS pro WHERE o.OId=pro.OId) tab	
SELECT * FROM orders AS o outer APPLY(SELECT * FROM products AS pro WHERE o.OId=pro.OId) tab
select * from orders cross apply products
select * from orders outer apply products


SELECT A.OId AS orderid, B.PId AS Productid, B.Price
FROM orders A, products B
WHERE A.OId <> B.OId
AND A.OId = B.OId
ORDER BY A.OrederDate;


