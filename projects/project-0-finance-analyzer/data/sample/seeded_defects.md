# Seeded defects in `transactions.csv`

Row numbers count the header as line 1.

| Row | Content | Expected outcome |
|---|---|---|
| 56 | 23/12/2025 | Accept and convert to 2025-12-23 |
| 89 | S/ 1,200 | Reject — unparseable amount |
| 122 | -450 | Reject — negative amount |
| 169 | empty category, 2026-06-17 | Reject — empty category |
| 219 | Sept 5 2026 | Reject — unknown date format |
| — | entry_type: ingreso | Reject — invalid entry_type |
| — | pharmacy (5 rows) | Accept; not in categories.csv |
| — | 2026-02-05, groceries, 414 duplicated | Accept both, do not report |

Expected rejections = 4
