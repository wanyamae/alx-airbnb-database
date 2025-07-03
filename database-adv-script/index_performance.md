## Index Performance Analysis

### Indexed Columns
I created indexes on the following columns because they are frequently used in JOIN, WHERE, or ORDER BY clauses:
- "User".user_id
- Booking.user_id
- Booking.property_id
- Property.property_id
- Review.property_id

### SQL Commands Used
See `database_index.sql` for the exact `CREATE INDEX` statements.

### Measuring Performance
I used `EXPLAIN ANALYZE` to measure query performance before and after adding indexes. For example:

```sql
EXPLAIN ANALYZE
SELECT Booking.*, "User".*
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id;
```

### Results
- Before indexing, queries used sequential scans and took longer to execute.
- After indexing, the database used index scans, and execution time was reduced significantly.
- Indexes improved performance for join and filter operations on large tables.

### Conclusion
Adding indexes to high-usage columns greatly improved query performance and efficiency.