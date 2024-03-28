select * 
from employees
where upper (email)='MPATTERSO@CLASSICMODELCARS.COM'
;
-- uppper convert lowercase to uppercase
select *,upper(firstname) as uppercasename
from employees;
select * from employees;
select *
 from employees
where upper (email) not in 
('PMARSH@CLASSICMODELCARS.COM',
'GBONDUR@CLASSICMODELCARS.COM',
'ABOW@CLASSICMODELCARS.COM')
