## Para crear crear variables de tiempo y eliminar datos erroneos
CREATE TABLE `peak-key-471723-v0.Casos.total2_2025` AS
SELECT *,
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_minutes,
EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
EXTRACT(MONTH FROM started_at) AS month
FROM `peak-key-471723-v0.Casos.total_2025` 
WHERE
started_at < ended_at
AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 1

## Para verificar duplicados
SELECT ride_id,
COUNT(*) as duplicados
FROM `peak-key-471723-v0.Casos.total2_2025`
GROUP BY ride_id
HAVING COUNT(*) > 1;


