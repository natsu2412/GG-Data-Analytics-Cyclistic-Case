-- clean existing table
drop table if exists cyclistic.trips_2023_Q1;

--- combining 3 month in Q1 0f 2023 (Not excced 100 MB able upload from local)
CREATE TABLE cyclistic.trips_2023_Q1 AS
  SELECT *
  FROM (
    SELECT * FROM `glossy-agency-419911.cyclistic.202301_trip`
    UNION ALL
    SELECT * FROM `glossy-agency-419911.cyclistic.202302_trip`
    UNION ALL
    SELECT * FROM `glossy-agency-419911.cyclistic.202303_trip`
  );
