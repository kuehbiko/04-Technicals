/*
https://datalemur.com/questions/sql-min-practice-exercise

Use SQL's MIN command in this practice exercise, to find the lowest Microsoft stock (MSFT) ever opened at.
*/

SELECT 
  MIN(open)
FROM stock_prices
WHERE
  ticker = 'MSFT';
