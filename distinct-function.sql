-- distinct will select distinct item from the table and show it in rows
select distinct country
from customers;
-- like 
-- like operator  is used to search for a specified pattern in a column in where clause
 -- % wildcard 
 
 select * from customers;
 
 select distinct(city)
 from customers
 where CITY like '%NEW%';
 
 select distinct (city)
 from customers
 where lower(city) like '%NEW%'
 
 
