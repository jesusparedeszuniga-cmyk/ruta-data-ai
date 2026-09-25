# Project 0 — Personal Finance Analyzer

## Business Problem

I want to save for a new laptop, but I don't know where my money goes. I don't track my income and expenses, so I can't tell which categories are worth cutting or how many months of saving the purchase would take. This project turns my raw transactions into the numbers needed to make that decision.

## Dataset & Sources

Two CSV files.

**transactions.csv** — one row per movement.

| Column | Description |
|---|---|
| entry_type | income or expense |
| transaction_date | date of the movement |
| category | spending or income category |
| amount | always positive |

**categories.csv** — maps each spending category to a budget group.

| Column | Description |
|---|---|
| category | must match transactions.csv exactly |
| budget_group | fixed, variable, or discretionary |

Only expense categories are mapped. Income categories have no budget group.

## Questions

1. What was my total income and total expenses each month?
2. How does my spending by category last month (defined as the most recently
   completed calendar month) compare to my spending over the previous 3 months?
3. How much did I spend by budget group last month?
4. What percentage of my total spending does each category represent?
5. In which months did my expenses exceed my income?
6. How many rows were rejected, and what were the reasons?

## Data Contract

Canonical date format: `YYYY-MM-DD`
Accepted on read: `YYYY-MM-DD`, `DD/MM/YYYY`
Assumption: day first (Peruvian convention)

`amount` is always positive. The sign is determined by `entry_type`.

Rejection reasons:
1. Unknown date format
2. Negative amount
3. Unparseable amount
4. Empty category
5. entry_type is neither income nor expense

Exact duplicates are accepted and included in all calculations. They are not reported.

## Methodology

[Pendiente]

## Analysis

[Pendiente]

## Results & Metrics

[Pendiente]

## Limitations

- `03/04/2026` is read as April 3rd. If the data came from a US source, this is wrong.
- The file cannot distinguish a legitimate repeated expense from a duplicate load
  error, because there is no description or transaction ID column.

## Recommendations

[Pendiente]
