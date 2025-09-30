# 🚨 HIPAA Safety Protocol

## AI Agent HIPAA Detection Rules

### IMMEDIATE ALERT CONDITIONS
**Alert the user to review for HIPAA data if ANY of the following appear:**

#### 🔴 HIGH RISK - STOP and Alert:
- **Patient identifiers**: Names, SSNs, dates of birth, addresses
- **Specific dates**: Exact admission dates, appointment times, procedure dates
- **Location specifics**: Room numbers, bed assignments, specific clinic names
- **Provider names**: Individual doctor/nurse names (not roles)
- **Contact information**: Phone numbers, email addresses, emergency contacts
- **Insurance details**: Policy numbers, member IDs, claims data
- **Specific medical records**: Diagnosis codes with dates, test results with values

#### 🟡 MEDIUM RISK - Review Suggested:
- **Small patient cohorts**: Queries returning <10 patients from small facilities
- **Rare conditions**: Uncommon diagnoses that could identify individuals
- **Date ranges**: Very specific time periods that might identify events
- **Facility combinations**: Multiple specific location filters that narrow scope significantly
- **Demographic combinations**: Age + gender + condition + location that could identify someone

#### 🟢 LOW RISK - Generally Safe:
- **Aggregate queries**: COUNT, SUM, AVG without individual records
- **Schema exploration**: Table structures, column names, data types
- **Code patterns**: SQL syntax, stored procedures, functions
- **System identifiers**: PatientSID, StaffSID (when used as variables)
- **General timeframes**: Fiscal years, quarters, months
- **Broad categories**: Drug classes, service types, general locations

## 🛡️ Alert Message Format

When detecting potential HIPAA data:

```
🚨 HIPAA ALERT: I've detected [SPECIFIC RISK] in this content:
- [List specific items found]
- Risk Level: [HIGH/MEDIUM/LOW]
- Recommendation: [Specific action needed]

Please review and confirm if you want to:
A) Remove this content
B) Modify it to remove identifiers  
C) Confirm it's safe to proceed
```

## 📋 User Responsibilities

**User commits to:**
- ✅ Review all HIPAA alerts promptly
- ✅ Delete or modify flagged content as needed
- ✅ Make final determination on data sensitivity
- ✅ Understand VA/HIPAA policies for their role

**AI Agent commits to:**
- ✅ Flag any suspicious content immediately
- ✅ Err on the side of caution
- ✅ Stop processing until user confirms safety
- ✅ Never assume data is safe without explicit user approval

## 🎯 Implementation

This protocol is now active. AI agents should:
1. **Scan all content** before processing
2. **Alert immediately** if any risk indicators found
3. **Wait for user confirmation** before proceeding
4. **Document** any HIPAA-related decisions in context

---
**Purpose**: HIPAA compliance safety net  
**Scope**: All SQL queries, results, and documentation  
**Authority**: User has final say on all content decisions