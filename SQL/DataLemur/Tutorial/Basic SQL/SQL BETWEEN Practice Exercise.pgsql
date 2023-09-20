/*
https://datalemur.com/questions/sql-between-practice-exercise

Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data. Use the BETWEEN SQL command to find data on medicines:

which sold between 100,000 units and 105,000 units
AND were manufactured by either Biogen, AbbVie, or Eli Lilly
Output the manufacturer name, drug name, and the # of units sold.
*/

SELECT 
  manufacturer,
  drug,
  units_sold
FROM pharmacy_sales
WHERE
  units_sold BETWEEN 100000 AND 105000
  AND manufacturer IN ('Biogen', 'AbbVie', 'Eli Lilly')
;
