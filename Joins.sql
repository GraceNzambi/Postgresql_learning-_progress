/* Creating sales table of year 2015 */
create table sales_2015 as select * from sales where ship_date between '2015-01-01' and '2015-12-31';
select count(*) from sales_2015; --2131
select count(distinct customer_id) from sales_2015; --578

/* Customers with age between 20 and 60 */
create table customer_20_60 as select * from customer where age between 20 and 60;
select count (*) from customer_20_60;

select
	a.order_line,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age
from sales_2015 as a inner join customer_20_60 as b on a.customer_id = b.customer_id
order by customer_id;

/* confirming that the join is th intersection of the tables */
select customer_id from sales_2015 order by customer_id;
select customer_id from customer_20_60 order by customer_id;
