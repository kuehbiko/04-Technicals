/*
https://datalemur.com/questions/sql-group-by-practice-exercise-candidate-skills

Suppose you are given a table of candidates and their skills. How many candidates possess each of the different skills? Sort your answers based on the count of candidates, from highest to lowest.

Assumption:

There are no duplicates in the candidates table.
*/

SELECT
  skill,
  COUNT(candidate_id) AS candidate_count
FROM candidates
GROUP BY skill
ORDER BY candidate_count DESC
;
