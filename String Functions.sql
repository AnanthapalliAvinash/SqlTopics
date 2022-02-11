select * from customers
select ascii(City) from customers
select char(65) from customers
select charindex('welcome','welcome to cognine') from customers
select concat(Country,' ',City) from customers
select left(Country,2) from customers
select len(CustName) from customers
SELECT FORMAT(11081998, '##-##-####') from customers
select lower(CustName) from customers
select ltrim(CustName)from customers
select ltrim('   sql server')
select rtrim(CustName)from customers
select rtrim('sql server	')
select PATINDEX('%ser%','sql server management studio')
select PATINDEX('%s__dio%','sql server management studio')
select replace(PostalCode,122348,122345) from customers
select replicate(CustName,3) from customers
select reverse(Country) from customers
select right(CustName,2) from customers
select * from customers
SELECT STUFF(CustName, 4, 5, 'ram') from customers
select substring('sql server management studio',12,10)



