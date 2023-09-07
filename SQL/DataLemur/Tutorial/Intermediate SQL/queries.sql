/* DataLemur SQL Tutorial Intermediate Topics and Questions */
/************************************************************/
/* SUM, AVG, COUNT */

/* SQL COUNT Practice Exercise
Output the number of rows in the pharmacy_sales table.*/
SELECT COUNT(*) FROM pharmacy_sales;

/* SQL SUM Practice Exercise
Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data.
Output the total number of drugs manufactured by Pfizer, and output the total sales for all the Pfizer drugs.*/
SELECT COUNT(*), SUM(total_sales)
FROM pharmacy_sales
WHERE manufacturer = 'Pfizer';

/* SQL AVG Practice Exercise
Write a SQL query using AVG to find the average open price for Google stock (which has a stock ticker symbol of 'GOOG').*/
SELECT AVG(open) 
FROM stock_prices
WHERE ticker = 'GOOG';

/* SQL MIN Practice Exercise
Use SQL's MIN command in this practice exercise, to find the lowest Microsoft stock (MSFT) ever opened at. */
SELECT MIN(open)
FROM stock_prices
WHERE ticker = 'MSFT';

/* SQL MAX Practice Exercise
Use SQL's MAX command in this practice exercise, to find the highest Netflix stock (NFLX) ever opened at.*/
SELECT MAX(open)
FROM stock_prices
WHERE ticker = 'NFLX';

/************************************************************/
/* SQL GROUP BY */

/* Easy SQL GROUP BY Practice Exercise
For every FAANG stock in the stock_prices dataset, write a SQL query to find the lowest price each stock ever opened at? 
Be sure to also order your results by price, in descending order. */
SELECT ticker, MIN(open) AS min_open
FROM stock_prices
GROUP BY ticker
ORDER BY min_open DESC;

/* SQL GROUP BY Practice Exercise: Candidate Skills
Suppose you are given a table of candidates and their skills. How many candidates possess each of the different skills? 
Sort your answers based on the count of candidates, from highest to lowest.
Assumption: There are no duplicates in the candidates table. */
SELECT skill, COUNT(candidate_id) AS candidate_count
FROM candidates
GROUP BY skill
ORDER BY candidate_count DESC;

/************************************************************/
/* SQL HAVING */

/* SQL HAVING MIN Practice Exercise
Use SQL's HAVING & MIN commands to find all FAANG stocks whose open share price was always greater than $100. */
SELECT ticker, MIN(open) as min_open
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100;

/* SQL HAVING Practice Exercise
Given a table of candidates and their technical skills, list the candidate IDs of candidates who have more than 2 technical skills.
Assumption: There are no duplicates in the candidates table. */
SELECT candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(skill) > 2;

/************************************************************/
/* SQL DISTINCT */

/* SQL COUNT DISTINCT Practice Exercise
Assume you're given a table containing data on Amazon customers and their spending on products in different category.
Write a query using COUNT DISTINCT to identify the number of unique products within each product category. */
SELECT category, COUNT(DISTINCT(product))
FROM product_spend
GROUP BY category;

/************************************************************/
/* SQL ARITHMETIC */

/* Pharmacy Analytics (Part 1)
CVS Health is trying to better understand its pharmacy sales, and how well different products are selling. Each drug can only be produced by one manufacturer.
Write a query to find the top 3 most profitable drugs sold, and how much profit they made. Assume that there are no ties in the profits. 
Display the result from the highest to the lowest total profit. */
SELECT drug, (total_sales - cogs) AS total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;

/* Cards Issued Difference
Your team at JPMorgan Chase is preparing to launch a new credit card, and to gain some insights, you're analyzing how many credit cards were issued each month.
Write a query that outputs the name of each credit card and the difference in the number of issued cards between the month with the highest issuance cards and the lowest issuance. 
Arrange the results based on the largest disparity. */
SELECT card_name, MAX(issued_amount)-MIN(issued_amount) AS issued_diff
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY issued_diff DESC;

/* SQL Math Practice Exercise: Big-Mover Months
Display the stocks which had "big-mover months", and how many of those months they had. Order your results from the stocks with the most, to least, "big-mover months".
A "big-mover month" is when a stock closes up or down by greater than 10% compared to the price it opened at. */
SELECT ticker, COUNT(ticker) AS ticker_count
FROM stock_prices
WHERE ABS(((close-open)/open * 100)) > 10
GROUP BY ticker
ORDER BY ticker_count DESC;

/************************************************************/
/* MATH FUNCTIONS */

/* SQL CEIL Practice Exercise
Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data.
For all Merck drugs, output the drug name, and the unit cost for each drug, rounded up to the nearest dollar. Order it from cheapest to most expensive drug.
Hint: Unit cost is defined as the total sales divided by the units sold. */
SELECT drug, CEIL(total_sales/units_sold) AS unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost;

/************************************************************/
/* SQL DIVISION */

/************************************************************/
/* SQL NULL */

/* Unfinished Parts
Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query to determine which parts have begun the assembly process but are not yet finished.
Assumptions:
- parts_assembly table contains all parts currently in production, each at varying stages of the assembly process.
- An unfinished part is one that lacks a finish_date.
- This question is straightforward, so let's approach it with simplicity in both thinking and solution. */
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;

/************************************************************/
/* SQL CASE */

/* SQL Tutorial Lesson: Superheroes' Likes
Delve into the Marvel Avengers dataset and write a query to categorize the superheroes based on their average likes as follows:
Super Likes: Superheroes with an average likes count greater than or equal to 15,000.
Good Likes: Superheroes with an average likes count between 5,000 and 14,999 (inclusive).
Low Likes: Superheroes with an average likes count less than 5,000.
Display the superhero's character name, platform, average likes, and the corresponding likes category. */
SELECT actor, character, platform, avg_likes,
  CASE
    WHEN avg_likes >= 15000 THEN 'Super Likes'
    WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
    ELSE 'Low Likes'
  END AS likes_category
FROM marvel_avengers 
ORDER BY avg_likes DESC;

/* Laptop vs. Mobile Viewership
Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.
Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. 
Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.*/
SELECT SUM(
  CASE
    WHEN device_type = 'laptop' THEN 1
    ELSE 0
  END) AS laptop_views,
      SUM(
  CASE
    WHEN device_type = 'tablet' OR device_type = 'phone' THEN 1
    ELSE 0
  END) AS mobile_views
FROM viewership;

/************************************************************/
/* SQL JOINS */

/* Easy SQL JOIN Practice Exercise
Assume you're given the tables containing info about Robinhood users, and the stock trades they placed.
Use a JOIN to output all the information from the trades table joined to the users table. */
SELECT * 
FROM trades t
INNER JOIN users u ON t.user_id = u.user_id;

/* Cities With Completed Trades
Assume you're given the tables containing completed trade orders and user details in a Robinhood trading system.
Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. 
Output the city name and the corresponding number of completed trade orders. */
SELECT u.city, COUNT(t.order_id)
FROM trades t
INNER JOIN users u ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY 2 DESC
LIMIT 3;

/* Page With No Likes 
Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").
Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs. */
SELECT page_id
FROM pages
EXCEPT
SELECT page_id
FROM page_likes;

/************************************************************/
/* DATE FUNCTIONS */
