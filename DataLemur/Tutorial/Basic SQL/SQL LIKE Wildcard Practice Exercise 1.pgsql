/*
https://datalemur.com/questions/sql-like-practice-exercise-1

You have a table of 1000 customer records from a small-business based in Australia.

Find all customers whose first name starts with "F" and the last letter in their last name is "ck".
*/

SELECT * 
FROM customers 
WHERE
  customer_name LIKE 'F%ck'
LIMIT 20
;
