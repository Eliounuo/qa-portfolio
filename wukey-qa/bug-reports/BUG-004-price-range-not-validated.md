# BUG-004 — Price filter accepts "from" greater than "to"

| Field | Value |
|---|---|
| Severity | Minor |
| Priority | Low |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | TC-13 |

## Steps to reproduce

1. Open `https://wukey.kz/` and click "Фильтры".
2. In "Цена за сутки, ₸" enter From = `50000`, To = `1000`.

## Actual result

Both values are accepted. No validation message. "Показать результаты" stays active.

## Expected result

The user is told the range is invalid, or the values are swapped automatically.

## Notes

- Test design: boundary check of a range (min > max).
- Side of the problem: **frontend** validation.
- Result list could not be checked: production had no listings on the test date.
