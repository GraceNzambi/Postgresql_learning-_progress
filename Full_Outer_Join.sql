/* Full Outer Join */
select
	a.order_line,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age,
	b.customer_id
from sales_2015 as a full join customer_20_60 as b
on a.customer_id = b.customer_id
order by a.customer_id, b.customer_id;