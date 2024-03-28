-- subquery and cte
 -- a query inside another query is subquery
 -- subquery or nested query is used to fetch data from inner query
 
 -- subquery / nested query
 select avg(orders)
 from
  (select orderdate,count(ordernumber) as orders
  from orders
  group by orderdate) as t1
  where orderdate>'2005-05-01';
  select avg(orders)
  from 
  (select orderdate,count(ordernumber) as orders
  from orders
  group by ordernumber)as t1
  where orderdate>'2003-05-01';
  select avg(orders)
  from
  (select orderdate,count(ordernumber) as orders
  from orders
  group by orderdate) as t1
  where orderdate>'2003-01-06';
  select avg(ordernumber)
  from orders
  where orderDate>'2003-01-06';
  select avg(orders)
  from
  (select orderdate ,count(ordernumber)
  as orders
  from orders 
  group by orderdate) as t1
  where orderdate>'2003-01-06';
  
  -- cte-common table expression
with cte_orders as 
(select orderdate,count(ordernumber) as orders
from orders
group by orderdate)
select avg(orders)
from cte_orders
where orderdate>'2003-01-06';
with cte_orders as
(select orderdate,count(ordernumber) as orders
from orders
group by orderdate)

select avg(orders)
from cte_orders
where orderdate>'2003-01-06';


with cte_orders as
(select orderdate,count(ordernumber)as orders
from orders 
group by orderdate)
select avg(orders)
from cte_orders
where orderdate>'2003-01-03';




  
  

