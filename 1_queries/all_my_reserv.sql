-- Show all reservations for a user.

-- Select all columns from the reservations table, all columns from the properties table, and the average rating of the property.
-- The reservations will be for a single user, so use 1 for the user_id.
-- Order the results from the earliest start_date to the most recent start_date.
-- These will end up being filtered by either "Upcoming Reservations" or "Past Reservations", so only get reservations where the end_date is in the past.
-- Use now()::date to get today's date.
-- Limit the results to 10.
-- Expected Result:

-- We're only showing the id, title, start_date, and cost_per_night to save space on the screen. As time progresses, so will the returned timestamp from the now function. As such, your output may return more rows than what is shown in the example.

SELECT p.id, p.title, r.start_date, p.cost_per_night, AVG(pr.rating) as avg_rating
FROM properties p
JOIN reservations r ON r.property_id = p.id
JOIN users u ON u.id = r.guest_id
JOIN property_reviews pr ON pr.property_id = p.id
WHERE u.id = 1 AND r.end_date < NOW()
GROUP BY p.id, p.title, r.start_date, p.cost_per_night
ORDER BY r.start_date
LIMIT 10;