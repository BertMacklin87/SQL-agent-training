# 🔗 Medication Domain Relationships

## Core Tables in Medication Domain

### **Primary Tables:**
- **RxOutPat** - Outpatient prescription records
- **LocalDrug** - Drug master data and formulary
- **SStaff** - Prescribing providers
- **Patient** - Patient demographics
- **Location** - Prescribing locations

## 🎯 **Standard Join Patterns**

### **1. Prescription with Drug Details:**
```sql
SELECT r.PatientSID, r.IssueDate, r.DaysSupply, d.VAProductName, d.DrugClass
FROM VHA.Cdwwork_RxOut.RxOutPat r WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_LocalDrug.LocalDrug d WITH (NOLOCK)
    ON r.LocalDrugSID = d.LocalDrugSID 
    AND r.Sta3n = d.Sta3n
WHERE r.Sta3n = 589;
```

### **2. Prescription with Provider Information:**
```sql
SELECT r.PatientSID, r.IssueDate, s.StaffName, s.PositionTitle
FROM VHA.Cdwwork_RxOut.RxOutPat r WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_SStaff.SStaff s WITH (NOLOCK)
    ON r.ProviderSID = s.StaffSID 
    AND r.Sta3n = s.Sta3n
WHERE r.Sta3n = 589;
```

### **3. Complete Medication Query (All Relationships):**
```sql
SELECT 
    r.PatientSID,
    r.IssueDate,
    r.DaysSupply,
    d.VAProductName,
    d.DrugClass,
    s.StaffName,
    s.PositionTitle,
    l.LocationName
FROM VHA.Cdwwork_RxOut.RxOutPat r WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_LocalDrug.LocalDrug d WITH (NOLOCK)
    ON r.LocalDrugSID = d.LocalDrugSID AND r.Sta3n = d.Sta3n
INNER JOIN VHA.Cdwwork_SStaff.SStaff s WITH (NOLOCK)
    ON r.ProviderSID = s.StaffSID AND r.Sta3n = s.Sta3n
INNER JOIN VHA.Cdwwork_Dim.Location l WITH (NOLOCK)
    ON r.LocationSID = l.LocationSID AND r.Sta3n = l.Sta3n
WHERE r.Sta3n = 589
    AND r.IssueDate >= '2024-01-01'
    AND r.IssueDate <= '2025-01-01';
```

## 🔑 **Key Relationship Columns**

### **Join Keys:**
- **PatientSID** - Links to patient demographics
- **LocalDrugSID** - Links to drug master data
- **ProviderSID** - Links to prescribing staff (maps to StaffSID)
- **LocationSID** - Links to prescribing location
- **Sta3n** - Station filter (ALWAYS include in joins)

### **Common Filters:**
- **IssueDate** - Prescription issue date
- **ReleaseDate** - When prescription was released
- **RxStatus** - Prescription status (Active, Discontinued, etc.)

## ⚠️ **Important Notes**

### **Column Name Gotchas:**
- Use **ProviderSID** not OrderingProviderSID in RxOut
- Use **VAProductName** not LocalDrugName in LocalDrug
- Use **PositionTitle** not Title in SStaff

### **Performance Tips:**
- **Always filter by Sta3n = 589** in ALL joined tables
- **Include date ranges** on IssueDate for large result sets
- **Use WITH (NOLOCK)** on all tables for read queries

### **Data Insights:**
- **Injectable antipsychotics** are primarily outpatient (RxOut) not inpatient (BCMA)
- **IMO injections** (Inpatient Meds for Outpatient) appear in RxOut
- **Provider information** may be incomplete for some prescriptions

---
**Last Updated**: Based on injectable antipsychotics analysis  
**Coverage**: Tables actively used in medication tracking queries  
**Performance Optimized**: All patterns include Kansas City VAMC filters