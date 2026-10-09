-- Demo database for SQL data checks.
-- Invented data. It is NOT the WuKey database: only the idea (users, listings, bookings) is similar.
-- Works in SQLite and PostgreSQL.

CREATE TABLE users (
  id         INTEGER PRIMARY KEY,
  email      TEXT NOT NULL,
  role       TEXT NOT NULL,          -- tenant | owner
  created_at TEXT NOT NULL           -- YYYY-MM-DD
);

CREATE TABLE listings (
  id          INTEGER PRIMARY KEY,
  owner_id    INTEGER NOT NULL,
  city        TEXT NOT NULL,
  price_night INTEGER NOT NULL,      -- tenge per night
  status      TEXT NOT NULL          -- active | draft | archived
);

CREATE TABLE bookings (
  id         INTEGER PRIMARY KEY,
  listing_id INTEGER NOT NULL,
  tenant_id  INTEGER NOT NULL,
  check_in   TEXT NOT NULL,          -- YYYY-MM-DD
  check_out  TEXT NOT NULL,          -- YYYY-MM-DD
  total      INTEGER NOT NULL,       -- tenge
  status     TEXT NOT NULL           -- pending | confirmed | cancelled
);

INSERT INTO users VALUES
  (1, 'owner1@example.com',  'owner',  '2026-01-10'),
  (2, 'owner2@example.com',  'owner',  '2026-02-03'),
  (3, 'tenant1@example.com', 'tenant', '2026-03-15'),
  (4, 'tenant2@example.com', 'tenant', '2026-04-01'),
  (5, 'tenant1@example.com', 'tenant', '2026-05-20');   -- defect: duplicate email

INSERT INTO listings VALUES
  (10, 1, 'Astana',    20000, 'active'),
  (11, 1, 'Astana',    35000, 'draft'),
  (12, 2, 'Almaty',    28000, 'active'),
  (13, 2, 'Kokshetau',     0, 'active'),                -- defect: zero price on an active listing
  (14, 9, 'Almaty',    15000, 'active');                -- defect: owner does not exist

INSERT INTO bookings VALUES
  (100, 10, 3, '2026-06-01', '2026-06-04',  60000, 'confirmed'),
  (101, 10, 4, '2026-06-03', '2026-06-05',  40000, 'confirmed'),  -- defect: overlaps booking 100
  (102, 12, 3, '2026-07-10', '2026-07-12',  50000, 'confirmed'),  -- defect: total is not 2 x 28000
  (103, 12, 4, '2026-08-05', '2026-08-03',  56000, 'pending'),    -- defect: check_out before check_in
  (104, 11, 4, '2026-09-01', '2026-09-02',  35000, 'confirmed'),  -- defect: booking on a draft listing
  (105, 12, 4, '2026-09-10', '2026-09-12',  56000, 'cancelled');
