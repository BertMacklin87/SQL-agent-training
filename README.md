# VHA CDW SQL Knowledge Base

A comprehensive knowledge base for developing SQL queries against the Veterans Health Administration (VHA) Clinical Data Warehouse (CDW). This repository includes working queries, schema documentation, troubleshooting guides, and training materials for LLM agents.

## 🎯 Purpose

This repository serves as:
- **Reference library** for VHA CDW table structures and relationships
- **Working query collection** with proven, tested SQL code
- **Troubleshooting guide** for common CDW development challenges  
- **Training dataset** for LLM agents to improve SQL development capabilities

## 📁 Repository Structure

```
├── queries/              # Working SQL queries with annotations
├── schema/              # Table documentation and column mappings  
├── examples/            # Schema discovery and common patterns
├── llm-training/        # AI agent training materials
├── troubleshooting/     # Error resolution guides
└── .github/            # GitHub Copilot configuration
```

## 🚀 Quick Start

### For Developers
1. Browse `/queries/` for working examples
2. Check `/schema/` for table documentation
3. Use `/examples/schema-discovery-queries.sql` to explore new tables

### For LLM Agents
1. Read `.github/copilot-instructions.md` for development guidelines
2. Reference `/llm-training/sql-best-practices.md` for VHA CDW patterns
3. Use `/troubleshooting/` guides for error resolution

## 🏥 VHA CDW Environment

**Database**: Microsoft SQL Server (Cloud)  
**Schema Pattern**: `VHA.Cdwwork_[Domain].[Table]`  
**Key Requirements**:
- Always use `WITH (NOLOCK)` for read queries
- Filter by `Sta3n` (station number) for performance
- Use `TOP` instead of `LIMIT` for row limiting
- Avoid CTEs in cloud environment

## 📋 Common Tables

| Table | Schema | Purpose |
|-------|--------|---------|
| RxOutPat | Cdwwork_RxOut | Outpatient prescriptions |
| SStaff | Cdwwork_SStaff | Staff information |
| LocalDrug | Cdwwork_LocalDrug | Drug master data |
| Location | Dim | Facility locations |

## 🔧 Essential Patterns

### Basic Query Template
```sql
SELECT [columns]
FROM VHA.Cdwwork_[Schema].[Table] WITH (NOLOCK)
WHERE Sta3n = [station_number]
    AND [DateColumn] >= 'YYYY-MM-DD'
    AND [DateColumn] <= 'YYYY-MM-DD';
```

### Schema Discovery
```sql
-- Get table columns
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'Cdwwork_[Schema]'
    AND TABLE_NAME = '[Table]';

-- Sample data structure
SELECT TOP 1 * 
FROM VHA.Cdwwork_[Schema].[Table] WITH (NOLOCK)
WHERE Sta3n = [station];
```

## 🎯 Key Success Factors

1. **Always verify column names** with schema discovery before building complex queries
2. **Use systematic approach** - start simple, add complexity incrementally  
3. **Include station filters** - required for performance and data scoping
4. **Document discoveries** - save working column names and successful patterns
5. **Test incrementally** - validate each join and filter before proceeding

## 🤝 Contributing

When adding new content:
- Document successful queries with clear annotations
- Include schema discoveries and column name mappings
- Add troubleshooting solutions for new error patterns
- Update training materials with lessons learned

## 📚 Training Materials

This repository includes specialized training content for LLM agents:
- Successful conversation patterns for SQL debugging
- Common error scenarios and systematic resolution approaches
- VHA CDW-specific syntax requirements and best practices
- Schema discovery techniques and column name validation methods

---

**Maintained by**: VHA Data Analytics Team  
**Last Updated**: September 2025  
**Environment**: VHA Clinical Data Warehouse (Cloud)