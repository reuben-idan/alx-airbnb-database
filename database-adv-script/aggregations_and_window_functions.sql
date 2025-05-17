WITH UserBookingCounts AS (
    SELECT
        user_id,
        COUNT(booking_id) AS total_bookings
    FROM
        bookings
    GROUP BY
        user_id
),
PropertyBookingCounts AS (
    SELECT
        property_id,
        COUNT(booking_id) AS total_bookings
    FROM
        bookings
    GROUP BY
        property_id
)
SELECT
    pbc.property_id,
    pbc.total_bookings,
    ROW_NUMBER() OVER (ORDER BY pbc.total_bookings DESC) AS row_num_rank,
    RANK() OVER (ORDER BY pbc.total_bookings DESC) AS rank
FROM
    PropertyBookingCounts pbc
ORDER BY
    pbc.total_bookings DESC;

-- To view the total bookings per user, you can run this separate query:
SELECT
    user_id,
    total_bookings
FROM
    UserBookingCounts
ORDER BY
    total_bookings DESC;
