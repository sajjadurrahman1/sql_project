select*,case when comments like'%negotiate%' then 1 else 0 end as 'negotiated'
from orders;
select distinct comments
from orders;
select *,
case when commments like '%dispute' then 1 else 0 end as disputed,
case when comments like '%negotiate%' then 1 else 0 end as negotiated 