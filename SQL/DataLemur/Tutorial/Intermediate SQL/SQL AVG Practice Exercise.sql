/*
https://datalemur.com/questions/sql-avg-practice-exercise

Write a SQL query using AVG to find the average open price for Google stock (which has a stock ticker symbol of 'GOOG').
*/

SELECT 
  AVG(open) 
FROM stock_prices
WHERE ticker = 'GOOG';
