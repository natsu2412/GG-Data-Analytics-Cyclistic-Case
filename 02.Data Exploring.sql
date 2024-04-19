--check the number of nulls per row
/*
SELECT COUNT(*)-COUNT(A) As A, COUNT(*)-COUNT(B) As B, COUNT(*)-COUNT(C) As C
FROM YourTable; 
*/
SELECT
  COUNT(*) - COUNT(ride_id) AS ride_id_null,
  COUNT(*) - COUNT(rideable_type) AS rideable_type_null,
  COUNT(*) - COUNT(started_at) AS started_at_null,
  COUNT(*) - COUNT(ended_at) AS ended_at_null,  
  COUNT(*) - COUNT(start_station_name) AS start_station_name_null, -- 88104 null values
  COUNT(*) - COUNT(start_station_id) AS start_station_id_nulll, -- 88236 null values
  COUNT(*) - COUNT(end_station_name) AS end_station_name_null, -- 93016 null values
  COUNT(*) - COUNT(end_station_id) AS end_station_id_null, -- 93157 null values
  COUNT(*) - COUNT(start_lat) AS start_lat_null,
  COUNT(*) - COUNT(start_lng) AS start_lng_null,
  COUNT(*) - COUNT(end_lat) AS end_lat_null, --426 null values
  COUNT(*) - COUNT(end_lng) AS end_lng_null, -- 426 null values
  COUNT(*) - COUNT(member_casual) AS member_casual_null

  FROM `glossy-agency-419911.cyclistic.trips_2023_Q1` 

-- checking no of rows is 639424
select count(*) AS number_of_row
from glossy-agency-419911.cyclistic.trips_2023_Q1; 

-- checking duplicate of rows is 0
SELECT 
  COUNT(*) - COUNT(DISTINCT ride_id) AS duplicate_of_rows
FROM 
  `glossy-agency-419911.cyclistic.trips_2023_Q1`;

-- checking length of ride_id - 16 chars
SELECT 
  COUNT(DISTINCT LEN) AS group_LEN_id,
  LEN
FROM (
  SELECT 
    LENGTH(ride_id) AS LEN
  FROM 
    `glossy-agency-419911.cyclistic.trips_2023_Q1`
) AS subquery
GROUP BY 
  LEN
ORDER BY 
  LEN ASC;

-- checking rideable_type - 3

select distinct rideable_type, count(ride_id) as no_vehicle
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
group by rideable_type;

-- check member_type
select distinct member_casual, count(member_casual) as member_type
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
GROUP BY member_casual;

-- start_station_name, start_station_id

SELECT DISTINCT start_station_name
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
ORDER BY start_station_name; --1067

SELECT DISTINCT start_station_name
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
ORDER BY start_station_name; --1067

SELECT DISTINCT end_station_name
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
ORDER BY end_station_name; --1121

SELECT DISTINCT end_station_id
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
ORDER BY end_station_id; --1083

-- calculate usage time of bike more than a day
select count(*) AS longer_than_a_day
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
where (
  extract(HOUR from (ended_at - started_at)) * 60 +
  extract(MINUTE from (ended_at - started_at)) +
  extract(SECOND from (ended_at - started_at)) / 60) >= 1440; --387

-- calculate usage time of bike less than minute
select count(*) AS less_than_a_minute
from `glossy-agency-419911.cyclistic.trips_2023_Q1` 
where (
  extract(HOUR from (ended_at - started_at)) * 60 +
  extract(MINUTE from (ended_at - started_at)) +
  extract(SECOND from (ended_at - started_at)) / 60) <= 1;  --21452


