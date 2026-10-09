# BUG-003 — Analytics requests fail on every page load

| Field | Value |
|---|---|
| Severity | Medium |
| Priority | Medium |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | TC-17 |

## Steps to reproduce

1. Open DevTools → Console and Network.
2. Open `https://wukey.kz/`.

## Actual result

Two requests to the analytics service fail on each load:

- configuration request → **404**
- feature-flags request → **401**

The console shows `Failed to load resource` errors for both. The same happens on `/pricing`.

## Expected result

Analytics requests succeed (2xx) and the console has no errors.

## Notes

- Side of the problem: **configuration** — the analytics project key used on production is not accepted by the service.
- Reproducibility: 2 of 2 pages checked.
- Impact: users are not affected directly, but product analytics is most likely not collected.
