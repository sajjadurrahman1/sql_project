-- case statement
-- return a specified value based on a condition  and is often used to group a column into ranges and to create flag
-- syntax:
-- case when condition1 then output1
-- when condition 2 then output 2
-- when condition 3 then output 3
-- else output 4
-- end
 select 
 case when creditlimit <75000 then ' a: less than $75k'
 when creditlimit between 75000 and 100000 then 'b: $75k-$100k'
 when creditlimit between 100000 and 150000 then 'c:$100k-$150k'
 when creditlimit > 150000 then 'd: over $150k'
 else 'other' end as credit_limit_group,
 count(distinct customernumber) as customers
 from customers
 group by 1;
 select 
 case when creditlimit <75000 then 'a:less than $75k'
 when creditlimit between 750000 and 100000 then 'b: $75k-$100k'
 when creditlimit between 100000 and 150000 then 'c:$100k-$150k'
 when creditlimit >150000 then 'd:over $150k'
 else 'other'end as credit_limit_group,
 count(distinct customernumber) as customers
 from customers
 group by 1
 
 
 
 