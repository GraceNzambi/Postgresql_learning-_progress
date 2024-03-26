/* group by */
select region,state, count(customer_id) as customer_count from customer group by region, state;

select product_id, sum(quantity) as quantity_sold from sales group by product_id order by quantity_sold desc;

select customer_id, min(sales) as min_sales, max(sales) as max_sales, avg(sales) as Avrage_sales, sum(sales) as Total_sales from sales group by customer_id order by total_sales desc limit 5;

/* having */
select region, count(customer_id) as customer_count from customer group by region having count(customer_id)>200;
select region, count(customer_id) as customer_count from customer where customer_name like 'A%' group by region having count(customer_id) > 15;
 
/* EXERCISE */
select * from sales
Select product_id, sum(sales) as Total_sales_$,
sum(quantity) as Total_sales_quantity,
count(sales.order_id) as Numbers_of_orders,
max(sales), min(sales), avg(sales) from sales 
group by product_id
order by Total_sales_$ desc;

select product_id,
sum(quantity) from sales
group by product_id
having sum(quantity) > 10;