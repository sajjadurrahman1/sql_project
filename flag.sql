 -- flag
 -- it is often used to show 2 possible values like 0/1 or true or false
with main_cte as
(select 
 t1.ordernumber,
 orderdate,
quantityordered,
 productname,
 productline,
 case when quantityordered >= 40 and productline='motorcycles' then 1 else 0 end as orderedover_40_motorcycles
 from orders t1
 join orderdetails t2 on t1.ordernumber=t2.ordernumber
 join products t3 on t2.productcode=t3.productcode)
 select orderdate,sum(orderedover_40_motorcycles) as orderedover_40_motorcycles
 from main_cte
 group by orderdate;
 
 -- example of case statement and flag
 
 select *
 from orders;
 
 select *,
 case when comments like '%NEGOTIATE%' then 1 else 0 end as negotiated
 from orders;
 select*, case when comments like'%dispute%' then 1 else 0 end as disputed,
 case when comments like '%negotiate%' then 1 else 0 end as negotiated
 from orders
 
 
 