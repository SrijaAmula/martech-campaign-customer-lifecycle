# Stakeholder Analysis & RACI

## 1. Purpose

This document identifies the stakeholders involved in the MarTech Campaign Optimization & CRM Funnel Transformation initiative and defines their
business interests, influence, responsibilities, and engagement needs.

The stakeholder analysis was prepared during the discovery phase to ensure
that requirements were gathered from both Marketing and CRM/Sales perspectives
rather than treating campaign reporting as a Marketing-only problem.

---

## 2. Stakeholder Register

| Stakeholder | Role in Project | Business Need / Pain Point | Influence | Engagement |
|---|---|---|---|---|
| VP of Marketing | Executive Sponsor | Needs reliable visibility into marketing spend, revenue contribution and channel performance | High | Executive milestone reviews |
| Marketing Operations Manager | Business Owner | Current reporting requires manual consolidation across platforms and KPI definitions are inconsistent | High | Requirements workshops, backlog prioritization, UAT sign-off |
| CRM / Sales Operations Manager | CRM Process Owner | Needs consistent tracking from Lead → Opportunity → Win and alignment between Marketing and CRM reporting | High | Discovery workshops, funnel-definition sessions, UAT |
| Campaign Performance Analyst | Subject Matter Expert / End User | Spends significant time cleaning and reconciling campaign data before analysis | Medium | Working sessions, KPI validation, dashboard feedback |
| CRM Product Owner | System Owner | Responsible for CRM fields, funnel stages and system changes affecting campaign and funnel reporting | High | Requirement reviews, data-mapping discussions |
| Business Analyst | Requirements & Process Lead | Responsible for elicitation, process analysis, requirements, traceability and business validation | High | Facilitates stakeholder collaboration throughout SDLC |
| Data / BI Engineer | Technical Delivery | Requires agreed KPI definitions, data sources, transformation rules and mapping requirements | Medium | Data workshops and technical clarification |
| QA / UAT Lead | Quality & Validation | Requires testable acceptance criteria and expected business results | Medium | Test planning, defect triage and UAT coordination |

---

## 3. Initial Discovery Findings

Early stakeholder discussions identified four recurring business concerns:

1. Campaign data was being reviewed separately across marketing channels,
   resulting in significant manual consolidation effort.

2. KPI definitions were not consistently applied across reports,
   creating disagreement over campaign performance.

3. Marketing reporting focused heavily on clicks and leads while leadership
   required visibility into downstream Opportunities, Wins and Revenue.

4. Marketing and CRM stakeholders lacked a common view of the
   Lead → Opportunity → Win funnel.

These findings were used to define the scope of detailed requirements
gathering and process analysis.

---

## 4. Stakeholder Prioritization

### Manage Closely

- VP of Marketing
- Marketing Operations Manager
- CRM / Sales Operations Manager
- CRM Product Owner

These stakeholders have significant influence over project scope,
business rules, data definitions and solution approval.

### Keep Actively Involved

- Campaign Performance Analyst
- Data / BI Engineer
- QA / UAT Lead

These stakeholders provide operational, data and testing expertise throughout
requirements definition and solution validation.

---

## 5. RACI Matrix

**R = Responsible**  
**A = Accountable**  
**C = Consulted**  
**I = Informed**

| Project Activity | VP Marketing | Marketing Ops | CRM / Sales Ops | CRM Product Owner | Business Analyst | Data / BI Engineer | QA / UAT |
|---|---|---|---|---|---|---|---|
| Define Business Objectives | A | R | C | I | C | I | I |
| Gather & Document Requirements | I | C | C | C | R/A | C | I |
| Define Marketing KPIs | I | A | C | I | R | C | I |
| Define Funnel Stages | I | C | A | R | R | C | I |
| Define Data Mapping Rules | I | C | C | A | R | R | I |
| Develop Reporting Solution | I | C | I | I | C | R/A | C |
| Coordinate UAT | I | A | C | C | R | C | R |
| Business Sign-off | I | A | C | C | R | I | C |

---

## 6. Stakeholder Engagement Approach

The Business Analyst will use a combination of:

- One-to-one discovery interviews
- Cross-functional requirements workshops
- KPI definition sessions
- CRM funnel and data-mapping workshops
- Backlog refinement sessions
- Sprint demonstrations
- UAT planning and defect-triage meetings
- Release-readiness reviews

Where stakeholders disagree on KPI definitions or process rules,
the Business Analyst will document the issue, identify the decision owner,
evaluate the business impact and obtain an agreed decision before finalizing
the requirement.
