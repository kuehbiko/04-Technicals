/*
https://datalemur.com/questions/sql-where-and-or-practice-exercise

Let's practice using AND along with WHERE to filter Amazon reviews based on these two conditions:

the stars count is greater than 2, and less than or equal to 4
the review must come from either user 123, 265, or 362
*/

SELECT * 
FROM reviews
WHERE 
  stars BETWEEN 3 AND 4
  AND user_id IN (123, 265, 362)
;
