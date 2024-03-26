select c.customer_name, c.age, sp. *from customer as c
right join(select s. *, p.product_name, p.category
from sales as s
left join product as p
on s.product_id =p.product_id) as sp
on c.customer_id=sp.customer_id;