/*Write a query that shows all of the rows for which song_name is null.*/
SELECT *
FROM tutorial_billboard_top_100_year_end
WHERE song_name IS NULL OR TRIM(song_name) = '';

