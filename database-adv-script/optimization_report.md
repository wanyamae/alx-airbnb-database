# Query Optimization Report

## Objective
Optimize a complex query that retrieves all bookings along with user details, property details, and payment details.

---

## Initial Query

```sql
SELECT 
    Booking.*,
    "User".first_name,
    "User".last_name,
    Property.name AS property_name,
    Property.location,
    Payment.amount,
    Payment.payment_date
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id
INNER JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;
```

---

## Performance Analysis (Before Optimization)

I measured the performance using `EXPLAIN ANALYZE`:

```sql
EXPLAIN ANALYZE
SELECT 
    Booking.*,
    "User".first_name,
    "User".last_name,
    Property.name AS property_name,
    Property.location,
    Payment.amount,
    Payment.payment_date
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id
INNER JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;
```

**Findings:**  
- The query performed multiple joins and selected all columns from the Booking table, which increased the amount of data processed.
- Sequential scans were observed on large tables, leading to higher execution time.

---

## Refactored Query

To improve performance, I:
- Selected only the necessary columns instead of using `SELECT Booking.*`
- Used table aliases for readability
- Ensured indexes exist on join columns (`user_id`, `property_id`, `booking_id`)

```sql
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.payment_date
FROM Booking b
INNER JOIN "User" u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
```

---

## Performance Analysis (After Optimization)

I ran `EXPLAIN ANALYZE` again on the refactored query.

**Results:**  
- The query plan showed more use of index scans instead of sequential scans.
- Execution time was reduced.
- Less data was transferred due to selecting only the required columns.

---

## Conclusion

By refactoring the query to select only needed columns and ensuring proper indexing, I significantly improved the performance and efficiency of retrieving booking, user, property, and