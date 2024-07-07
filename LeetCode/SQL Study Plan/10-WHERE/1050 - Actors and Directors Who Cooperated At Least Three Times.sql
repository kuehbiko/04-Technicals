-- 1050. Actors and Directors Who Cooperated At Least Three Times
-- Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.
-- Return the result table in any order.

SELECT actor_id, director_id 
FROM actordirector
GROUP BY actor_id, director_id
HAVING COUNT(timestamp) >= 3;
