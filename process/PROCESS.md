# Process Modeling

## SIPOC
| Suppliers | Inputs | Process | Outputs | Customers |
|---|---|---|---|---|
| Source systems / teams | Events, transactions, master data | Capture → Validate → Transform → Analyze → Act | KPI, alert, decision | Managers / operations / customers |

## AS-IS
```mermaid
flowchart LR
A[Source data] --> B[Manual extract]
B --> C[Spreadsheet cleanup]
C --> D[Email review]
D --> E{Issue?}
E -- Yes --> C
E -- No --> F[Decision]
```

## TO-BE
```mermaid
flowchart LR
A[Cloud/source systems] --> B[Automated API/ETL ingestion]
B --> C[Validation + governed model]
C --> D[Dashboard / workflow]
D --> E{Threshold/exception}
E -- Yes --> F[Automated alert / assigned action]
E -- No --> G[Monitor]
F --> G
```

## Value Stream View
Remove manual extraction, duplicate reconciliation and email handoffs; add automated validation, explicit ownership, measurable SLA and feedback loop.
