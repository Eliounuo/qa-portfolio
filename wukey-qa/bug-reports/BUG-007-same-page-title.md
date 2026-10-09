# BUG-007 — Most pages share the same browser tab title

| Field | Value |
|---|---|
| Severity | Minor |
| Priority | Low |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | Exploratory testing |

## Steps to reproduce

1. Open `/auth`, `/map`, `/pricing`, `/profile`, `/create-request`, `/become-host` and an unknown URL one by one.
2. Look at the browser tab title.

## Actual result

All of them show the home page title "WuKey — посуточная аренда в Казахстане", including the 404 page.

Only 4 pages have their own title: Support, Privacy, Terms, Account deletion.

## Expected result

Each page has its own title, for example "Тарифы — WuKey", "Вход — WuKey", "Страница не найдена — WuKey".

## Notes

- Impact: several open tabs cannot be told apart; browser history and bookmarks are unclear.
- Side of the problem: **frontend**.
