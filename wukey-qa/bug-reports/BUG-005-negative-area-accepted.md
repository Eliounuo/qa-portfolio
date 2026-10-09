# BUG-005 — Area filter accepts a negative value

| Field | Value |
|---|---|
| Severity | Minor |
| Priority | Low |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | TC-14 |

## Steps to reproduce

1. Open `https://wukey.kz/` and click "Фильтры".
2. In "Общая площадь, м²" enter From = `-5`.

## Actual result

`-5` stays in the field. No validation message. The field has no minimum limit.

## Expected result

Negative values cannot be entered, or a validation message is shown.

## Notes

- Test design: invalid equivalence class (area < 0).
- The price and floor fields have no minimum limit either.
- Side of the problem: **frontend** validation.
