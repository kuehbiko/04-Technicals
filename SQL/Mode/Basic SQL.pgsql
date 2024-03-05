/* Basic SQL */

/* SQL SELECT */
-- 1. Write a query to select all of the columns in the tutorial.us_housing_units table without using *.
SELECT 
  year,
  month,
  month_name,
  south,
  west,
  midwest,
  northeast
FROM 
  tutorial.us_housing_units;
-- 2. Write a query to select all of the columns in tutorial.us_housing_units and rename them so that their first letters are capitalized.
SELECT 
  year AS "Year",
  month AS "Month",
  month_name AS "Month_name",
  south AS "South",
  west AS "West",
  midwest AS "Midwest",
  northeast AS "Northeast"
FROM 
  tutorial.us_housing_units;


/* SQL LIMIT */
-- 3. Write a query that uses the LIMIT command to restrict the result set to only 15 rows.
SELECT 
  *
FROM 
  tutorial.us_housing_units
LIMIT 
  15;
