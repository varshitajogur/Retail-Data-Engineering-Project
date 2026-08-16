# Data Quality Validation Summary

## Results

| Check | Result |
|---|---:|
| Customer rows | [N] |
| Order rows | [N] |
| Order-item rows | [N] |
| Null cells | [N] |
| Duplicate customer keys | [N] |
| Duplicate order keys | [N] |
| Invalid dates | [N] |
| Orphan order customer IDs | [N] |

## Rules

- Customer IDs should be unique.
- Order IDs should be unique.
- Order dates should parse successfully.
- Orders should reference a valid customer.
- Required analytical fields should not exceed the documented null threshold.

**Status:** [PASS / FAIL]

Do not report a pass until the checks have been executed.
