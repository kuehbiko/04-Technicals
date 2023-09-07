/*
https://datalemur.com/questions/sql-ceil-practice-exercise

Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data.

For all Merck drugs, output the drug name, and the unit cost for each drug, rounded up to the nearest dollar. Order it from cheapest to most expensive drug.

Hint: Unit cost is defined as the total sales divided by the units sold.
*/

SELECT
  drug,
  CEIL(total_sales/units_sold) AS unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost;
