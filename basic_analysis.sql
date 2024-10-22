/* Analyzing sale trends by category */

select p.category , sum(f.sales_amount) as Total_sales
from fact_sales f
join dim_product p
on f.product_id = p.product_id
group by p.category;


/* Analyze Customer Purchases by Age Group */

select  count(f.sale_id) as Total_Purchases, c.age
from fact_Sales f
join dim_customer c
on f.customer_id = c.customer_id
group by c.age;