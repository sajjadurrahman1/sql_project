-- lead is used to access data from next row within the same result without using a self join
-- it is useful for accessing values from next rows based on specific ordering

select customernumber,+
paymentdate,
amount,
lead (amount) over (partition by customernumber order by paymentdate) as next_payment
from payments;
-- lag is used to get the previous result of the column
select customernumber,+
paymentdate,
amount,
lag (amount) over (partition by customernumber order by paymentdate) as previous_payments
from payments;


select customernumber,paymentdate,amount,
lead (amount) over (partition by customernumber order by paymentdate)as next_payment
from payments;


select customernumber,paymentdate,amount,
lag (amount) over (partition by customernumber order by paymentdate) as previous_payment
from payments;

