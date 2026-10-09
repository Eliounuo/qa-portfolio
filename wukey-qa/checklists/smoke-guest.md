# Smoke Checklist — guest user

Run: 2026-10-09 · Production · Chrome, Windows 11 · not signed in

| # | Check | Result | Note |
|---|---|---|---|
| 1 | Home page opens | Pass | |
| 2 | Onboarding appears on first visit and can be skipped | Pass | 4 steps |
| 3 | Bottom navigation has 5 items and each opens its page | Pass | Home, Map, Requests, Chats, Profile |
| 4 | Filters panel opens | Pass | |
| 5 | Map page opens and the map is displayed | Pass | Empty-state message shown |
| 6 | Sign-in page opens with email field, Google and Apple buttons | Pass | |
| 7 | Requests, Chats, Favourites, Bookings ask a guest to sign in | Pass | |
| 8 | Admin section is closed for a guest | Pass | Redirect to sign-in |
| 9 | Host section is closed for a guest | Pass | Redirect to sign-in |
| 10 | Pricing page shows tariffs | **Fail** | [BUG-001](../bug-reports/BUG-001-pricing-page-empty.md) |
| 11 | Support page shows working contacts | **Fail** | [BUG-002](../bug-reports/BUG-002-support-placeholder-phone.md) |
| 12 | Privacy, Terms, Account deletion pages open | Pass | |
| 13 | Unknown URL shows a 404 page with a link to home | Pass | |
| 14 | No errors in the browser console on home page load | **Fail** | [BUG-003](../bug-reports/BUG-003-analytics-requests-fail.md) |
| 15 | No horizontal scroll at 360 px | Pass | 12 pages checked |

**Total:** 15 checks — 12 passed, 3 failed.
