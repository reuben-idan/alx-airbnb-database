Sure! Here is a `README.md` that documents the purpose, structure, and usage of the SQL `CREATE TABLE` statements for the Airbnb database schema. This is intended to be placed alongside your SQL file in a GitHub repository.

---

````markdown
# Airbnb Database Schema – SQL Definition

This project contains the SQL `CREATE TABLE` statements for the Airbnb-like platform database. The schema is designed according to best practices and follows normalization up to **Third Normal Form (3NF)** to ensure data integrity, reduce redundancy, and support scalability.

---

## � Contents

- `create_tables.sql`: SQL script to define all database tables, including:
  - Users
  - Property
  - Booking
  - Payment
  - Review
  - Message

---

## �️ Tables Overview

### �‍� Users
Stores platform user data including guests, hosts, and admins.

### � Property
Represents listings hosted by users, including description, price, and location.

### � Booking
Captures reservation details between users and properties.

### � Payment
Tracks payments made for bookings, with method and amount.

### � Review
Allows users to leave reviews and ratings on properties.

### � Message
Supports private messaging between users.

---

## ✅ Constraints & Relationships

- **Primary Keys** on all tables using UUIDs.
- **Foreign Keys** ensure referential integrity between:
  - `Property.host_id → Users.user_id`
  - `Booking.property_id → Property.property_id`
  - `Booking.user_id → Users.user_id`
  - `Payment.booking_id → Booking.booking_id`
  - `Review.property_id → Property.property_id`
  - `Review.user_id → Users.user_id`
  - `Message.sender_id` and `recipient_id → Users.user_id`
- **Enums and CHECKs** used for role, booking status, payment method, and rating values.
- **Indexes** included on frequently queried columns for performance (e.g., `email`, `property_id`, `booking_id`).

---

## � Getting Started

1. Clone the repository.
2. Ensure you have a PostgreSQL or MySQL database instance running.
3. Execute the script:
   ```bash
   psql -U your_user -d your_db -f create_tables.sql
````

or

```bash
mysql -u your_user -p your_db < create_tables.sql
```

---

## � Notes

* Passwords should be stored as hashes only (`password_hash`).
* Enum types may need to be defined separately in PostgreSQL.
* Timestamps default to `CURRENT_TIMESTAMP` for created/updated fields.

---

## � Author

**Reuben Idan**
Software Engineer | DataHaul Co-Founder | Database & Backend Enthusiast
�� Ghana

```


```
