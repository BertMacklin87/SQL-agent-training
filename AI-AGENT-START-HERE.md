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