-- 1084. Sales Analysis III
-- Write an SQL query that reports the products that were only sold in the first quarter of 2019. 
-- That is, between 2019-01-01 and 2019-03-31 inclusive.
-- Return the result table in any order.

SELECT s.product_id, product_name FROM sales s
LEFT JOIN product p ON s.product_id = p.product_id
GROUP BY s.product_id
HAVING MIN(sale_date)>='2019-01-01' AND MAX(sale_date)<='2019-03-31';
