/*
https://datalemur.com/questions/sql-join-practice-exercise-robinhood

Assume you're given the tables containing info about Robinhood users, and the stock trades they placed.
Use a JOIN to output all the information from the trades table joined to the users table.
*/

SELECT * 
FROM trades t
JOIN users u ON t.user_id = u.user_id;
