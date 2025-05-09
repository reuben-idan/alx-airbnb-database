Sure! Hereâ€™s a `README.md` file for your sample data SQL inserts. This version explains the purpose, structure, and usage of the `INSERT` statements for testing or demonstration purposes, and fits perfectly alongside a `sample_data.sql` file in your GitHub project:

---

````markdown
# í·ª Airbnb Database Sample Data

This file contains realistic **sample data** for populating the Airbnb-style database. It is designed to help developers and testers work with meaningful records across all major entities, including `Users`, `Properties`, `Bookings`, `Payments`, `Reviews`, and `Messages`.

---

## í³‚ File: `sample_data.sql`

### í²¡ What it includes:
- Multiple **users** (guest, host, admin)
- Hosted **property listings** in different locations
- **Bookings** by users for specific properties
- Associated **payments** with a defined method
- Honest **reviews** reflecting guest experience
- **Messages** exchanged between hosts and guests

---

## í´„ Entities & Relationships Covered

| Table     | Relationships                                      |
|-----------|----------------------------------------------------|
| `Users`   | Independent â€“ referenced by other tables           |
| `Property`| Belongs to `Users` via `host_id`                   |
| `Booking` | Links `Users` and `Property`                       |
| `Payment` | Linked one-to-one with `Booking`                   |
| `Review`  | Linked to both `Users` and `Property`              |
| `Message` | Self-referencing user communication                |

---

## íº€ Usage

### 1. Ensure tables have been created:
Run your `create_tables.sql` script first.

### 2. Run this sample data script:
```bash
psql -U your_user -d your_db -f sample_data.sql
````

or for MySQL:

```bash
mysql -u your_user -p your_db < sample_data.sql
```

### 3. Start querying!

Try:

```sql
SELECT * FROM Booking WHERE user_id = '11111111-1111-1111-1111-111111111111';
SELECT * FROM Message WHERE sender_id = '11111111-1111-1111-1111-111111111111';
```

---

## í³Œ Notes

* **UUIDs** are hardcoded for consistency and traceability across tables.
* **Passwords** in `Users` are placeholder hashes and not secure.
* **Dates** and **timestamps** are set using `CURRENT_TIMESTAMP` but can be customized.
* Data values reflect real-world contexts (e.g., Ghana locations, Airbnb-style interactions).

---

## í±¤ Author

**Reuben Idan**
*Software Engineer & Backend Developer*
*Focused on scalable, secure, and human-centered digital solutions.*

---

Feel free to fork, extend, or adjust the data for your own use cases!

```


