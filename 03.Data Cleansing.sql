-- Create the columns 'month and' 'day_of week'
-- Determine the ride length in minutes
-- Remove null values
DROP TABLE IF EXISTS `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1`;

CREATE TABLE `glossy-agency-419911.cyclistic.trips_2023_Q1_cleaned_1` AS
SELECT 
  A1.*,
  A2.ride_length_in_mins,
  CASE EXTRACT(DAYOFWEEK FROM A1.started_at) 
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUES'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THURS'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'    
  END AS day_of_week,
  CASE EXTRACT(MONTH FROM A1.started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
  END AS month
FROM `glossy-agency-419911.cyclistic.trips_2023_Q1` AS A1
FULL OUTER JOIN (
  SELECT 
    ride_id,
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_in_mins
  FROM `glossy-agency-419911.cyclistic.trips_2023_Q1`
) AS A2 ON A1.ride_id = A2.ride_id
WHERE 
  A1.start_station_name IS NOT NULL AND
  A1.start_station_id IS NOT NULL AND
  A1.end_station_name IS NOT NULL AND
  A1.end_station_id IS NOT NULL AND
  A1.start_lat IS NOT NULL AND
  A1.start_lng IS NOT NULL AND
  A1.end_lat IS NOT NULL AND
  A1.end_lng IS NOT NULL AND
  A2.ride_length_in_mins > 1 AND A2.ride_length_in_mins < 1440;
