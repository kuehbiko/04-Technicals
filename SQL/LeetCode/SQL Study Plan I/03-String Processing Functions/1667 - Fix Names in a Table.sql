-- 1667. Fix Names in a Table
-- Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.
-- Return the result table ordered by user_id.

SELECT 
  user_id,
  CONCAT(UCASE(LEFT(name, 1)), LCASE(SUBSTR(name, 2))) AS name
FROM users
ORDER BY user_id
;
