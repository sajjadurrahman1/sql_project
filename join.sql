-- inner join just gives output for matching rowa
select * from 
orders t1
inner join  -- as we have used join it is giving all the values from the teo tables
customers t2
on t1.customernumber=t2.customernumber;

select * from orders
where orderNumber=10100; -- it gives data for only the specific number


select * from customers
where customerNumber='363';

select * from 
customers t1 inner join 
orders t2 on 
t1.customerNumber=t2.customerNumber
where t1.customerNumber=363;
select * from customers t1
inner join orders t2
on orders.ordernumber=customers.ordernumber;
select * from orders;
select * from customers as t1
inner join orders as t2
on t1.customerNumber=t2.customernumber;
select * from customers as t1
inner join orders as t2
on t1.customernumber=t2.customernumber
where t1.customerNumber=363; 




