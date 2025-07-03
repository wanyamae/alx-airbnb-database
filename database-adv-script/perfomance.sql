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
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id
WHERE Booking.status = 'confirmed'
  AND Property.location = 'New York';

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