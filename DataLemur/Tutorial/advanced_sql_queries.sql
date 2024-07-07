/* DataLemur SQL Tutorial Intermediate Topics and Questions */
/************************************************************/
/* CTE vs. SUBQUERY */

/* SQL Tutorial Lesson: Top-Selling Artists
Write a query to rank the artists within each genre based on their revenue per member and extract the top revenue-generating artist from each genre. 
Display the output of the artist name, genre, concert revenue, number of members, and revenue per band member, 
sorted by the highest revenue per member within each genre.*/
WITH ranked_concerts_cte AS (
  SELECT artist_name, concert_revenue, genre, number_of_members,
    concert_revenue / number_of_members AS revenue_per_member,
    RANK() OVER (
      PARTITION BY genre
      ORDER BY concert_revenue / number_of_members DESC) AS ranked_concerts
  FROM concerts
)

SELECT *
FROM ranked_concerts_cte;

/* Supercloud Customer
A Microsoft Azure Supercloud customer is defined as a company that purchases at least one product from each product category.
Write a query that effectively identifies the company ID of such Supercloud customers. */
WITH supercloud AS (
SELECT customers.customer_id, COUNT(DISTINCT products.product_category) as unique_count
FROM customer_contracts AS customers
LEFT JOIN products 
  ON customers.product_id = products.product_id
GROUP BY customers.customer_id
)

SELECT customer_id
FROM supercloud
WHERE unique_count = (SELECT COUNT(DISTINCT product_category) FROM products)
ORDER BY customer_id;

/************************************************************/
/* WINDOW FUNCTION */
