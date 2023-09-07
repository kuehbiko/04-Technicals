-- 511. Game Play Analysis I
-- Write an SQL query to report the first login date for each player.
-- Return the result table in any order.

SELECT 
  player_id, MIN(event_date) AS first_login
FROM activity
GROUP BY player_id;
