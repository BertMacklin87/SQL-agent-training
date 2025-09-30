# 📋 Quick Schema Entry Template

## For AI Agents - When User Provides Table Schema

### **Auto-Generate This Structure:**

```markdown
# {TableName} - VHA CDW Schema

## Table Information
- **Full Path**: `VHA.Cdwwork_{Domain}.{TableName}`
- **Domain**: {Domain} (Medication/Staff/Patient/Facility/Other)
- **Primary Keys**: {list_primary_keys_from_schema}
- **Station Filter**: `Sta3n = 589` (Kansas City default)
- **Date Added**: {current_date}

## Column List
{auto_generate_from_user_provided_schema}

## Common Join Patterns
{suggest_based_on_SID_columns_found}

## Performance Notes
- Always include `WHERE Sta3n = 589`
- {identify_date_columns_for_filtering}
- {note_any_large_tables_needing_TOP_limits}

## Related Tables
{identify_from_SID_column_patterns}

---
**Source**: User-provided schema on {date}
**Validated**: {yes/no - mark yes after first successful query}
```

### **Steps for AI Agent:**

1. **Parse user's column list** into structured markdown table
2. **Identify key patterns**:
   - SID columns (likely join keys)
   - Date columns (for filtering)
   - Sta3n column (confirm station filtering available)
   
3. **Auto-categorize domain** based on table name patterns:
   - RxOut*, *Drug*, *Prescription* → Medication
   - *Staff*, *Provider*, *Person* → Staff  
   - *Patient*, *Demographics* → Patient
   - *Location*, *Institution*, *Site* → Facility

4. **Generate relationship suggestions** based on SID columns found

5. **Update schema index** with new table entry

6. **Ask user approval** before updating main documentation

### **Example User Input Processing:**

**User says**: "Here are all columns from VHA.Cdwwork_RxOut.RxOutPat: PatientSID, ProviderSID, LocalDrugSID, IssueDate, DaysSupply, Sta3n..."

**AI should**:
1. Recognize this as RxOutPat table schema
2. Create `/schema/table-schemas/RxOutPat.md` 
3. Add entry to medication domain in schema index
4. Update medication domain relationships
5. Ask: "New RxOutPat schema added to repository. Should I update the main documentation?"

---
**Purpose**: Streamline schema documentation process  
**User Control**: Always ask approval for main doc updates  
**Growth Strategy**: Build organically as tables are actually used