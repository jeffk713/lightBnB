-- Get a list of the most visited cities.

-- Select the name of the city and the number of reservations for that city.
-- Order the results from highest number of reservations to lowest number of reservations.

SELECT p.city, COUNT(r.*) total_vist_num
FROM properties p 
JOIN reservations r ON r.property_id = p.id
GROUP BY p.city
ORDER BY total_vist_num DESC