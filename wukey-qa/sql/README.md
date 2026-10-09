# SQL data checks — demo

**This is a demo.** The queries run on a small invented database ([demo-db.sql](demo-db.sql)), not on the WuKey database. The data model is only similar in idea: users, listings, bookings. Several defects are planted in the data on purpose, and each query finds one of them.

Purpose: show how I use `SELECT`, `WHERE`, `JOIN`, `GROUP BY` to check data behind the UI.

## How to run

Any SQLite or PostgreSQL client:

```bash
sqlite3 demo.db < demo-db.sql
sqlite3 -header -column demo.db < queries.sql
```

## Queries and results

Executed on 2026-10-09 in SQLite. Queries: [queries.sql](queries.sql).

| # | Testing question | SQL used | Result |
|---|---|---|---|
| Q1 | Which listings does a guest see in Astana? | `WHERE` | Listing 10 only — draft listing 11 is correctly hidden |
| Q2 | Active listings with zero or negative price | `WHERE` | Listing 13, price 0 |
| Q3 | Listings whose owner does not exist | `LEFT JOIN … IS NULL` | Listing 14, owner 9 |
| Q4 | Emails registered more than once | `GROUP BY … HAVING` | `tenant1@example.com`, 2 accounts |
| Q5 | Check-out not after check-in | `WHERE` | Booking 103 |
| Q6 | Confirmed booking on a non-active listing | `JOIN` | Booking 104 on draft listing 11 |
| Q7 | Double booking: overlapping dates on one listing | self `JOIN` | Bookings 100 and 101 on listing 10 |
| Q8 | Data for one booking card, to compare with the UI | `JOIN` of 3 tables | Booking 100: Astana, 20000 per night, 3 nights, total 60000 |

## How this is used in real testing

1. Do an action in the UI or through the API (for example, create a booking).
2. Run a query like Q8 and compare every field with what the UI and the API response show.
3. Run "should be empty" queries like Q2–Q7 after a regression run: any row is a data defect.

One more planted defect is found by the same comparison as Q8: booking 102 has total 50000, but 2 nights × 28000 = 56000.
