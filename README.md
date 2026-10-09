# Alikhan Jafarov — Manual QA Engineer

Astana, Kazakhstan · open to relocation

- Email: turgutbei77@gmail.com
- Telegram: [@eliounuo](https://t.me/eliounuo)
- LinkedIn: <https://www.linkedin.com/in/alikhan-jafarov-6a9958422/>
- hh.kz résumé: <https://hh.kz/resume/ab05611aff0d7424fc0039ed1f7979756d6245>

## About

Manual QA Engineer with 2.5 years of experience in testing web applications and digital banking. I started at Bakai Bank, where I tested transfers, payments, accounts and cards at UI, REST API and database level. Now I am responsible for the quality of my own product — the WuKey.kz web platform: from requirements analysis and acceptance criteria to release testing and post-release verification.

I use Postman for API testing, SQL (`SELECT`, `WHERE`, `JOIN`) for data checks and Chrome DevTools to localise defects. I write test cases and checklists myself, define the regression scope and follow a defect from discovery to a confirmed fix in the release.

## Skills

| Area | Details |
|---|---|
| Testing | Functional, regression, smoke, sanity, integration, exploratory, UAT, release testing, post-release testing |
| Web | UI testing, cross-browser, responsive, forms and validation, Chrome DevTools (Network, Console) |
| Test design | Equivalence partitioning, boundary value analysis, decision table, state transition, pairwise |
| API | REST API, Postman, HTTP/HTTPS, HTTP methods, status codes, JSON |
| Database | SQL (`SELECT`, `WHERE`, `JOIN`), comparing UI / API / DB data |
| Documentation | Test cases, checklists, bug reports, requirements and acceptance criteria analysis |
| Tools | Jira, Confluence, TestRail, Postman, Chrome DevTools |
| Version control | Git, GitHub |
| Methodologies | Agile, Scrum, Kanban, SDLC, STLC, bug lifecycle, severity / priority |
| Domains | Digital banking, web platforms |

## Experience

### WuKey.kz — Manual QA Engineer

April 2025 — present

Web platform for publishing and searching listings (own startup). Main modules: registration and sign-in, account and profile, creating, editing and deleting listings, search, categories, filtering, listing cards.

- Analysed requirements for new features before development: clarified ambiguous scenarios with developers and wrote the acceptance criteria used to accept the functionality.
- Built the product's test documentation: created and maintained test cases and checklists for all main modules — the base for regression testing.
- Functional and UI testing of registration, sign-in and profile: required fields, formats and boundary values, error messages, session behaviour, display in different browsers and resolutions (cross-browser, responsive).
- Tested the full listing cycle (create, edit, delete), checking the result on three levels: UI, API response and database record.
- Checked search, categories and filtering: filter combinations, empty results, reset of parameters, cards matching the given conditions.
- API testing in Postman: REST endpoints with GET, POST, PUT/PATCH, DELETE, analysis of status codes and JSON structure, negative scenarios — invalid data, requests without authorisation, foreign and non-existent resources.
- Used SQL (`SELECT`, `WHERE`, `JOIN`) to check user data and listings after operations in UI and API, finding differences between the interface and the actual data.
- Exploratory testing of new features to find defects outside described scenarios; added the found cases to checklists.
- Localised defects with Chrome DevTools (Network, Console), identifying the side of the problem — frontend or backend; wrote bug reports in Jira, did retest and sanity of the affected area after the fix.
- Responsible for release checks: defined the regression scope, ran regression before release, smoke after deployment and post-release verification of key scenarios on production.

### Bakai Bank — Junior Manual QA Engineer

April 2024 — March 2025

Digital banking platform BakAi (mobile and internet banking). Main modules: sign-in, accounts, bank cards, transfers between accounts and cards, service payments, transaction history.

- Functional testing of transfers between accounts and cards — positive, negative and boundary scenarios: minimum and maximum amounts, insufficient balance, invalid details, correct fee calculation.
- Tested service payments: validation of recipient details, error handling, transaction status changes and appearance of the operation in history.
- Checked the accounts and cards modules: display of balances and details, card and account management operations, correct balance change after financial operations.
- API testing in Postman: requests to the REST API over HTTP/HTTPS, checking status codes, structure and values of JSON responses, handling of invalid requests and authorisation errors.
- Used SQL (`SELECT`, `WHERE`, `JOIN`) to check transactions in the database: compared amounts, statuses and linked accounts with the UI and API responses.
- Integration testing of the chain "transfer / payment — account balance — transaction history", checking data consistency between modules after each operation.
- With Chrome DevTools (Network, Console) analysed requests and responses when reproducing defects and attached technical details to bug reports, which shortened the developer's localisation time.
- Created and updated test cases and checklists for the assigned modules based on requirements and acceptance criteria.
- Wrote bug reports in Jira and followed the defect through its lifecycle: discovery, bug report, fix, retest, regression of related functionality, confirmation in the release build.
- Took part in the release cycle: regression before release, smoke after deployment to the test environment, checking business scenarios within UAT.

> **The samples below are only a part of my work.** Materials from the bank are internal and are not published. What you see here is a separate test run of the public part of WuKey, prepared to show how I document testing.

## Work samples

### [WuKey — testing the public part of the site](wukey-qa/README.md)

A real test run on production as a guest user (2026-10-09):

- [Test plan](wukey-qa/test-plan.md) — scope, approach, environment
- [Smoke checklist](wukey-qa/checklists/smoke-guest.md) — 15 checks
- [Test cases](wukey-qa/test-cases/guest-test-cases.md) — 20 cases, 15 passed, 5 failed
- [Bug reports](wukey-qa/bug-reports/) — 7 real defects
- [API checks](wukey-qa/api/README.md) — 20 anonymous read-only checks, 19 passed, 1 failed, plus a Postman collection
- [SQL data checks](wukey-qa/sql/README.md) — demo database and 8 queries (demo data, not the product database)

Only what any visitor can see is published. No credentials, keys or user data.

## Education

Humanitarian-Technical Academy (GTA) — Bachelor, Computer Engineering and Software, 2026–2030 (in progress)

## Languages

Russian — native · Azerbaijani — C1 · English — B1 · Kazakh — A2
