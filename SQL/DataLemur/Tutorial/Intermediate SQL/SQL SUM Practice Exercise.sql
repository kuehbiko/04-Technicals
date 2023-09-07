/*
https://datalemur.com/questions/sql-sum-practice-exercise

Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data.

Output the total number of drugs manufactured by Pfizer, and output the total sales for all the Pfizer drugs.
*/

SELECT 
  COUNT(*),
  SUM(total_sales)
FROM pharmacy_sales
WHERE 
  manufacturer = 'Pfizer'
;
