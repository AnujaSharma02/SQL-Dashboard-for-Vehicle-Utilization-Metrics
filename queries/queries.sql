SELECT vehicle_id, DATE(start_time) AS trip_day, SUM(distance_km) AS total_km
FROM trips
GROUP BY vehicle_id, trip_day;


SELECT vehicle_id,AVG(strftime('%s', charge_end) - strftime('%s', charge_start)) / 60 AS avg_minutes
FROM charging_sessions
GROUP BY vehicle_id;


SELECT v.region, SUM(t.distance_km) AS total_km
FROM trips t
JOIN vehicles v ON t.vehicle_id = v.vehicle_id
GROUP BY v.region;
