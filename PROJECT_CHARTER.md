# Project Charter

## Project Title

MarTech Campaign Optimization & CRM Funnel Transformation

---

## 1. Business Scenario

A fictional organization runs marketing campaigns across multiple channels,
including Email, Social Media, Paid Search and Display.

Campaign performance data is available across different marketing platforms,
while downstream Lead, Opportunity, Win and Revenue information is maintained
within the CRM environment.

The current reporting process is fragmented and requires manual consolidation,
data cleansing and reconciliation before stakeholders can evaluate campaign
performance.

This creates challenges in identifying:

- Which marketing channels generate the strongest return
- Which campaigns are underperforming
- Where prospects are dropping in the CRM funnel
- How marketing spend contributes to downstream Revenue
- Which areas require campaign or funnel optimization

---

## 2. Business Problem

Marketing and CRM stakeholders currently rely on separate reports and manual
analysis to evaluate campaign and funnel performance.

This results in:

- Inconsistent KPI reporting
- Limited visibility into the Lead → Opportunity → Win funnel
- Delayed identification of underperforming campaigns
- Manual effort in combining Marketing and CRM information
- Repeated data reconciliation
- Reduced confidence in reported performance
- Difficulty making timely, data-driven budget allocation decisions

The underlying issue is not the absence of data.

The organization already captures relevant Marketing and CRM information.

The key problem is that the information is fragmented across systems,
requires manual reconciliation and does not provide stakeholders with a
consistent end-to-end view from marketing spend through Revenue.

---

## 3. Project Objective

The objective of this project is to design a Business Analyst-led solution
that provides a governed and consistent view of campaign performance and
CRM funnel conversion.

The solution will enable stakeholders to:

- Monitor campaign performance across supported marketing channels
- Compare channel and campaign KPIs
- Track Lead → Opportunity → Win conversion
- Analyse Revenue and ROAS
- Identify underperforming campaigns for business review
- Improve Marketing and CRM data consistency
- Reduce manual reconciliation effort
- Support data-driven campaign and budget optimization decisions

---

## 4. Project Scope

### In Scope

- Cross-channel campaign performance reporting
- Marketing Spend, Impressions and Click analysis
- Lead → Opportunity → Win funnel visibility
- Revenue attribution at campaign and channel level
- CTR, CPL, conversion-rate and ROAS reporting
- Standardized KPI and funnel definitions
- Campaign-to-CRM mapping requirements
- Marketing and CRM data reconciliation
- Data-quality validation and exception handling
- Reporting governance and ownership
- SQL-based data validation and business analysis
- Dashboard and reporting requirements
- Agile user stories and acceptance criteria
- UAT and business validation
- Integration and API requirement analysis

### Out of Scope

- Creation or execution of marketing campaigns
- Modification of advertising-platform bidding algorithms
- Replacement of the existing CRM platform
- CRM sales-process redesign unrelated to campaign reporting
- Predictive lead-scoring models
- Customer segmentation
- Customer retention analysis
- Customer churn modelling
- Customer lifetime value modelling
- Full customer lifecycle analytics

---

## 5. Key Stakeholders

The project involves collaboration across the following stakeholder groups:

- VP of Marketing — Executive Sponsor
- Marketing Operations Manager — Business Owner
- CRM / Sales Operations Manager — CRM Process Owner
- Campaign Performance Analyst — Subject Matter Expert / End User
- CRM Product Owner — CRM System Owner
- Business Analyst — Requirements and Process Lead
- Data / BI Engineer — Technical Delivery
- QA / UAT Lead — Quality and Business Validation

---

## 6. High-Level Business Needs

The project should provide the business with the ability to:

1. Review campaign performance across supported marketing channels.

2. Use agreed and consistently applied KPI definitions.

3. View campaign performance from marketing activity through
   Lead, Opportunity, Win and Revenue outcomes.

4. Apply standardized campaign identification and mapping rules.

5. Reconcile differences between Marketing and CRM reporting.

6. Identify and manage data-quality exceptions.

7. Identify campaigns that require performance review.

8. Establish clear ownership for KPI definitions, business rules and
   reporting-data issues.

---

## 7. High-Level Success Criteria

The project will be considered successful when:

- Marketing stakeholders can review campaign performance across supported
  channels through a consistent reporting process.

- Marketing and CRM stakeholders use agreed definitions for key campaign
  and funnel metrics.

- Campaign performance can be evaluated from Spend through Revenue.

- Lead → Opportunity → Win conversion can be analysed consistently.

- Campaign-to-CRM mapping follows documented and repeatable rules.

- Data-quality and reconciliation exceptions are identifiable and routed
  to an appropriate owner.

- Business users can identify underperforming campaigns without repeating
  the existing manual consolidation process.

- Reporting supports more timely campaign and budget optimization decisions.

---

## 8. Assumptions

The project is based on the following assumptions:

- Required Marketing and CRM data is available from relevant source systems.

- Marketing and CRM stakeholders participate in KPI and funnel-definition
  discussions.

- Campaign records can be associated using agreed campaign identifiers
  or mapping rules.

- The current portfolio dataset represents a simplified consolidated
  reporting layer rather than raw production-system data.

- ROAS is used as the primary return metric because the current dataset
  contains Marketing Spend and Revenue but does not contain sufficient
  profit information to support true ROI calculation.

---

## 9. Constraints & Known Limitations

The current portfolio dataset has several known limitations:

- A separate stable `campaign_id` is not currently available.
- Marketing and CRM source data are already consolidated into one synthetic
  reporting dataset.
- The dataset contains aggregated campaign metrics rather than individual
  Lead, Opportunity or customer records.
- Full customer lifecycle analysis is not supported by the current MVP data.

These limitations are documented and do not prevent the initial
campaign-performance and CRM-funnel reporting MVP from proceeding.

---

## 10. Project Type

This is a portfolio case study using synthetic data.

The project is designed to demonstrate transferable Business Analyst /
Business Systems Analyst capabilities across:

- Requirements gathering
- Stakeholder management
- Business process analysis
- Gap analysis
- Business and functional requirements
- Business rules
- Data mapping
- Data validation
- SQL analysis
- CRM funnel reporting
- Agile delivery
- UAT
- Integration requirements
- Change and release readiness

No confidential employer, client or production information is used.

---

## 11. Business Analyst Role

The Business Analyst is responsible for:

- Facilitating stakeholder discovery and requirements workshops
- Documenting AS-IS and TO-BE processes
- Performing gap and impact analysis
- Defining business and functional requirements
- Clarifying KPI, funnel and campaign-mapping business rules
- Supporting data-mapping and validation discussions
- Maintaining requirements traceability
- Translating requirements into Agile user stories and acceptance criteria
- Supporting Engineering and QA clarification throughout delivery
- Coordinating business validation and UAT
- Supporting change-impact and release-readiness activities

The Business Analyst does not independently own the technical architecture.

Technical design and implementation decisions are defined collaboratively
with the appropriate Product, Engineering, Data/BI and QA stakeholders.
