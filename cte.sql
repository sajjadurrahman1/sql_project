with cte_main as
(select 
customernumber,
paymentdate,
amount,
lag (amount) over (partition by customernumber order by paymentdate) as previous_payments
from payments)
select *,amount-previous_payments as diferernce
from cte_main;




