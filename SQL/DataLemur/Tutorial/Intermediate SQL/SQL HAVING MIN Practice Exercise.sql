/*
https://datalemur.com/questions/sql-having-min-practice-exercise

Use SQL's HAVING & MIN commands to find all FAANG stocks whose open share price was always greater than $100.
*/

SELECT
  ticker,
  MIN(open) as min_open
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100
;
