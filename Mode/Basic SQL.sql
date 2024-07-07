/* Basic SQL */

/* SQL SELECT */
-- 1. Write a query to select all of the columns in the tutorial.us_housing_units table without using *.
SELECT year,
       month,
       month_name,
       south,
       west,
       midwest,
       northeast
FROM tutorial.us_housing_units;
-- 2. Write a query to select all of the columns in tutorial.us_housing_units and rename them so that their first letters are capitalized.
SELECT year AS "Year",
       month AS "Month",
       month_name AS "Month_name",
       south AS "South",
       west AS "West",
       midwest AS "Midwest",
       northeast AS "Northeast"
FROM tutorial.us_housing_units;


/* SQL LIMIT */
-- 3. Write a query that uses the LIMIT command to restrict the result set to only 15 rows.
SELECT *
FROM tutorial.us_housing_units
LIMIT 15;


/* SQL WHERE */
-- 4. Did the West Region ever produce more than 50,000 housing units in one month?
SELECT *
FROM tutorial.us_housing_units
WHERE west > 50;
-- 5. Did the South Region ever produce 20,000 or fewer housing units in one month?
SELECT *
FROM tutorial.us_housing_units
WHERE south <= 20;
-- 6. Write a query that only shows rows for which the month name is February.
SELECT *
FROM tutorial.us_housing_units
WHERE month_name = 'February';
-- 7. Write a query that only shows rows for which the month_name starts with the letter "N" or an earlier letter in the alphabet.
SELECT *
FROM tutorial.us_housing_units
WHERE month_name < 'o';
-- 8. Write a query that calculates the sum of all four regions in a separate column.
SELECT year,
       month,
       west, 
       south, 
       midwest,
       northeast,
       west + south + midwest +northeast AS usa_total
  FROM tutorial.us_housing_units;
-- 9. Write a query that returns all rows for which more units were produced in the West region than in the Midwest and Northeast combined.
SELECT year,
       month,
       west,
       south,
       midwest,
       northeast
FROM tutorial.us_housing_units
WHERE west > (midwest + northeast);
-- 10. Write a query that calculates the percentage of all houses completed in the United States represented by each region. Only return results from the year 2000 and later.
SELECT year,
       month,
       west/(west + south + midwest + northeast)*100 AS west_pc,
       south/(west + south + midwest + northeast)*100 AS south_pc,
       midwest/(west + south + midwest + northeast)*100 AS midwest_pc,
       northeast/(west + south + midwest + northeast)*100 AS northeast_pc
FROM tutorial.us_housing_units
WHERE year >= 2000;


/* SQL LIKE */
-- 11. Write a query that returns all rows for which Ludacris was a member of the group.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE "group" LIKE '%ludacris%';
-- 12. Write a query that returns all rows for which the first artist listed in the group has a name that begins with "DJ".
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE "group" LIKE 'DJ%';


/* SQL IN */
-- 13. Write a query that shows all of the entries for Elvis and M.C. Hammer.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE "group" IN ('M.C. Hammer', 'Hammer', 'Elvis Presley');


/* SQL BETWEEN */
-- 14. Write a query that shows all top 100 songs from January 1, 1985 through December 31, 1990.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year BETWEEN 1985 AND 1990;


/* SQL IS NULL */
-- 15. Write a query that shows all of the rows for which song_name is null.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE song_name IS NULL;


/* SQL AND */
-- 16. Write a query that surfaces all rows for top-10 hits for which Ludacris is part of the Group.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year_rank <= 10
  AND "group" LIKE '%ludacris%';
-- 17. Write a query that surfaces the top-ranked records in 1990, 2000, and 2010.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year_rank = 1
  AND year IN (1990, 2000, 2010);
-- 18. Write a query that lists all songs from the 1960s with "love" in the title.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year BETWEEN 1960 AND 1969
  AND song_name LIKE '%love%'
