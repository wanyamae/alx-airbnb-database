![alt text](ERP.drawio.png)

## Entity Relationships

### 1. User ↔ Property
- **One-to-Many:** A User (host) can have many Properties. Each Property belongs to one User (host).
- **Foreign Key:** `Property.host_id` → `User.user_id`

### 2. User ↔ Booking
- **One-to-Many:** A User (guest) can make many Bookings. Each Booking is made by one User.
- **Foreign Key:** `Booking.user_id` → `User.user_id`

### 3. Property ↔ Booking
- **One-to-Many:** A Property can have many Bookings. Each Booking is for one Property.
- **Foreign Key:** `Booking.property_id` → `Property.property_id`

### 4. Booking ↔ Payment
- **One-to-Many:** A Booking can have multiple Payments. Each Payment is for one Booking.
- **Foreign Key:** `Payment.booking_id` → `Booking.booking_id`

### 5. Property ↔ Review
- **One-to-Many:** A Property can have many Reviews. Each Review is for one Property.
- **Foreign Key:** `Review.property_id` → `Property.property_id`

### 6. User ↔ Review
- **One-to-Many:** A User (guest) can write many Reviews. Each Review is written by one User.
- **Foreign Key:** `Review.user_id` → `User.user_id`

### 7. User ↔ Message
- **One-to-Many (Sender), One-to-Many (Recipient):** A User can send many Messages and receive many Messages.
- **Foreign Keys:**  
  - `Message.sender_id` → `User.user_id`  
  - `Message.recipient_id` → `User.user_id`

