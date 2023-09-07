/*
https://datalemur.com/questions/sql-count-distinct-practice-exercise

Assume you're given a table containing data on Amazon customers and their spending on products in different category.
Write a query using COUNT DISTINCT to identify the number of unique products within each product category.
*/

SELECT
  category,
  COUNT(DISTINCT(product))
FROM product_spend
GROUP BY category
;
