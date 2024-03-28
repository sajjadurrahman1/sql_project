-- cast function is used to change the datatype

select *,
cast(paymentdate as datetime)as paymenttime
from payments;
-- substring return the specified length of any string of the column
     select 
     customernumber,paymentdate,
     substring(paymentdate,1,7) as month_key
     from payments;
     select *,
     substring(country,1,2)as country_code
     from customers;
     select * , 
     substring(amount,1,4) as amount_key
     from payments;
     
     -- concat  is used to merge two or  more columns together
     select employeenumber,
     lastname,firstname,
     concat(firstname,'',lastname)AS fullname
     from employees;
     
     select* from customers;
     
     
     with cte_main as
    ( select customernumber
     city,country,
     concat(country,'-',city) as country_city
     from customers)
     select*
     from cte_main
     where country='usa'
    
    
     
     
     
     
     
     
     
     