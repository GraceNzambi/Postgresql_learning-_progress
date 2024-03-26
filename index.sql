/* Index */
/* This is a performance-tuning method of allowing faster retrieval of records. An index creates an entr fro each value that appears in  the indexed columns. */

create index mon_idx
on month_values (MM);

drop index mon_idx;

create VIEW Daily_Billing as
select 
	order_line,
	Product_id,
	sales,
	discount from sales where order_date in (select max(order_date) from sales);
select * from Daily_billing;