/*
183. Customers Who Never Order

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID and name of a customer.

Write an SQL query to report all customers who never order anything.
Return the result table in any order.
*/

SELECT name as customers FROM customers
LEFT JOIN orders ON customers.id = orders.customerid
WHERE orders.customerid IS NULL;
