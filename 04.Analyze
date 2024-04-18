-- Q : How do annual members and casual riders use Cyclistic bikes differently?
-- Types of bike

SELECT member_casual, rideable_type, 
COUNT(*) AS total_of_rides
FROM `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
GROUP BY member_casual, rideable_type
ORDER BY total_of_rides DESC;

/* The total of bike
  1.Highest is member with classic bike as 228088 and,
  2.Lowest is casual with docked_bike as 6689 */

-- No. of rides per month
select member_casual,month ,count(*) as total_trip_rideable
from `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
group by member_casual, month
order by total_trip_rideable DESC;

-- No.of rides per day of week
select member_casual,day_of_week ,count(*) as total_trip_rideable
from `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
group by member_casual, day_of_week
order by total_trip_rideable DESC;

-- No. of rides per hour
SELECT 
  member_casual,
  day_of_week,
  EXTRACT(HOUR FROM started_at) AS hours_per_day,
  COUNT(*) AS total_trip_rideable
FROM `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
GROUP BY member_casual, day_of_week, hours_per_day
ORDER BY total_trip_rideable DESC;

-- Average ride length per hours
SELECT 
  member_casual,
  day_of_week,
  AVG(ride_length_in_mins) as avg_travel_duration_hour
FROM `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
GROUP BY member_casual, day_of_week
ORDER BY avg_travel_duration_hour DESC;

-- Starting location
SELECT member_casual, start_station_name,
  AVG(start_lat) AS start_lat, 
  AVG(start_lng) AS start_lng,
  COUNT(*) AS total_rides
FROM `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
GROUP BY member_casual, start_station_name;

-- Ending location
SELECT member_casual, end_station_name,
  AVG(end_lat) AS end_lat, 
  AVG(end_lng) AS end_lng,
  COUNT(*) AS total_rides
FROM `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`
GROUP BY member_casual, end_station_name;
