-- Initial complex query to retrieve bookings, user, property, and payment details
EXPLAIN SELECT
    b.booking_id,
    b.booking_date,
    b.check_in_date,
    b.check_out_date,
    b.number_of_guests,
    u.user_id,
    u.username,
    u.email,
    p.property_id,
    p.property_name,
    p.location,
    pm.payment_id,
    pm.payment_date,
    pm.amount,
    pm.payment_status
FROM
    Booking b
JOIN
    User u ON b.user_id = u.user_id
JOIN
    Property p ON b.property_id = p.property_id
JOIN
    Payment pm ON b.booking_id = pm.booking_id;


-- Optimized version of the original query
-- Optimized Query with WHERE and AND
SELECT
    b.id AS booking_id,
    b.created_at,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount AS payment_amount,
    pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE pay.status = 'completed'
  AND b.created_at >= '2023-01-01';




EXPLAIN ANALYZE
SELECT
    b.id AS booking_id,
    b.created_at AS booking_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.title AS property_title,
    pay.id AS payment_id,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id;
