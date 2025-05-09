# Airbnb Database Design Project

**DataScape: Mastering Database Design**  
This repository encapsulates a meticulously crafted database schema for a simulated Airbnb-like platform. Designed for scalability, integrity, and optimal performance, this project demonstrates best practices in relational database design and normalization principles.

---

## 📜 Overview

The database schema is tailored to support core functionalities of an Airbnb-like platform, including:

- **User Management**: Capture user details, roles, and account creation timestamps.
- **Property Listings**: Maintain detailed records of properties, including hosts, descriptions, pricing, and locations.
- **Booking System**: Manage bookings with comprehensive tracking for dates, pricing, and status.
- **Payment Handling**: Streamline payment records, methods, and transactions.
- **Reviews & Feedback**: Enable users to leave ratings and comments on properties.
- **Messaging Platform**: Facilitate user-to-user communication with a messaging system.

---

## 🏗️ Key Features

1. **Third Normal Form (3NF) Compliance**  
   The schema adheres to database normalization principles, ensuring minimal redundancy and enhanced data integrity.

2. **Extensibility**  
   Designed with future scalability in mind, the schema can be extended to incorporate additional features such as role-based permissions or advanced analytics.

3. **Scalability**  
   The structure supports high volumes of data while maintaining performance through proper indexing, relationships, and normalization.

4. **Focus on Flexibility**  
   Key enums, such as `location` and `payment_method`, are designed for seamless normalization into dedicated tables if needed.

---

## 🛠️ Technologies Used

- **Database**: Relational Database Management Systems (RDBMS)
- **Schema Design Tools**: Entity-Relationship Diagrams (ERD) for visualizing relationships
- **SQL**: Structured Query Language for schema creation and management

---

## 📂 Repository Structure

- `ERD/`: Contains the Entity-Relationship Diagram and related documentation
- `requirements.md`: Detailed requirements and analysis for the database
- `normalization.md`: Documentation of normalization review up to the Third Normal Form (3NF)
- Additional files for future enhancements

---

## 📈 Goals

This project serves as an educational resource and a practical demonstration of advanced database design principles. Whether you're a student, data architect, or software engineer, this repository offers insights into designing robust and efficient database systems.

---

## 🧠 Author

**Reuben Idan**  
Software Engineer & Data Architect  
Passionate about crafting scalable, efficient, and elegant database systems.

---

Feel free to contribute or use this project as a reference for your own database design endeavors!
