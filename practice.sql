-- row number will calculate the data for certain given partition 
-- partition by is a clause which is used to divide the result set into separate numbering
with main_cte as
( 
select distinct 
t3.customername,
t1.customernumber,
t1.ordernumber,
orderdate,


row_number() over (partition by customernumber order by orderdate) as purchase_number
from orders as t1

join customers as t3 on t1.customerNumber=t3.customernumber

order by t3.customername)
select * 
from main_cte
where purchase_number=2;

select
customers.customername,
    orders.customernumber,
    orders.ordernumber,
    orders.orderdate,
row_number () over (partition by customernumber order by orderdate) as purchase_item
from orders  
join customers on orders.customernumber=customers.customernumber
order by orders.orderdate