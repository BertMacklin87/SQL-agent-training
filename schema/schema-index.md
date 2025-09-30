# 🗺️ VHA CDW Schema Index

## Quick Navigation to Table Schemas

### 💊 **Medication Domain**
| Table | Schema Path | Key Columns | Common Use |
|-------|-------------|-------------|------------|
| [RxOutPat](./table-schemas/RxOutPat.md) | Cdwwork_RxOut | PatientSID, ProviderSID, IssueDate | Outpatient prescriptions |
| [LocalDrug](./table-schemas/LocalDrug.md) | Cdwwork_LocalDrug | LocalDrugSID, VAProductName | Drug master data |
| *(Add more as discovered)* | | | |

### 👥 **Staff Domain**  
| Table | Schema Path | Key Columns | Common Use |
|-------|-------------|-------------|------------|
| [SStaff](./table-schemas/SStaff.md) | Cdwwork_SStaff | StaffSID, PositionTitle, StaffName | Staff information |
| *(Add more as discovered)* | | | |

### 🏥 **Patient Domain**
| Table | Schema Path | Key Columns | Common Use |
|-------|-------------|-------------|------------|
| Patient | Cdwwork_Patient | PatientSID, PatientICN | Demographics |
| *(Add more as discovered)* | | | |

### 🏢 **Facility Domain**
| Table | Schema Path | Key Columns | Common Use |
|-------|-------------|-------------|------------|
| Location | Dim | LocationSID, LocationName | Facility locations |
| *(Add more as discovered)* | | | |

## 🔗 **Domain Relationships**

### **Medication Queries - Common Join Pattern:**
```sql
-- Prescription with drug details and provider info
SELECT r.PatientSID, r.IssueDate, d.VAProductName, s.StaffName
FROM VHA.Cdwwork_RxOut.RxOutPat r WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_LocalDrug.LocalDrug d WITH (NOLOCK)
    ON r.LocalDrugSID = d.LocalDrugSID AND r.Sta3n = d.Sta3n
INNER JOIN VHA.Cdwwork_SStaff.SStaff s WITH (NOLOCK)
    ON r.ProviderSID = s.StaffSID AND r.Sta3n = s.Sta3n
WHERE r.Sta3n = 589;
```

### **Staff Queries - Provider Relationships:**
```sql  
-- Staff with location information
SELECT s.StaffName, s.PositionTitle, l.LocationName
FROM VHA.Cdwwork_SStaff.SStaff s WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.Location l WITH (NOLOCK)
    ON s.LocationSID = l.LocationSID AND s.Sta3n = l.Sta3n
WHERE s.Sta3n = 589;
```

## 📊 **Schema Statistics**
- **Total Tables Documented**: 2 (growing as needed)
- **Domains Covered**: 4 (Medication, Staff, Patient, Facility)
- **Last Updated**: September 30, 2025
- **Coverage Strategy**: Add tables as actually used (not comprehensive)

## 🎯 **AI Agent Instructions**

### **For Schema Lookups:**
1. Check this index first for existing table documentation
2. If table exists, reference the detailed schema file
3. If table missing, offer to create documentation from user-provided schema
4. Update this index when new tables added

### **For Relationship Queries:**
1. Reference the domain relationship patterns above
2. Use documented join strategies for common combinations  
3. Follow Kansas City performance patterns (Sta3n = 589)
4. Suggest optimal table combinations based on documented relationships

### **Adding New Tables:**
1. Create detailed table schema file in `/table-schemas/`
2. Add entry to appropriate domain section above
3. Update relationship patterns if new connections discovered
4. Ask user approval before major structural changes

---
**Growing Strategy**: Add tables organically as user needs them  
**Quality Focus**: Document proven, working relationships rather than theoretical completeness  
**Performance Optimized**: All patterns include Kansas City VAMC defaults