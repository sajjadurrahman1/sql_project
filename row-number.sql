-- row number is a function in sql which gives calculation on row and give results on specific partition.
-- partition by is used to divide the result based on the values one or more columns
select distinct 
customername,
customernumber,
ordernumber,
orderdate,postcode,
row_number()over(partition by customernumber order by orderdate) as purchase_number
from  orders
join orderdetails on ordernumber= orderNumber
join customers on customernumber=customernumber
order by customername;

select 
t3.customername,
t1.customernumber,
t1.ordernumber,
t1.orderdate,

row_number () over (partition by customernumber order by orderdate) as purchase_date
from orders as t1
join customers as t3 on  t1.customernumber = t3.customernumber
order by orderdate;


select 
t2.customername,
t1.customernumber,
t1.ordernumber,
t1.orderdate,
row_number() over(partition by customernumber order by orderdate) as purchase_date
from orders as t1
join customers as t2 on t1.customernumber=t2.customerNumber
order by orderdate;