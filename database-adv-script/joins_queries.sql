SELECT Booking.*, "User".*
FROM Booking
INNER JOIN "User" ON Booking.user_id = "User".user_id


SELECT Property.*, Review.*
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id
ORDER BY Property.property_id;

SELECT "User".*, Booking.*
FROM "User"
FULL OUTER JOIN Booking ON "User".user_id = Booking.user_id

SELECT property_id, name
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

SELECT user_id, first_name, last_name
FROM "User" u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
) > 3;