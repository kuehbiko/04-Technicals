/*
https://datalemur.com/questions/sql-filtering-practice-exercise-1

You have a table of 1000 customer records from a small-business based in Australia.

Find all customers who are between the ages of 18 and 22 (inclusive), live in either Victoria, Tasmania, Queensland, their gender isn't "n/a", and their name starts with either 'A' or 'B'.
*/

SELECT * 
FROM customers 
WHERE
  age BETWEEN 18 AND 22
  AND state IN ('Victoria', 'Tasmania', 'Queensland')
  AND gender != 'n/a'
  AND (customer_name LIKE 'A%' OR customer_name LIKE 'B%')
LIMIT 20
;
