# Database Schema for ALX Airbnb Clone

This folder contains the SQL schema for the ALX Airbnb database project.

## Files

- **schema.sql**: Contains all SQL statements to create the database tables, primary keys, foreign keys, and constraints.

## How to Use

1. **Open MySQL Workbench** (or your preferred MySQL client).
2. **Create a new database** (e.g., `CREATE DATABASE airbnb;`).
3. **Select the database** (`USE airbnb;`).
4. **Run the contents of `schema.sql`** to create all tables and relationships.

## Tables Defined

- **User**: Stores user information (guests, hosts, admins).
- **Property**: Stores property/listing details.
- **Booking**: Stores booking/reservation information.
- **Payment**: Stores payment transactions for bookings.
- **Review**: Stores user reviews for properties.
- **Message**: Stores messages exchanged between users.

## Notes

- UUIDs are stored as `CHAR(36)` for MySQL compatibility.
- ENUM types are used for roles, booking status, and payment methods.
- Foreign keys enforce relationships between tables.
- Make sure your MySQL version supports all used features (MySQL 8+ recommended).

## Example

To create all tables, run:
```sql
SOURCE schema.sql;
```

---

For any issues or questions, please refer to the project documentation or