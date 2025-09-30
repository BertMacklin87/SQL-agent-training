# 📊 VHA CDW Schema Repository

## Table Schema Collection Strategy

### 🎯 **Purpose**
Build a curated collection of **frequently used** VHA CDW table schemas rather than overwhelming with all 70,000+ columns. Focus on the ~40% of tables actually used in practice.

### 📁 **Organization Structure**

```
/schema/
├── table-schemas/              # Individual table column definitions
│   ├── RxOutPat.md            # Prescription data
│   ├── SStaff.md              # Staff information  
│   ├── LocalDrug.md           # Drug master data
│   ├── Location.md            # Facility locations
│   ├── Patient.md             # Patient demographics
│   └── [TableName].md         # New tables as discovered
├── relationships/              # How tables connect
│   ├── medication-domain.md   # Drug/prescription relationships
│   ├── staff-domain.md        # Staff/provider relationships
│   ├── patient-domain.md      # Patient/encounter relationships
│   └── facility-domain.md     # Location/facility relationships
├── column-name-mappings.md    # Common column name issues
└── schema-index.md            # Master navigation guide
```

## 🔄 **AI Agent Integration Protocol**

### **When User Provides Table Schema:**
```python
# 1. Create individual table file
create_file(f"/schema/table-schemas/{table_name}.md")

# 2. Add to relationships if new domain
if new_domain_discovered:
    update_relationships(domain, table_connections)

# 3. Update schema index
add_to_schema_index(table_name, domain, key_columns)

# 4. Ask user approval for major updates
request_approval("New table schema added - update documentation?")
```

### **Auto-Generated Table Schema Template:**
```markdown
# {TableName} - VHA CDW Schema

## Table Information
- **Full Path**: `VHA.Cdwwork_{Domain}.{TableName}`
- **Primary Keys**: {list primary keys}
- **Common Joins**: {list common join columns}
- **Station Filter**: `Sta3n = 589` (Kansas City default)

## Column List
| Column Name | Data Type | Description | Common Use |
|-------------|-----------|-------------|------------|
| {column} | {type} | {description} | {usage} |

## Sample Query Pattern
```sql
SELECT {commonly_used_columns}
FROM VHA.Cdwwork_{Domain}.{TableName} WITH (NOLOCK)
WHERE Sta3n = 589
    AND {common_filters};
```

## Known Issues
- {document any column name gotchas}
- {performance considerations}

## Related Tables
- **Joins to**: {list related tables}
- **Foreign Keys**: {list FK relationships}
```

## 🎯 **Schema Discovery Automation**

### **For AI Agents - Table Schema Collection:**
When user provides table schema:
1. **Parse columns** into structured format
2. **Identify key columns** (SID columns, dates, common filters)
3. **Generate table documentation** using template
4. **Update relationship maps** if new connections found
5. **Add to schema index** for easy navigation

### **Relationship Mapping Strategy:**
Group tables by domain:
- **Medication Domain**: RxOut, LocalDrug, DrugClass, etc.
- **Staff Domain**: SStaff, Provider, Person, etc.  
- **Patient Domain**: Patient, Demographics, Encounters, etc.
- **Facility Domain**: Location, Institution, Site, etc.

## 📋 **User Workflow**

### **Adding New Table Schema:**
1. Run schema discovery query on new table
2. Copy/paste column output to AI agent
3. AI creates structured table documentation
4. AI updates relationship mappings
5. User approves updates to main documentation

### **Building Query Relationships:**
1. AI references existing table schemas
2. Suggests optimal join patterns based on documented relationships
3. Uses proven column mappings to avoid naming errors
4. Follows Kansas City performance patterns

## 🚀 **Benefits**

### **For AI Agents:**
- **Fast schema lookup** instead of 70,000-row searches
- **Proven join patterns** for common table combinations
- **Performance-optimized queries** with documented best practices
- **Error prevention** through documented column name issues

### **For Users:**
- **Curated, relevant schemas** (only tables actually used)
- **Growing knowledge base** that improves over time
- **Faster query development** with pre-mapped relationships
- **Consistent patterns** across all SQL development

---
**Management**: User controls what gets added, AI automates the documentation  
**Growth Strategy**: Add tables as needed rather than overwhelming with everything  
**Quality Focus**: Document what works rather than theoretical completeness