-- 1484. Group Sold Products By The Date
-- Write an SQL query to find for each date the number of different products sold and their names.
-- The sold products names for each date should be 

SELECT 
  sell_date,
  COUNT(DISTINCT product) AS num_sold,
  GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM activities
GROUP BY sell_date
;
