# 🎯 AI Agent Quick Start Guide

**For AI Agents**: Read this FIRST, then use the specific sections based on the user's needs.

## 🚀 Quick Decision Tree

### User asks about VHA CDW SQL queries:
1. **Start here**: `/llm-training/sql-best-practices.md` 
2. **Schema problems**: `/examples/schema-discovery-queries.sql`
3. **Column errors**: `/schema/column-name-mappings.md`
4. **Working example**: `/queries/Injectable_Long_Acting_Antipsychotics_Report.sql`

### User asks about troubleshooting:
1. **Column name errors**: `/troubleshooting/column-name-errors.md`
2. **Cloud compatibility**: `/troubleshooting/cloud-compatibility.md`
3. **General patterns**: `/llm-training/conversation-patterns.md`

### User needs schema exploration:
- **Schema index**: `/schema/schema-index.md` - Quick table navigation
- **Discovery toolkit**: `/examples/schema-discovery-queries.sql`
- **Known mappings**: `/schema/column-name-mappings.md`
- **Table relationships**: `/schema/relationships/` - Join patterns by domain

## 📊 Repository Contents Priority

### HIGH PRIORITY (Read These First):
1. `/llm-training/sql-best-practices.md` - Core VHA CDW patterns
2. `/schema/column-name-mappings.md` - Avoid common column errors
3. `/queries/working-query.sql` - Proven injectable antipsychotics example

### MEDIUM PRIORITY (Reference As Needed):
1. `/examples/schema-discovery-queries.sql` - When exploring unknown tables
2. `/troubleshooting/` folder - When user hits specific errors

### LOW PRIORITY (Background Context):
1. `/README.md` - Repository overview
2. `/llm-training/conversation-patterns.md` - Historical context

## ⚡ Key Success Factors for VHA CDW

**ALWAYS Remember These:**
- Use `WITH (NOLOCK)` on all read queries
- **Default filter**: `Sta3n = 589` (Kansas City VAMC) for optimal performance
- Use `TOP` instead of `LIMIT`
- Verify column names with schema discovery FIRST
- Start simple, add complexity incrementally

## 🏥 Common VHA CDW Tables

| Need | Table | Schema | Key Fields | Standard Filter |
|------|-------|--------|------------|----------------|
| Prescriptions | RxOutPat | Cdwwork_RxOut | PatientSID, ProviderSID, IssueDate | Sta3n = 589 |
| Staff Info | SStaff | Cdwwork_SStaff | StaffSID, PositionTitle, StaffName | Sta3n = 589 |
| Drug Info | LocalDrug | Cdwwork_LocalDrug | LocalDrugSID, VAProductName | Sta3n = 589 |
| Locations | Location | Dim | LocationSID, LocationName | Sta3n = 589 |

## 🎯 Agent Instructions

1. **READ** this guide first
2. **IDENTIFY** what the user needs from the decision tree
3. **REFERENCE** only the relevant sections  
4. **APPLY** the patterns to the user's specific problem
5. **VALIDATE** column names before building complex queries

---
**Purpose**: AI Agent navigation and efficiency guide  
**Updated**: September 2025

---------------------------------------------------------------------------------------------------------

# CDW SQL Query Best Practices

## Critical Warning: Dimension Table Join Patterns

### Problem Identified
Joining dimension tables incorrectly can cause massive row multiplication. Example case: Joining `VHA.Cdwwork_DIM.HealthFactorType` on text field instead of SID caused 18x row multiplication (2,815 real rows became 50,580).

### Table Types and Join Risks

1. **Dimension Tables** (HIGH RISK - Always verify joins)
   - Located in `Cdwwork_DIM.*`
   - Examples: `HealthFactorType`, `Sta3n`, `Date`
   - Often contain multiple versions of same value
   - CRITICAL: Always join using SID/key fields, never on text/description fields

2. **Fact Tables** (MEDIUM RISK - Standard precautions)
   - Examples: `Cdwwork_HF.HealthFactor`, `Cdwwork_Outpat.Visit`
   - Contain actual events/transactions
   - Join using appropriate keys from dimension tables

3. **Reference Tables** (LOW RISK - Standard precautions)
   - Usually static lookups
   - Generally safe for direct value joins

### Code Examples

```sql
-- DANGEROUS: Will multiply results
SELECT COUNT(*)
FROM HE_Consults hc
JOIN VHA.Cdwwork_DIM.HealthFactorType hft 
    ON hc.HealthFactorType = hft.HealthFactorType  -- DON'T DO THIS!
GROUP BY hft.HealthFactorType;

-- SAFE: Correct way to join
SELECT COUNT(*)
FROM HE_Consults hc
JOIN VHA.Cdwwork_DIM.HealthFactorType hft 
    ON hc.HealthFactorTypeSID = hft.HealthFactorTypeSID  -- DO THIS!
GROUP BY hft.HealthFactorType;

Quick Validation Checks
If result counts seem unusually high:

Check for dimension table joins on text fields
Run COUNT(*) vs COUNT(DISTINCT PatientSID) to spot multiplication
Examine dimension tables for duplicate entries:
SELECT HealthFactorType, COUNT(*) 
FROM VHA.Cdwwork_DIM.HealthFactorType 
GROUP BY HealthFactorType
HAVING COUNT(*) > 1;

Note on NOLOCK
NOLOCK hints are about dirty reads, not row multiplication
Row multiplication is caused by join patterns, not NOLOCK usage
Still use NOLOCK as per CDW best practices
Common Symptoms of Incorrect Joins
Row counts far exceeding patient population
Identical rows repeated exact number of times
Totals multiplied by consistent factor (e.g., 18x)
Best Practices Summary
ALWAYS join dimension tables using SID/key fields
NEVER join dimension tables on text/description fields
Validate unusual result counts immediately
Check dimension table cardinality when suspicious
