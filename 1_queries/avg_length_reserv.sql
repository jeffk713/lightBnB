-- Get the average duration of all reservations.

SELECT AVG(end_date - start_date) as avg_reserv_duration
FROM reservations