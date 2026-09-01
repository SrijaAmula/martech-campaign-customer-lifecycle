# Agile Product Backlog

## MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Purpose

This backlog translates approved functional requirements into
business-focused Agile user stories and acceptance criteria.

The stories are intended to support backlog refinement, sprint planning,
development, business validation and UAT.

---

## 2. User Story Standard

User stories follow the format:

**As a [persona], I want [capability], so that [business value].**

Acceptance criteria define the testable conditions that must be satisfied
before the business considers the story complete.

---

# 3. Epic 1 — Trusted Campaign & CRM Data

## US-01 — Consolidated Campaign Performance

**As a Marketing Operations Manager,  
I want campaign performance information consolidated across supported
marketing channels,  
so that I can review performance without manually combining separate reports.**

**Priority:** Must Have

**Related Requirements:** FR-01, FR-03, FR-14

### Acceptance Criteria

**AC-01.1**

Given campaign data is available from supported marketing sources,  
When the reporting dataset is prepared,  
Then supported campaign records shall be available within one consolidated
reporting dataset.

**AC-01.2**

Given campaign records exist for multiple supported channels,  
When the user reviews campaign performance,  
Then the channel associated with each campaign shall be identifiable.

**AC-01.3**

Given campaign performance data has been consolidated,  
When totals are validated,  
Then Spend, Impressions and Clicks shall reconcile to the approved
source data within the defined reporting scope.

---

## US-02 — Campaign-to-CRM Mapping

**As a CRM / Sales Operations Manager,  
I want marketing campaigns to be consistently mapped to CRM funnel records,  
so that Lead, Opportunity, Win and Revenue outcomes can be attributed
to the appropriate campaign.**

**Priority:** Must Have

**Related Requirements:** FR-04, FR-05, FR-06

### Acceptance Criteria

**AC-02.1**

Given a Marketing campaign has an approved CRM mapping,  
When Marketing and CRM data are processed,  
Then the corresponding CRM funnel records shall be associated with
that campaign.

**AC-02.2**

Given a campaign record does not have a valid approved mapping,  
When the record is processed,  
Then it shall be flagged as an exception.

**AC-02.3**

Given an unmapped campaign record exists,  
When campaign revenue is calculated,  
Then the unmapped value shall not be automatically attributed to
another campaign.

---

# 4. Epic 2 — Campaign & Funnel Performance

## US-03 — Channel Performance Analysis

**As a Marketing Operations Manager,  
I want to compare campaign KPIs across marketing channels,  
so that I can identify channels that may require budget or
performance optimization.**

**Priority:** Must Have

**Related Requirements:** FR-14, FR-15, FR-16, FR-20

### Acceptance Criteria

**AC-03.1**

Given campaign information exists for multiple channels,  
When the user reviews channel performance,  
Then Spend, Revenue and ROAS shall be available by channel.

**AC-03.2**

Given the user selects a reporting period,  
When channel performance is displayed,  
Then only records within the selected reporting period shall
contribute to the displayed metrics.

**AC-03.3**

Given KPI values are displayed,  
When the results are validated,  
Then calculations shall follow the approved KPI definitions.

---

## US-04 — CRM Funnel Visibility

**As a CRM / Sales Operations Manager,  
I want to view Lead → Opportunity → Win conversion by campaign and channel,  
so that I can identify where prospects are dropping from the funnel.**

**Priority:** Must Have

**Related Requirements:** FR-10, FR-14, FR-19

### Acceptance Criteria

**AC-04.1**

Given valid CRM funnel records exist,  
When funnel performance is viewed,  
Then Leads, Opportunities and Wins shall be displayed using the
approved CRM definitions.

**AC-04.2**

Given Leads and Opportunities exist,  
When Lead-to-Opportunity Conversion Rate is calculated,  
Then the calculation shall equal:

Opportunities ÷ Leads × 100.

**AC-04.3**

Given Opportunities and Wins exist,  
When Opportunity Win Rate is calculated,  
Then the calculation shall equal:

Wins ÷ Opportunities × 100.

**AC-04.4**

Given the denominator for a funnel KPI is zero,  
When the KPI is calculated,  
Then the value shall return blank / Not Applicable rather than
an invalid numeric result.

---

## US-05 — Campaign Drill-Down

**As a Campaign Performance Analyst,  
I want to analyse performance at individual campaign level,  
so that I can identify the campaigns driving or reducing
overall channel performance.**

**Priority:** Must Have

**Related Requirements:** FR-17, FR-18

### Acceptance Criteria

**AC-05.1**

Given multiple campaigns exist within a marketing channel,  
When the user selects that channel,  
Then the individual campaigns associated with the channel shall
be available for analysis.

**AC-05.2**

Given an individual campaign is selected,  
When campaign performance is displayed,  
Then the supported Spend, funnel, Revenue and KPI values shall
reflect that campaign only.

**AC-05.3**

Given no matching data exists for the selected combination,  
When the user applies the selection,  
Then the solution shall not display misleading calculated values.

---

# 5. Epic 3 — Performance Exceptions

## US-06 — Underperforming Campaign Review

**As a Marketing Operations Manager,  
I want campaigns below the agreed ROAS review threshold to be identified,  
so that I can investigate potential performance issues before making
budget decisions.**

**Priority:** Should Have

**Related Requirements:** FR-21, FR-22, FR-23

### Acceptance Criteria

**AC-06.1**

Given a campaign has ROAS below 2.0,  
When campaign performance is evaluated,  
Then the campaign shall be flagged for business review.

**AC-06.2**

Given a campaign has ROAS equal to or above 2.0,  
When campaign performance is evaluated,  
Then it shall not be flagged based solely on the ROAS threshold.

**AC-06.3**

Given a campaign has been flagged,  
When the stakeholder reviews the campaign,  
Then supporting metrics including Spend, Revenue and ROAS shall
remain visible.

**AC-06.4**

Being flagged shall indicate that business review is required
and shall not automatically stop or modify the campaign.

---

## US-07 — Data Quality Exception Management

**As a Campaign Performance Analyst,  
I want invalid or unreconciled records to be clearly identified,  
so that I can investigate data-quality issues before they affect
official campaign reporting.**

**Priority:** Must Have

**Related Requirements:** FR-12, FR-13, FR-24, FR-25, FR-26

### Acceptance Criteria

**AC-07.1**

Given a record fails an approved mapping or validation rule,  
When data processing occurs,  
Then the record shall be identified as an exception.

**AC-07.2**

Given an exception exists,  
When the analyst reviews it,  
Then sufficient information shall be available to identify the
affected campaign, reporting period and issue.

**AC-07.3**

Given a data-quality exception has not been resolved,  
When official performance reporting is prepared,  
Then the exception shall remain distinguishable from validated data.

---

# 6. Epic 4 — Reporting Governance

## US-08 — Governed KPI Definitions

**As a Marketing Operations Manager,  
I want official campaign reporting to use approved KPI definitions,  
so that stakeholders receive consistent performance metrics across reports.**

**Priority:** Must Have

**Related Requirements:** FR-07, FR-08, FR-27, FR-28

### Acceptance Criteria

**AC-08.1**

Given an approved KPI definition exists,  
When the KPI is calculated in official reporting,  
Then the approved business formula shall be applied.

**AC-08.2**

Given a stakeholder requests a change to an approved KPI definition,  
When the change is assessed,  
Then the definition shall not be treated as approved until the
identified business owner provides approval.

**AC-08.3**

Given the same reporting scope and source data,  
When a governed KPI is calculated,  
Then the result shall be consistent wherever that KPI appears
within the approved solution.

---

# 7. MVP Prioritization

The initial MVP will prioritize capabilities required to establish
trusted campaign and CRM funnel reporting.

### Must Have

- US-01 Consolidated Campaign Performance
- US-02 Campaign-to-CRM Mapping
- US-03 Channel Performance Analysis
- US-04 CRM Funnel Visibility
- US-05 Campaign Drill-Down
- US-07 Data Quality Exception Management
- US-08 Governed KPI Definitions

### Should Have

- US-06 Underperforming Campaign Review

---

# 8. Definition of Ready

A story is considered ready for delivery when:

- Business value is clearly stated
- Persona is identified
- Acceptance criteria are testable
- Related functional requirements are identified
- Required business rules are clarified
- Relevant data source or dependency is known
- Outstanding business decisions are resolved or documented
- Delivery team has sufficient information to estimate the story

---

# 9. Definition of Done

A story is considered complete when:

- Acceptance criteria have been satisfied
- Required development and technical validation are complete
- Relevant data validation has passed
- Identified defects have been resolved or formally accepted
- UAT evidence has been captured where applicable
- Documentation and traceability have been updated
- Business acceptance has been obtained for the delivered scope

---

# 10. BA Role During Agile Delivery

The Business Analyst supports Agile delivery by:

- Clarifying business requirements and rules
- Refining stories with Product, Engineering and QA
- Maintaining requirement traceability
- Supporting prioritization discussions
- Clarifying acceptance criteria
- Reviewing delivered functionality against business needs
- Supporting sprint demonstrations
- Coordinating business validation and UAT
- Assessing requirement changes and business impacts
