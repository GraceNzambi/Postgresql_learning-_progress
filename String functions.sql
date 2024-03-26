/* Concatenation */
select
	Customer_name,
	city||' , '||state||' , '||country as address
from customer;

/* Substring - it is used to extract a substring from a string */
select 
	Customer_id,
	Customer_name,
	SUBSTRING (Customer_id FOR 2) AS cust_group
from customer
where substring(Customer_id for 2) = 'AB';

select
	Customer_id,
	Customer_name,
	SUBSTRING (Customer_id from 4 for 5) as cust_number
from customer
where SUBSTRING (Customer_id for 2) = 'AB';

/* String_AGG concatenates inputs values into a string, separated by delimiter */
select 
	order_id,
	string_agg(product_id,',')
from sales
group by order_id;

/* exercise */
select max(length(product_name)) from product;

select 
	product_name,
	sub_category,
	category, 
	(product_name||', '||sub_category||', '||category) 
as product_details from product;

select
	product_name,
	substring(product_id for 3) as category_short,
	substring(product_id from 5 for 2) as sub_short,
	substring(product_id from 8) as id from product;
	
select string_agg(product_name,',') from product
where sub_category  in('Chairs', 'Tables');


