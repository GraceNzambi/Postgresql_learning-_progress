/* AS */
select customer_id as "Serial Number", customer_name as name, age as Customer_age from customer;

/* COUNT */
select count(order_line) as "Number of Products Ordered", count(distinct order_id) as "Number of orders" from sales where customer_id = 'CG-12520';
select count(*) from sales;

/* SUM */
select sum(Profit) as "Total_Profit" from sales;
select sum(quantity) as "Total Quantity" from sales where product_id ='FUR-TA-10000577';

/*Avg */
select avg(age) as "Average Customer Age" from customer;
select avg(sales *0.10) as "Average commission Value" from sales;

/* Min - Max */
select min(sales) as Min_sales_June15 from sales where order_date BETWEEN '2015-06-01' and '2015-06-30';
select sales from sales where order_date BETWEEN '2015-06-01' and '2015-06-30' order by sales asc;


select max(sales) as Max_sales_June15 from sales where order_date between '2015-06-01' and '2015-06-30';

/* Exercise */

select sum(sales) from sales;
select * from customer;
select count(customer_id) as no_cust_north_region_btn_20and30 from customer where age between 20 and 30;

select avg(age) as easand Max aged customer fromt_region_customers_age_avg from customer where region= 'East';

select min(age), max(age) as "Min  Philadelphia" where city ='Philadelphia';