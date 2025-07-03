# Database Performance Monitoring Report

## Monitoring Tools Used
I used `EXPLAIN ANALYZE` to monitor the performance of frequently used queries.

---

## Example Query 1: Bookings with User Details

```sql
EXPLAIN ANALYZE
SELECT Booking.*, "User".first_name, "User".last_name
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id;
```

**Observation:**  
- Before indexing, the query used sequential scans, resulting in slower performance.

**Action Taken:**  
- Added an index on `Booking.user_id`.

**Result:**  
- After indexing, the query plan used index scans, and execution time improved.

---

## Example Query 2: Bookings by Date Range (Partitioned Table)

```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';
```

**Observation:**  
- Before partitioning, the query scanned the entire Booking table.
- After partitioning by `start_date`, only the relevant partition was scanned.

**Action Taken:**  
- Implemented table partitioning on `Booking` by `start_date`.

**Result:**  
- Query execution time for date-range queries was significantly reduced.

---

## Suggested Schema Adjustments

- Ensure indexes exist on all columns used in JOIN, WHERE, and ORDER BY clauses.
- Use partitioning for large tables with frequent range queries.
- Regularly monitor query plans and adjust indexes as data grows.

---

## Conclusion

Continuous monitoring with `EXPLAIN ANALYZE` helped identify and resolve performance bottlenecks. Indexing and partitioning led to measurable improvements in query speed and efficiency.
