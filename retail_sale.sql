create database retail;
use retail;
select * from Rsales;
SELECT *  FROM Rsales WHERE sale_date = '2022-11-05';
SELECT * 
FROM Rsales 
WHERE category = 'Clothing' 
AND quantiy >= 4 
AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11';
select category, sum(total_sale) as netsales from Rsales group by category ; 

select round(avg(age),2) as avg from Rsales where category="Beauty";
select * from Rsales where total_sale>1000;
select category, gender, count(*)
as total_tran
from Rsales group by category, gender order by category ;
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
  round( AVG(total_sale),3) AS avg_sale
FROM Rsales
GROUP BY year, month
ORDER BY year, avg_sale DESC
LIMIT 1;
SELECT 
    customer_id,
    SUM(total_sale) AS total_sales
FROM Rsales
GROUP BY customer_id
ORDER BY total_sales , customer_id DESC
LIMIT 5;
select * from Rsales;
select category , count( distinct(customer_id)) as cust from Rsales group by category ;
SELECT *,
    CASE  
        WHEN EXTRACT(HOUR FROM sales_time) < 12 THEN 'morning'  
        WHEN EXTRACT(HOUR FROM sales_time) BETWEEN 12 AND 17 THEN 'afternoon'  
        ELSE 'evening'  
    END AS shift  
FROM Rsales;

