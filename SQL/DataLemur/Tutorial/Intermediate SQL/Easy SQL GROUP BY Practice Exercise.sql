/*
https://datalemur.com/questions/sql-group-by-practice-exercise-easy

For every FAANG stock in the stock_prices dataset, write a SQL query to find the lowest price each stock ever opened at? Be sure to also order your results by price, in descending order.
*/

SELECT
  ticker,
  MIN(open) AS min_open
FROM stock_prices
GROUP BY ticker
ORDER BY min_open DESC;
