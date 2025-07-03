SELECT Booking.user_id, "User".first_name, "User".last_name, COUNT(*) AS total_bookings
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id
GROUP BY Booking.user_id, "User".first_name, "User".last_name

SELECT 
    Property.property_id,
    Property.name,
    COUNT(Booking.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(Booking.booking_id) DESC) AS property_rank
FROM Property
LEFT JOIN Booking ON Property.property_id = Booking.property_id
GROUP BY Property.property_id, Property.name
ORDER BY property_rank;