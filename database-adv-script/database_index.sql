-- Index on user_id in bookings (for JOIN and WHERE)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings (for JOIN with properties)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on created_at in bookings (for filtering/sorting by date)
CREATE INDEX idx_bookings_created_at ON bookings(created_at);

-- Index on city in properties (for filtering properties by location)
CREATE INDEX idx_properties_city ON properties(city);

-- Example Query: Find all bookings for a specific user
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE user_id = 5;

-- Another Example: Join properties and bookings
EXPLAIN ANALYZE
SELECT p.title, b.created_at
FROM properties p
JOIN bookings b ON p.id = b.property_id
WHERE p.city = 'Accra'
ORDER BY b.created_at DESC;
