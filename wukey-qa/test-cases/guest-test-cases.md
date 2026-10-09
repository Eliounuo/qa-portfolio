# Test Cases — guest user

Run: 2026-10-09 · Production · Chrome, Windows 11 · 1520 px unless stated

**Precondition for all cases:** the user is not signed in.

**Summary:** 20 executed — 15 passed, 5 failed.

## Navigation and access

| ID | Title | Steps | Expected result | Result |
|---|---|---|---|---|
| TC-01 | Home page opens | 1. Open `/` | Page loads; hero block, search field and "Подобрано для вас" section are visible | Pass |
| TC-02 | Onboarding on first visit | 1. Clear site data 2. Open `/` | Onboarding "Шаг 1 из 4" is shown with "Пропустить" and "Дальше" buttons | Pass |
| TC-03 | Bottom navigation | 1. Open `/` 2. Click each of the 5 items | Each item opens its page: `/`, `/map`, `/requests`, `/chat`, `/profile` | Pass |
| TC-04 | Personal sections ask to sign in | 1. Open `/requests`, `/chat`, `/favorites`, `/bookings` one by one | Each page shows a "sign in" message and no personal data | Pass |
| TC-05 | Admin section closed for guest | 1. Open `/admin` | Redirect to `/auth` | Pass |
| TC-06 | Host section closed for guest | 1. Open `/pro` | Redirect to `/auth` | Pass |
| TC-07 | Unknown URL | 1. Open `/this-page-does-not-exist` | 404 page with "Страница не найдена" and a "На главную" link | Pass |
| TC-08 | Listing with a non-existent ID | 1. Open `/property/00000000-0000-0000-0000-000000000000` | Message "Объект не найден", no crash | Pass |
| TC-09 | Listing with an invalid ID format | 1. Open `/property/abc` | Message "Объект не найден", no crash | Pass |
| TC-10 | Sign-in page content | 1. Open `/auth` | Email field, "Получить код на почту", Google and Apple buttons, links to terms and privacy | Pass |

## Filters

| ID | Title | Steps | Expected result | Result |
|---|---|---|---|---|
| TC-11 | Filters panel opens | 1. Open `/` 2. Click "Фильтры" | Panel shows: rooms, guests/beds/sofas, price, area, tags, documents, floor, "Показать результаты" | Pass |
| TC-12 | Guests counter lower boundary | 1. Open filters 2. Guests = 0, click "minus" 3. Click "plus" | Value stays 0 after "minus"; becomes 1 after "plus" | Pass |
| TC-13 | Price: "from" greater than "to" | 1. Open filters 2. Price from = 50000, to = 1000 | Validation message or the range is corrected | **Fail** — [BUG-004](../bug-reports/BUG-004-price-range-not-validated.md) |
| TC-14 | Area: negative value | 1. Open filters 2. Area from = -5 | Value is rejected or a validation message is shown | **Fail** — [BUG-005](../bug-reports/BUG-005-negative-area-accepted.md) |

## Static pages

| ID | Title | Steps | Expected result | Result |
|---|---|---|---|---|
| TC-15 | Pricing page shows tariffs | 1. Open `/pricing` | Each of the 3 sections lists its items with prices | **Fail** — [BUG-001](../bug-reports/BUG-001-pricing-page-empty.md) |
| TC-16 | Support contacts are valid | 1. Open `/support` | Telegram, WhatsApp and email are real contacts | **Fail** — [BUG-002](../bug-reports/BUG-002-support-placeholder-phone.md) |
| TC-17 | No console errors on load | 1. Open DevTools → Console 2. Open `/` | No errors in the console | **Fail** — [BUG-003](../bug-reports/BUG-003-analytics-requests-fail.md) |
| TC-19 | Legal pages open | 1. Open `/privacy`, `/terms`, `/delete-account` | Each page opens with its own heading and text | Pass |
| TC-20 | Map page | 1. Open `/map` | Map with zoom controls and a search field; empty-state text when there are no listings | Pass |

## Responsive

| ID | Title | Steps | Expected result | Result |
|---|---|---|---|---|
| TC-18 | No horizontal scroll at 360 px | 1. Set width 360 px 2. Open 12 pages: `/`, `/auth`, `/map`, `/create-request`, `/become-host`, `/pricing`, `/support`, `/delete-account`, `/privacy`, `/terms`, `/profile`, 404 | Page width equals 360 px on every page | Pass |

## Not executed

| Area | Reason |
|---|---|
| Sign-in by email code, Google, Apple | Needs a test account; forms are not submitted on production |
| Create request (submit) | Changes production data |
| Listing card, search results, filter results | No active listings on production on the test date |
| Favourites, bookings, chat | Need a signed-in user |
| Host tools, admin panel | Need a role |
