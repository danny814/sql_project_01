WITH hotels AS (

SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT arrival_date_year,
SUM((stays_in_weekend_nights + stays_in_week_nights) * adr) AS revenue
FROM hotels
GROUP BY arrival_date_year