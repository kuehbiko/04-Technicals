-- 1729. Find Followers Count
-- Write an SQL query that will, for each user, return the number of followers.
-- Return the result table ordered by user_id.

SELECT 
  user_id, 
  COUNT(follower_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id;
