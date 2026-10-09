# Alikhan Jafarov — Manual QA Engineer

Manual QA Engineer based in Astana, Kazakhstan. I test web applications at UI, API and database level and document the work so that a developer can reproduce every result.

- LinkedIn: <https://www.linkedin.com/in/alikhan-jafarov-6a9958422/>
- hh.kz résumé: <https://hh.kz/resume/ab05611aff0d7424fc0039ed1f7979756d6245>

## What I do

| Area | Details |
|---|---|
| Testing types | Functional, regression, smoke, sanity, integration, exploratory, UAT |
| Web | UI, forms and validation, cross-browser, responsive |
| Test design | Equivalence partitioning, boundary values, decision tables, state transitions, pairwise |
| API | REST, HTTP methods, status codes, JSON — Postman |
| Database | SQL: `SELECT`, `WHERE`, `JOIN` — comparing UI / API / DB data |
| Documentation | Test cases, checklists, bug reports, requirements analysis |
| Tools | Postman, Chrome DevTools, Jira, Confluence, TestRail, Git |

## Experience

### WuKey.kz — Manual QA Engineer

Web platform for short-term housing rental (own startup).

- Analysed requirements before development and wrote acceptance criteria.
- Built the test documentation: test cases and checklists for the main modules, used as the base for regression testing.
- Functional and UI testing of registration, sign-in and profile: required fields, formats, boundary values, error messages, session behaviour, cross-browser and responsive checks.
- Tested the full listing cycle (create, edit, delete) on three levels: UI, API response, database record.
- API testing in Postman: GET, POST, PUT/PATCH, DELETE, status codes, JSON structure, negative scenarios.
- SQL (`SELECT`, `WHERE`, `JOIN`) to compare data after actions in UI and API.
- Localised defects with Chrome DevTools (Network, Console) to tell frontend from backend problems; retest and sanity after fixes.
- Release checks: regression scope, regression before release, smoke after deployment, post-release verification.

### Bakai Bank — Junior Manual QA Engineer

Digital banking platform (mobile and internet banking): sign-in, accounts, cards, transfers, service payments, transaction history.

- Functional testing of transfers between accounts and cards: positive, negative and boundary scenarios — minimum and maximum amounts, insufficient balance, invalid details, fee calculation.
- Tested service payments: validation of recipient details, error handling, transaction statuses, appearance in history.
- Checked accounts and cards: balances, details, balance changes after financial operations.
- API testing in Postman: REST requests, status codes, JSON structure and values, invalid requests, authorisation errors.
- SQL (`SELECT`, `WHERE`, `JOIN`) to verify transactions in the database against UI and API.
- Integration testing of the chain "transfer / payment → account balance → transaction history".
- Wrote and maintained test cases and checklists; reported bugs in Jira and followed them through fix, retest and regression.
- Took part in the release cycle: regression before release, smoke on the test environment, UAT of business scenarios.

Dates are on LinkedIn.

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

## Languages

Russian — native · Azerbaijani — C1 · English — B1 · Kazakh — A2
