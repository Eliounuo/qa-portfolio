# Test Plan — WuKey, guest user

## 1. Object under test

WuKey (<https://wukey.kz>) — a web platform for short-term housing rental. A tenant can browse listings or publish a request; owners respond with offers.

## 2. Scope

**In scope** — everything a visitor can do without signing in:

- Home page, onboarding, bottom navigation
- Filters panel
- Map page
- Listing page for a non-existent listing
- Sign-in page (display only)
- Access control for guest: personal, host and admin sections
- Static pages: pricing, support, privacy, terms, account deletion
- 404 page
- Layout at mobile width (360 px)
- Public REST API: read-only anonymous requests

**Out of scope** — needs a test account or test data that I do not have on production:

- Sign-in by email code, Google, Apple
- Creating a request, favourites, bookings, chat
- Host tools and admin panel
- Listing cards and search results (production had no active listings on the test date)
- Payments, push notifications, performance and load testing

## 3. Approach

| Type | How |
|---|---|
| Smoke | Checklist of main pages |
| Functional | Test cases with positive and negative scenarios |
| Test design | Boundary values and equivalence classes for filter fields; negative checks for URLs |
| Exploratory | Free session on filters and static pages, with DevTools open |
| API | Status codes, error bodies, anonymous access rules |
| Responsive | Horizontal scroll check at 360 px on 12 pages |

Rule for production: **read-only**. No forms submitted, no accounts created, no data changed.

## 4. Environment

| Item | Value |
|---|---|
| Environment | Production |
| Date | 2026-10-09 |
| OS | Windows 11 |
| Browser | Google Chrome (desktop) |
| Viewports | 1520 px desktop, 360 px mobile width |
| User | Guest (not signed in) |

## 5. Entry and exit criteria

- **Entry:** site is reachable, home page loads.
- **Exit:** all in-scope test cases executed, every failure has a bug report.

## 6. Risks and limits

- Production has no active listings, so listing-related checks are blocked.
- Without a test account, authorised flows are not covered.
- One test run in one browser — no cross-browser coverage yet.

## 7. Deliverables

Checklist, test cases with results, bug reports, API results, Postman collection.
