## Partitioning Performance Report

### What I Did
I partitioned the Booking table by the `start_date` column, creating yearly partitions (2023, 2024, 2025).

### Performance Testing
I used `EXPLAIN ANALYZE` to test queries fetching bookings by date range before and after partitioning.

### Observations
- Before partitioning, queries scanned the entire Booking table, resulting in slower performance.
- After partitioning, the database only scanned the relevant partition(s), reducing query time and improving efficiency for date-based queries.

### Conclusion
Partitioning the Booking table by `start_date` significantly improved performance for queries filtering by date range.