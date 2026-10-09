# BUG-002 — Support page shows a placeholder WhatsApp number

| Field | Value |
|---|---|
| Severity | Medium |
| Priority | High |
| Environment | Production, 2026-10-09, Chrome, Windows 11, guest user |
| Found by | TC-16 |

## Steps to reproduce

1. Open `https://wukey.kz/support`.
2. Look at the "Связаться" block.

## Actual result

WhatsApp contact is `+7 700 000 00 00` — a placeholder, not a real number.

## Expected result

A real support number, or no WhatsApp row at all.

## Notes

- Side of the problem: **frontend / content**.
- Reproducibility: always.
- Impact: a user who needs help writes to a number that does not belong to support.
