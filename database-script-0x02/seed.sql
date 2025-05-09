Hereâ€™s a complete set of **SQL `INSERT` statements** to populate the Airbnb database with **realistic sample data**. These cover all core entities: `Users`, `Property`, `Booking`, `Payment`, `Review`, and `Message`.

Assuming the tables have already been created (from your `CREATE TABLE` script), you can run these inserts in the same environment (e.g., PostgreSQL or MySQL with minor syntax adjustments for ENUMs or UUID handling).

---

### í´¹ Insert into `Users`

```sql
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Mensah', 'alice@example.com', 'hashed_password_1', '0244000001', 'guest', CURRENT_TIMESTAMP),
  ('22222222-2222-2222-2222-222222222222', 'Kojo', 'Appiah', 'kojo@example.com', 'hashed_password_2', '0244000002', 'host', CURRENT_TIMESTAMP),
  ('33333333-3333-3333-3333-333333333333', 'Ama', 'Owusu', 'ama@example.com', 'hashed_password_3', NULL, 'admin', CURRENT_TIMESTAMP);
```

---

### í´¹ Insert into `Property`

```sql
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Beachside Bungalow', 'Cozy bungalow near the beach.', 'Cape Coast', 85.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Mountain View Cabin', 'Quiet cabin with scenic views.', 'Aburi Hills', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
```

---

### í´¹ Insert into `Booking`

```sql
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-06-10', '2025-06-15', 425.00, 'confirmed', CURRENT_TIMESTAMP),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-03', 240.00, 'pending', CURRENT_TIMESTAMP);
```

---

### í´¹ Insert into `Payment`

```sql
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 425.00, CURRENT_TIMESTAMP, 'credit_card');
```

---

### í´¹ Insert into `Review`

```sql
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Super clean and relaxing.', CURRENT_TIMESTAMP),
  ('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 4, 'Beautiful view, but the road was rough.', CURRENT_TIMESTAMP);
```

---

### í´¹ Insert into `Message`

```sql
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Kojo, is the bungalow available for early check-in?', CURRENT_TIMESTAMP),
  ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, yes it is. You can check in by 10 AM.', CURRENT_TIMESTAMP);
```

---

