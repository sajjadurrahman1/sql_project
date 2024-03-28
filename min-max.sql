-- min max
-- with min and max function we can fetch the highest and lowest data from the table
select * from payments;
select 
paymentdate,
max(amount) as highest_amount,
min(amount) as lowest_amount
from payments
group by paymentdate 
having paymentdate='2003-12-09';
select paymentdate,
min(amount) as lowest,
max(amount) as highest
from payments
group by paymentdate;



