# Database Seed Data

This folder contains the `seed.sql` file, which I created to populate the Airbnb database with sample data for all tables.

## What's Included

- **Users:** Example users with different roles (guest, host).
- **Properties:** Sample property listings linked to a host.
- **Bookings:** Example bookings made by users for properties.
- **Payments:** Payments associated with bookings.
- **Reviews:** Reviews written by users for properties.

# Seed Data Included

Below is a summary of the sample data inserted into each table by `seed.sql`:

---

## Users
| user_id | first_name | last_name | email              | role  |
|---------|------------|-----------|--------------------|-------|
| uuid-1  | Alice      | Smith     | alice@example.com  | guest |
| uuid-2  | Bob        | Johnson   | bob@example.com    | host  |
| uuid-3  | Carol      | Williams  | carol@example.com  | guest |

---

## Properties
| property_id | host_id | name           | location | price_per_night |
|-------------|---------|----------------|----------|-----------------|
| prop-1      | uuid-2  | Cozy Apartment | Nairobi  | 50.00           |
| prop-2      | uuid-2  | Modern Loft    | Nairobi  | 75.00           |
| prop-3      | uuid-2  | Lake House     | Kisumu   | 120.00          |

---

## Bookings
| booking_id | property_id | user_id | start_date  | end_date    | total_price | status    |
|------------|-------------|---------|-------------|-------------|-------------|-----------|
| booking-1  | prop-1      | uuid-1  | 2023-10-01  | 2023-10-05  | 200.00      | confirmed |
| booking-2  | prop-2      | uuid-1  | 2023-11-10  | 2023-11-12  | 150.00      | pending   |
| booking-3  | prop-3      | uuid-3  | 2023-12-20  | 2023-12-25  | 600.00      | confirmed |

---

## Payments
| payment_id | booking_id | amount | payment_date         | payment_method |
|------------|------------|--------|----------------------|----------------|
| pay-1      | booking-1  | 200.00 | 2023-09-25 10:00:00  | credit_card    |
| pay-2      | booking-2  | 150.00 | 2023-11-01 12:00:00  | paypal         |
| pay-3      | booking-3  | 600.00 | 2023-12-15 09:00:00  | stripe         |

---

## Reviews
| review_id | property_id | user_id | rating | comment                        |
|-----------|-------------|---------|--------|--------------------------------|
| rev-1     | prop-1      | uuid-1  | 5      | Great place, very clean!       |
| rev-2     | prop-2      | uuid-1  | 4      | Nice location, but a bit noisy.|
| rev-3     | prop-3      | uuid-3  | 5      | Amazing experience by the lake!|

---

## Messages
| message_id | sender_id | recipient_id | message_body                                         |
|------------|-----------|--------------|------------------------------------------------------|
| msg-1      | uuid-1    | uuid-2       | Hi Bob, is the apartment available in October?       |
| msg-2      | uuid-2    | uuid-1       | Hi Alice, yes it is available for your dates.        |
| msg-3      | uuid-3    | uuid-2       | Hello Bob, I am interested in the Lake House. Is it available?
