# WuKey — QA Portfolio Project

Manual testing of the public (guest) part of **WuKey** — a web platform (PWA) for short-term housing rental in Kazakhstan: <https://wukey.kz>

This folder shows how I document testing: a test plan, a checklist, test cases and bug reports.

## What is real and what is not covered

| Part | Status |
|---|---|
| UI test cases and checklist | **Executed** on production, guest user, 2026-10-09 |
| Bug reports | **Real defects** found during that run |
| API checks | **Executed** against the public REST API (read-only, anonymous) |
| SQL queries | **Demo**: run on a small invented database included here, not on the product database |
| Flows that need an account (sign-in, booking, chat, host tools) | **Not executed** — listed as out of scope |

No credentials, API keys, internal URLs or user data are published here.

## Results at a glance

| Area | Executed | Passed | Failed |
|---|---|---|---|
| UI test cases | 20 | 15 | 5 |
| API checks | 20 | 19 | 1 |

Bugs reported: **7** (1 major, 2 medium, 4 minor).

## Contents

| File | What it is |
|---|---|
| [test-plan.md](test-plan.md) | Scope, approach, environment, risks |
| [checklists/smoke-guest.md](checklists/smoke-guest.md) | Smoke checklist for a guest user |
| [test-cases/guest-test-cases.md](test-cases/guest-test-cases.md) | 20 test cases with steps and results |
| [bug-reports/](bug-reports/) | 7 bug reports |
| [api/README.md](api/README.md) | 20 API checks with results |
| [api/wukey-public-api.postman_collection.json](api/wukey-public-api.postman_collection.json) | Postman collection (no real address or key inside) |
| [sql/README.md](sql/README.md) | Demo database and 8 data-check queries |

## Tools

Google Chrome and Chrome DevTools (Network, Console), Postman, curl, SQL (SQLite for the demo database).
