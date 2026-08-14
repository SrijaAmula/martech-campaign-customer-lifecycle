# BRD / FRD / SRS — MarTech

## Business Requirement
Create a governed cross-channel performance view and improve lead funnel conversion.

## Functional Requirements
FR-01 ingest campaign and CRM funnel data daily; FR-02 calculate Spend, CTR, CPL, Lead→Opportunity, Win Rate, Revenue and ROAS; FR-03 filter by date/channel/campaign; FR-04 drill to campaign; FR-05 create low-ROAS exception; FR-06 export approved detail.

## Non-functional / SRS
Daily refresh by 07:00; dashboard <5s for standard filters; OAuth2 service authentication; audit log for metric changes; PII minimized; availability target 99.5%; cloud deployment and monitored API/ETL jobs.

## Gap / Impact
Current: platform-specific reports, manual CRM joins, conflicting attribution. Future: shared model, glossary, automated ingestion, exception workflow. Impacts Marketing Ops, Sales Ops, BI and campaign managers; training and metric-governance ownership required.
