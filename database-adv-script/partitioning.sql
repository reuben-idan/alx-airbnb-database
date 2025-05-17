-- 1. Drop the original table if you're recreating from scratch (optional for demo purposes)
DROP TABLE IF EXISTS bookings CASCADE;

-- 2. Create the partitioned table definition
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
) PARTITION BY RANGE (start_date);

-- 3. Create partitions based on date ranges
CREATE TABLE bookings_2022 PARTITION OF bookings
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- 4. Sample index creation on partition (recommended for date queries)
CREATE INDEX idx_bookings_2023_start_date ON bookings_2023(start_date);

-- 5. Sample query to test performance (e.g., fetching bookings for 2023)
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2023-05-01' AND '2023-05-31';
