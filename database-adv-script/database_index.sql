
-- Performance measurement example:
-- EXPLAIN ANALYZE
-- SELECT Booking.*, "User".*
-- FROM Booking
-- INNER JOIN "User" ON Booking.user_id = "User".user_id;

CREATE INDEX idx_user_user_id ON "User"(user_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_property_id ON Property(property_id);
CREATE INDEX idx_review_property_id ON Review(property_id);
