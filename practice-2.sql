select * from orderdetails;
select count(ordernumber)
from orderdetails;
select productcode,count(distinct ordernumber) as orders
from orderdetails
group by productcode;
select * from orders;
select count(ordernumber)
from orders;
select status ,count(distinct ordernumber) as ord_num
from orders 
group by status 
