# API checks — public REST API, anonymous user

Run: 2026-10-09 · Production · read-only

The WuKey web app reads data through a REST API. I checked how the API behaves for a visitor who is not signed in: correct status codes, clear error bodies, and no access to data that a guest must not see.

**Rules of the run:** only requests that cannot change data. The API address and the public client key are not published — in the Postman collection they are variables `{{base_url}}` and `{{anon_key}}`.

**Summary:** 20 checks — 19 passed, 1 failed.

## Results

| ID | Check | Request | Expected | Actual | Result |
|---|---|---|---|---|---|
| A01 | List of active listings | `GET /properties?status=eq.active&limit=5` | 200, JSON array | 200, `[]` | Pass |
| A02 | List without filters | `GET /properties?select=id` | 200, JSON array | 200, `[]` | Pass |
| A03 | No API key | `GET /properties` without key | 401 | 401 "No API key found in request" | Pass |
| A04 | Invalid API key | `GET /properties` with wrong key | 401 | 401 "Invalid API key" | Pass |
| A05 | Resource does not exist | `GET /no_such_table` | 404 | 404, code `PGRST205` | Pass |
| A06 | Field does not exist | `GET /properties?select=no_such_col` | 400 | 400, code `42703` | Pass |
| A07 | Invalid ID format | `GET /properties?id=eq.abc` | 400 | 400, code `22P02` "invalid input syntax for type uuid" | Pass |
| A08 | Valid ID, not found | `GET /properties?id=eq.<zero uuid>` | 200, empty array | 200, `[]` | Pass |
| A09 | Negative limit | `GET /properties?limit=-1` | 4xx | 416, code `PGRST103` | Pass |
| A10 | Guest tries to create a listing | `POST /properties` with `{}` | 401 or 403, nothing created | 401, row-level security violation | Pass |
| A11–A15 | Guest reads 5 private resources (profiles, bookings, messages and similar) | `GET /<resource>` | No rows returned | 200, `[]` for all 5 | Pass |
| A16 | Filter with Cyrillic value | `GET /properties?city=eq.Астана` (URL-encoded) | 200 | 200, `[]` | Pass |
| A17 | SQL-injection-like filter value | `GET /properties?city=eq.' OR 1=1--` | Request rejected or treated as plain text | 403, blocked before reaching the API | Pass |
| A18 | Guest deletes a non-existent listing | `DELETE /properties?id=eq.<zero uuid>` | Nothing deleted | 204, 0 rows affected | Pass |
| A19 | Total count header | `GET /properties` with `Prefer: count=exact` | 200 | 200 | Pass |
| A20 | Pricing items | `GET /pricing_items?is_active=eq.true` | 200, JSON array | **404**, code `PGRST205` | **Fail** — [BUG-001](../bug-reports/BUG-001-pricing-page-empty.md) |

## Notes

- Production had no active listings on the test date, so A01, A02 and A16 return empty arrays. The response structure of a listing could not be checked.
- A10 and A11–A15 confirm the main security rule for a guest: no writing and no reading of other users' data.
- A18 used an ID that cannot exist, so no data could be affected.

## Postman collection

[wukey-public-api.postman_collection.json](wukey-public-api.postman_collection.json) repeats the same requests with status-code tests. To run it, set `base_url` and `anon_key` in the collection variables.

The results in the table above were recorded with curl; the collection contains the same requests.
