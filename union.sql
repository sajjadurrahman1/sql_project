-- union and union all
-- union is used to combine the result set of two or more select statements
-- each result set must have the same column
-- the columns must be in the same order
 
select * from customers;
select * from employees;


select 'customer'as type,
 contactfirstname as firstname,
contactlastname as lastname,
city 
from customers
union 
select 'employee' as type,
 firstname,lastname,
 'unknown' as  city
from employees;


select * from employees;
select * from customers;
select 'customer'as type,
contactfirstname as firstname,
contactlastname as lastname,
city
from customers
union
select 'employees' as type,
 firstname,
 lastname,
 'unknown' as city
from employees;


select 'customers'as type,
contactfirstname as firstname,
contactlastname as lastname,
city
from customers
union
select 'employees' as type,
 firstname,
lastname,
'unknown' as city
from employees;

-- practice

select * from customers;
select * from employees;




