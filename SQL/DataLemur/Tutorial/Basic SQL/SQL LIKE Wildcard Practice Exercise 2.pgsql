/*
https://datalemur.com/questions/sql-like-_-practice-exercise
You have a table of 1000 customer records from a small-business based in Australia.
Find all customers where the 2nd and 3rd letter in their name is "e".
Example: "Reece Smith"
*/

SELECT * 
FROM customers 
WHERE
  customer_name LIKE '_ee%'
LIMIT 20;
