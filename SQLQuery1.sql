SELECT * FROM classicmodels.customers;
select t1.customername,t2.amount,t2.paymentDate from customers as t1
left join payments as t2
on t1.customerNumber=t2.customerNumber
where t2.customerNumber is null