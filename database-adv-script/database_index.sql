-- database_index.sql

-- Instructions:
-- 1. Save this content as database_index.sql.
-- 2. Connect to your SQL database.
-- 3. Execute the commands in this file to create indexes.
-- 4. Use EXPLAIN (for most databases) or ANALYZE (for PostgreSQL) in your SQL client
--    to measure query performance BEFORE and AFTER adding these indexes.
-- 5. Compare the output to observe the impact of the indexes.

-- Index for User table on user_id (usually primary key, but good to explicitly ensure)
CREATE INDEX idx_user_id ON User (user_id);

-- Index for User table on email (for efficient lookups)
CREATE INDEX idx_user_email ON User (email);

-- Index for Booking table on booking_id (usually primary key)
CREATE INDEX idx_booking_id ON Booking (booking_id);

-- Index for Booking table on user_id (for filtering bookings by user)
CREATE INDEX idx_booking_user_id ON Booking (user_id);

-- Index for Booking table on property_id (for filtering bookings by property)
CREATE INDEX idx_booking_property_id ON Booking (property_id);

-- Index for Booking table on booking_date (for date-based queries)
CREATE INDEX idx_booking_date ON Booking (booking_date);

-- Consider a composite index on (user_id, booking_date) if you often query bookings by user within a date range
-- CREATE INDEX idx_booking_user_date ON Booking (user_id, booking_date);

-- Index for Property table on property_id (usually primary key)
CREATE INDEX idx_property_id ON Property (property_id);

-- Example queries to analyze BEFORE and AFTER creating indexes:

 EXPLAIN SELECT * FROM User WHERE email = 'test@example.com';
 ANALYZE SELECT * FROM User WHERE email = 'test@example.com';

 EXPLAIN SELECT * FROM Booking WHERE user_id = 123 AND booking_date BETWEEN '2025-01-01' AND '2025-12-31';
 ANALYZE SELECT * FROM Booking WHERE user_id = 123 AND booking_date BETWEEN '2025-01-01' AND '2025-12-31';

 EXPLAIN SELECT * FROM Booking b JOIN Property p ON b.property_id = p.property_id WHERE p.property_id = 456;
 ANALYZE SELECT * FROM Booking b JOIN Property p ON b.property_id = p.property_id WHERE p.property_id = 456;
