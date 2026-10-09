# BUG-006 — Counter buttons in filters have no accessible name

| Field | Value |
|---|---|
| Severity | Minor |
| Priority | Low |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | Exploratory testing |

## Steps to reproduce

1. Open `https://wukey.kz/` and click "Фильтры".
2. Inspect the "minus" and "plus" buttons of Guests, Beds and Sofas in DevTools → Elements → Accessibility.

## Actual result

All 6 buttons have no text and no `aria-label`. A screen reader announces each of them only as "button".

## Expected result

Each button has a name, for example "Уменьшить количество гостей" / "Увеличить количество гостей".

## Notes

- Type: accessibility.
- Side of the problem: **frontend**.
