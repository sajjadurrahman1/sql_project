-- round- round is used to round a numeric value to a specified number of decimal places.
select * from payments;
select paymentdate,round (sum(amount),1) as total_payments 
from payments 
group by  paymentdate;
select paymentdate ,round(sum(amount),2)as totalpayments
from payments
group by paymentDate;
select * from payments;
select paymentdate, round(sum(amount),3) as total_payments
from payments
group by paymentdate