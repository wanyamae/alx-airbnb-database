SELECT Booking.*, "User".*
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id


SELECT Property.*, Review.*
FROM Property
LEFT JOIN Revuew ON Property.property_id = Review.property_id


SELECT "User".*, Booking.*
FROM "User"
FULL OUTER JOIN Booking ON "User".user_id = Booking.user_id