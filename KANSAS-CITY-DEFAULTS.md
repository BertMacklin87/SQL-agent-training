# 🎯 Kansas City VAMC Default Settings

## Critical Performance Optimization

### **Default Station Filter: Sta3n = 589**

**Kansas City VAMC** is the primary facility for this user. Unless specifically requested otherwise, **ALWAYS** include:

```sql
WHERE Sta3n = 589
```

### Why This Matters:
- **Massive performance improvement**: Filters millions of records down to facility-specific data
- **Query speed**: Can improve query execution from minutes to seconds
- **Data relevance**: Most queries are facility-specific anyway
- **Best practice**: VHA CDW queries should always include station filters

### When to Use Different Stations:
- User explicitly requests multi-facility analysis
- VISN-wide reporting (stations 589, 657, 589A5, 589A7, etc.)
- Cross-facility comparisons
- Regional studies

### Kansas City VAMC Station Codes:
- **589**: Main Kansas City VAMC
- **589A5**: Eastern Kansas HCC (Leavenworth)
- **589A7**: Warrensburg CBOC
- **657**: Marion VAMC (sometimes included in regional queries)

### Standard Query Pattern:
```sql
SELECT [columns]
FROM VHA.Cdwwork_[Domain].[Table] WITH (NOLOCK)
WHERE Sta3n = 589  -- ALWAYS START HERE
    AND [additional_filters]
    AND [date_filters];
```

### Multi-Station Pattern (when needed):
```sql
WHERE Sta3n IN (589, 589A5, 589A7)  -- KC region
-- OR
WHERE Sta3n IN (537, 550, 556, 578, 585, 589, 600, 605, 607, 637, 644, 649, 664, 676, 691, 695, 657, 652)  -- VISN 15
```

### Schema Discovery with Station Filter:
```sql
-- Always test with station filter
SELECT TOP 1 * 
FROM VHA.Cdwwork_[Domain].[Table] WITH (NOLOCK)
WHERE Sta3n = 589;

-- Check data availability
SELECT COUNT(*) as RecordCount
FROM VHA.Cdwwork_[Domain].[Table] WITH (NOLOCK)
WHERE Sta3n = 589;
```

---
**Remember**: When in doubt, filter by Sta3n = 589 first, then expand scope if needed!