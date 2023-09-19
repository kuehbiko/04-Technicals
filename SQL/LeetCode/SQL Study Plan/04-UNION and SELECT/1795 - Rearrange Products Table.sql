-- 1795. Rearrange Products Table
-- Write an SQL query to rearrange the Products table so that each row has (product_id, store, price). 
-- If a product is not available in a store, do not include a row with that product_id and store combination in the result table.
-- Return the result table in any order.

SELECT 
  product_id, 
  store1 AS price, 
  "store1" AS store
FROM products
WHERE 
  store1 IS NOT NULL

UNION

SELECT 
  product_id, 
  store2 AS price, 
  "store2" AS store
FROM products
WHERE 
  store2 IS NOT NULL

UNION

SELECT 
  product_id, 
  store3 AS price, 
  "store3" AS store
FROM products
WHERE 
  store3 IS NOT NULL
;