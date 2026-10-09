# BUG-001 — Pricing page shows no tariffs: data request returns 404

| Field | Value |
|---|---|
| Severity | Major |
| Priority | High |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | TC-15 |

## Steps to reproduce

1. Open DevTools → Network.
2. Open `https://wukey.kz/pricing`.

## Actual result

The page shows only three section headings — "Пакеты продвижения", "Дополнительные услуги", "Подписки" — with no items and no prices. No error message is shown to the user.

In Network, the request that loads pricing items returns **404** with error code `PGRST205` ("Could not find the table … in the schema cache"). The request is repeated 3 times.

## Expected result

Each section lists its tariffs with prices. If the data cannot be loaded, the user sees an error message.

## Notes

- Side of the problem: **backend** — the data source the page asks for does not exist on production. The frontend also hides the error.
- Reproducibility: 3 of 3 attempts.
- Impact: owners cannot see what paid options cost.
