/*
https://datalemur.com/questions/sql-max-practice-exercise

Use SQL's MAX command in this practice exercise, to find the highest Netflix stock (NFLX) ever opened at.
*/

SELECT 
  MAX(open)
FROM stock_prices
WHERE
  ticker = 'NFLX'
;
