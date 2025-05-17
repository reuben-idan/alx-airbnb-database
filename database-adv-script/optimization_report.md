# Optimization Report

## Project: ALX Airbnb Database Module - Query Performance Optimization

### Objective
The objective of this task was to analyze, identify, and improve the performance of a complex SQL query that retrieves data from multiple related tables: `bookings`, `users`, `properties`, and `payments`.

---

## Initial Query Overview

```sql
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
