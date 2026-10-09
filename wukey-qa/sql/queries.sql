-- Data-check queries for demo-db.sql.
-- Each query answers one testing question. An empty result means "no defect found".

-- Q1. Which listings does a guest see in a city? (compare with the list in the UI)
SELECT id, city, price_night
FROM listings
WHERE status = 'active' AND city = 'Astana';

-- Q2. Active listings with a wrong price (zero or negative)
SELECT id, city, price_night
FROM listings
WHERE status = 'active' AND price_night <= 0;

-- Q3. Listings whose owner does not exist
SELECT l.id, l.owner_id
FROM listings l
LEFT JOIN users u ON u.id = l.owner_id
WHERE u.id IS NULL;

-- Q4. Emails registered more than once
SELECT email, COUNT(*) AS accounts
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- Q5. Bookings where check-out is not after check-in
SELECT id, check_in, check_out
FROM bookings
WHERE check_out <= check_in;

-- Q6. Confirmed bookings on a listing that is not active
SELECT b.id AS booking_id, l.id AS listing_id, l.status AS listing_status
FROM bookings b
JOIN listings l ON l.id = b.listing_id
WHERE b.status = 'confirmed' AND l.status <> 'active';

-- Q7. Confirmed bookings of the same listing with overlapping dates (double booking)
SELECT a.id AS booking_a, b.id AS booking_b, a.listing_id
FROM bookings a
JOIN bookings b
  ON a.listing_id = b.listing_id
 AND a.id < b.id
 AND a.check_in < b.check_out
 AND b.check_in < a.check_out
WHERE a.status = 'confirmed' AND b.status = 'confirmed';

-- Q8. Booking card data: what the UI should show for booking 100
SELECT b.id, u.email AS tenant, l.city, l.price_night, b.check_in, b.check_out, b.total, b.status
FROM bookings b
JOIN users u    ON u.id = b.tenant_id
JOIN listings l ON l.id = b.listing_id
WHERE b.id = 100;
