-- database_index.sql

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

-- To measure performance BEFORE adding indexes (example queries):
-- EXPLAIN SELECT * FROM User WHERE email = 'test@example.com';
-- EXPLAIN SELECT * FROM Booking WHERE user_id = 123 AND booking_date BETWEEN '2024-01-01' AND '2024-12-31';
-- EXPLAIN SELECT * FROM Booking b JOIN Property p ON b.property_id = p.property_id WHERE p.property_id = 456;

-- Execute the CREATE INDEX statements in this file against your database.

-- To measure performance AFTER adding indexes (run the same example queries with EXPLAIN):
-- EXPLAIN SELECT * FROM User WHERE email = 'test@example.com';
-- EXPLAIN SELECT * FROM Booking WHERE user_id = 123 AND booking_date BETWEEN '2024-01-01' AND '2024-12-31';
-- EXPLAIN SELECT * FROM Booking b JOIN Property p ON b.property_id = p.property_id WHERE p.property_id = 456;

-- Compare the output of the EXPLAIN statements before and after adding the indexes.
-- Look for improvements in the 'key' column (showing index usage), 'type' (avoiding 'ALL' if possible), and the number of 'rows' examined.

-- In PostgreSQL, you can use ANALYZE instead of EXPLAIN for more detailed performance information:
-- ANALYZE SELECT * FROM User WHERE email = 'test@example.com';
-- ANALYZE SELECT * FROM Booking WHERE user_id = 123 AND booking_date BETWEEN '2024-01-01' AND '2024-12-31';
-- ANALYZE SELECT * FROM Booking b JOIN Property p ON b.property_id = p.property_id WHERE p.property_id = 456;
