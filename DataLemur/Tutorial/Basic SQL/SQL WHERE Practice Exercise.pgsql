/*
https://datalemur.com/questions/sql-where-practice-exercise

Given the reviews table, write a query to retrieve all 3-star reviews using the SQL WHERE clause. Only display the user_id and stars columns.

reviews Table:
Column Name	Type
review_id	integer
user_id	integer
submit_date	datetime
product_id	integer
stars	integer (1-5)
*/

SELECT 
  user_id,
  stars
FROM reviews
WHERE stars = 3;
