-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES ('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hashedpassword1', '1234567890', 'guest');
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES ('uuid-2', 'Bob', 'Johnson', 'bob@example.com', 'hashedpassword2', '0987654321', 'host');
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES ('uuid-3', 'Carol', 'Williams', 'carol@example.com', 'hashedpassword3', '1122334455', 'guest');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES ('prop-1', 'uuid-2', 'Cozy Apartment', 'A nice place to stay', 'Nairobi', 50.00);
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES ('prop-2', 'uuid-2', 'Modern Loft', 'Spacious and modern loft in city center', 'Nairobi', 75.00);
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES ('prop-3', 'uuid-2', 'Lake House', 'Beautiful house by the lake', 'Kisumu', 120.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES ('booking-1', 'prop-1', 'uuid-1', '2023-10-01', '2023-10-05', 200.00, 'confirmed');
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES ('booking-2', 'prop-2', 'uuid-1', '2023-11-10', '2023-11-12', 150.00, 'pending');
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES ('booking-3', 'prop-3', 'uuid-3', '2023-12-20', '2023-12-25', 600.00, 'confirmed');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES ('pay-1', 'booking-1', 200.00, '2023-09-25 10:00:00', 'credit_card');
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES ('pay-2', 'booking-2', 150.00, '2023-11-01 12:00:00', 'paypal');
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES ('pay-3', 'booking-3', 600.00, '2023-12-15 09:00:00', 'stripe');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES ('rev-1', 'prop-1', 'uuid-1', 5, 'Great place, very clean!');
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES ('rev-2', 'prop-2', 'uuid-1', 4, 'Nice location, but a bit noisy.');
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES ('rev-3', 'prop-3', 'uuid-3', 5, 'Amazing experience by the lake!');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES ('msg-1', 'uuid-1', 'uuid-2', 'Hi Bob, is the apartment available in October?');
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES ('msg-2', 'uuid-2', 'uuid-1', 'Hi Alice, yes it is available for your dates.');
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES ('msg-3', 'uuid-3', 'uuid-2', 'Hello Bob, I am interested in the Lake House. Is it available?');
