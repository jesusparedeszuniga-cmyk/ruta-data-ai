/*SELECT, FROM*/
--Write a query to select all of the columns in the tutorial.us_housing_units table without using *.
SELECT year,
       month,
       month_name,
       west,
       midwest,
       south,
       northeast
  FROM tutorial.us_housing_units

  --Column Names
  --Write a query to select all of the columns in tutorial.us_housing_units and
  --rename them so that their first letters are capitalized.
  SELECT year AS "Year",
       month AS "Month",
       month_name AS "Month Name",
       west AS "West",
       midwest AS "Midwest",
       south AS "South",
       northeast AS "Northeast"
  FROM tutorial.us_housing_units


--LIMIT
--Write a query that uses the LIMIT command to restrict the result set to only 15 rows.
SELECT *
  FROM tutorial.us_housing_units
 LIMIT 15


 --WHERE
 -- Write a query that uses the WHERE to show rows for which month is equal to 1
 SELECT *
  FROM tutorial.us_housing_units
 WHERE month = 1


 --Comparison operators
 --Did the West Region ever produce more than 50,000 housing units in one month?
 SELECT *
  FROM tutorial.us_housing_units
 WHERE west > 50

 --Did the South Region ever produce 20,000 or fewer housing units in one month?
 SELECT *
  FROM tutorial.us_housing_units
 WHERE south <= 20

--Write a query that only shows rows for which the month name is February.
SELECT *
  FROM tutorial.us_housing_units
 WHERE month_name = 'February'

 --Write a query that only shows rows for which the month_name starts with 
 --the letter "N" or an earlier letter in the alphabet.
 SELECT *
  FROM tutorial.us_housing_units
 WHERE month_name < 'o'

 --Arithmetic
 --Write a query that calculates the sum of all four regions in a separate column.
 SELECT year,
       month,
       west,
       south,
       midwest,
       northeast,
       west + south + midwest +northeast AS usa_total
  FROM tutorial.us_housing_units

  --Write a query that returns all rows for which more units were produced in the West region 
  --than in the Midwest and Northeast combined.
  SELECT year,
       month,
       west,
       south,
       midwest,
       northeast
  FROM tutorial.us_housing_units
  WHERE west > (midwest + northeast)

  --Write a query that calculates the percentage of all houses completed in the United States represented 
  --by each region. Only return results from the year 2000 and later.
  SELECT year,
       month,
       west/(west + south + midwest + northeast)*100 AS west_pct,
       south/(west + south + midwest + northeast)*100 AS south_pct,
       midwest/(west + south + midwest + northeast)*100 AS midwest_pct,
       northeast/(west + south + midwest + northeast)*100 AS northeast_pct
  FROM tutorial.us_housing_units
 WHERE year >= 2000


--LIKE, ILIKE
--Write a query that returns all rows for which Ludacris was a member of the group.
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group_name" ilike '%ludacris%'

 --Write a query that returns all rows for which the first artist listed in the group has a name that begins with "DJ".
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group_name" LIKE 'DJ%'


 /*IN*/
 --Write a query that shows all of the entries for Elvis and M.C. Hammer.
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group_name" IN ('M.C. Hammer', 'Hammer', 'Elvis Presley')

 --BETWEEN
 --Write a query that shows all top 100 songs from January 1, 1985 through December 31, 1990.
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year BETWEEN 1985 AND 1990

/*IS NULL 
 Write a query that shows all of the rows for which song_name is null.*/
SELECT *
FROM tutorial_billboard_top_100_year_end
WHERE song_name IS NULL OR TRIM(song_name) = '';


/* AND 
 Write a query that surfaces all rows for top-10 hits for which Ludacris is part of the Group.*/
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank <= 10
   AND "group_name" ILIKE '%ludacris%'


/* OR
Write a query that returns all rows for top-10 songs that featured either Katy Perry or Bon Jovi.*/
 SELECT *
      FROM tutorial.billboard_top_100_year_end
     WHERE year_rank <= 10
       AND ("group_name" ILIKE '%katy perry%' OR "group" ILIKE '%bon jovi%')

/*Write a query that returns all songs with titles that contain the word "California" in either 
the 1970s or 1990s.*/
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE song_name LIKE '%California%'
   AND (year BETWEEN 1970 AND 1979 OR year BETWEEN 1990 AND 1999)

/*Write a query that lists all top-100 recordings that feature Dr. Dre before 2001 or after 2009.*/
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group_name" ILIKE '%dr. dre%'
   AND (year <= 2000 OR year >= 2010)

/*NOT
Write a query that returns all rows for songs that were on the charts in 2013 and do not contain the letter "a".*/
 SELECT *
      FROM tutorial.billboard_top_100_year_end
     WHERE song_name NOT ILIKE '%a%'
       AND year = 2013

/*ORDER BY
Write a query that returns all rows from 2012, ordered by song title from Z to A.*/
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2012
 ORDER BY song_name DESC

 /*Write a query that returns all rows from 2010 ordered by rank, with artists ordered alphabetically for each song.*/
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2010
 ORDER BY year_rank, artist

 /*Write a query that shows all rows for which T-Pain was a group member, ordered by rank on the charts, 
 from lowest to highest rank (from 100 to 1).*/
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE "group" ILIKE '%t-pain%'
 ORDER BY year_rank DESC

 /*Write a query that returns songs that ranked between 10 and 20 (inclusive) in 1993, 2003, or 2013.
 Order the results by year and rank, and leave a comment on each line of the WHERE clause to indicate what that line does*/
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year IN (2013, 2003, 1993)  --Select the relevant years
   AND year_rank BETWEEN 10 AND 20  --Limit the rank to 10-20
 ORDER BY year, year_rank


--GROUP BY
--Calculate the total number of shares traded each month. Order your results chronologically.
SELECT year,
       month,
       SUM(volume) AS volume_sum
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
 ORDER BY year, month

 SELECT year,
       month,
       SUM(volume) AS volume_sum
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1, 2
 ORDER BY year, month

--Write a query to calculate the average daily price change in Apple stock, grouped by year.
SELECT year,
       AVG(close - open) AS avg_daily_change
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1
 ORDER BY 1

--Write a query that calculates the lowest and highest prices that Apple stock achieved each month.
SELECT year,
       month,
       MIN(low) AS lowest_price,
       MAX(high) AS highest_price
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1, 2
 ORDER BY 1, 2

 



