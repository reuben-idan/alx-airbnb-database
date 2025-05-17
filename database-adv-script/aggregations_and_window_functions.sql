SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id, users.name
ORDER BY total_bookings DESC;



SELECT 
    property_id,
    property_title,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        properties.id AS property_id,
        properties.title AS property_title,
        COUNT(bookings.id) AS total_bookings
    FROM properties
    LEFT JOIN bookings ON properties.id = bookings.property_id
    GROUP BY properties.id, properties.title
) AS property_bookings;
