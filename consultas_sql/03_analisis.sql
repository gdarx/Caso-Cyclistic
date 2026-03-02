## Promedio duracion del viaje
SELECT 
  member_casual, 
  AVG(ride_length_minutes) AS avg_ride_duration
FROM `peak-key-471723-v0.Casos.total2_2025`
GROUP BY member_casual;

## Viajes por hora
  WITH tabla_2 AS (
  SELECT *,
  EXTRACT(HOUR FROM started_at) AS hour
  FROM `peak-key-471723-v0.Casos.total2_2025` 
  )
SELECT 
  member_casual, 
  hour, 
  COUNT(*) AS total_rides
FROM tabla_2
GROUP BY member_casual, hour
ORDER BY hour;

## Viajes por dia de semana
SELECT 
  member_casual, 
  day_of_week, 
  COUNT(*) AS total_rides
FROM `peak-key-471723-v0.Casos.total2_2025`
GROUP BY member_casual, day_of_week
ORDER BY day_of_week;

## Viajes por mes
SELECT 
  member_casual, 
  month, 
  COUNT(*) AS total_month_rides
FROM `peak-key-471723-v0.Casos.total2_2025`
GROUP BY member_casual, month
ORDER BY month;

## Tipo de bicicleta
SELECT 
  member_casual, 
  rideable_type, 
  COUNT(*) AS total_rides
FROM `peak-key-471723-v0.Casos.total2_2025`
GROUP BY member_casual, rideable_type

## Rutas mas frecuentes
SELECT
    start_station_name,
    end_station_name,
    member_casual,
    AVG(start_lat) AS start_lat,
    AVG(start_lng) AS start_lng,
    AVG(end_lat) AS end_lat,  
    AVG(end_lng) AS end_lng,  
    COUNT(ride_id) AS num_trips
FROM
    `peak-key-471723-v0.Casos.total2_2025`
WHERE
    start_station_name IS NOT NULL AND end_station_name IS NOT NULL
GROUP BY
    start_station_name, end_station_name, member_casual
HAVING
    num_trips > 100 
ORDER BY
    num_trips DESC;


