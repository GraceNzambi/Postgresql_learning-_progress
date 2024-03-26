/* Right Join */
select
	a.order_line,
	a.product_id,
	b.customer_id,
	a.sales,
	b.customer_name,
	b.age
from sales_2015 as a right join customer_20_60 as b
on a.customer_id = b.customer_id
order by customer_id;