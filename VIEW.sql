/* Views */
/* VIEW is not a physical table, it is a virtual table created by query joining one or more tables */

create VIEW logistics as
select
	a.order_line,
	b.customer_name,
	b.city,
	b.state,
	b.country
from sales as a
left join customer as b
on a.customer_id = b.customer_id
order by a.order_line;

select * from logistics;
