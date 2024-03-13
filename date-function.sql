-- date function 
select 
ordernumber,
orderdate,
year(orderdate) as year,
month(orderdate) as day,
day(orderdate)as day
from orders;

select now(); -- to show todays date and time()


select ordernumber,
requiredDate,orderdate,
datediff(now(),orderdate)/365 days_until_required
from orders;
select ordernumber,
orderdate,
date_add(requireddate,interval 1 year) as one_year_from_order
from orders;
 
 select *,
 date_sub(orderdate,interval 2 month) as two_month_ago
 from orders;

