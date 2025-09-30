# 🤖 AI Learning System Protocol

## Automated Query Management System

### 📁 Directory Structure

```
/ai-generated-queries/
├── project-2025-09-30-antipsychotics/
├── project-2025-10-01-medication-tracking/
├── project-YYYY-MM-DD-[description]/
└── README.md

/archived-versions/
├── lessons-learned/
│   ├── v1-lessons-learned-2025-09-30.md
│   ├── v2-lessons-learned-2025-10-01.md
│   └── current-lessons-learned.md -> latest version
└── deprecated-queries/
    ├── old-injectable-v1.sql
    └── old-schema-discovery-v1.sql
```

## 🔄 AI Agent Learning Workflow

### When AI Creates New Query:
1. **Create Project Folder**: `/ai-generated-queries/project-YYYY-MM-DD-[brief-description]/`
2. **Save Original Query**: `original-query-v1.sql`
3. **Save Refined Query**: `final-query-v[n].sql` 
4. **Document Process**: `development-log.md`

### When AI Learns Something New:
1. **Archive Current Version**: Move current lessons to `/archived-versions/lessons-learned/v[n]-lessons-learned-YYYY-MM-DD.md`
2. **Update Current**: Update main lessons learned file
3. **Log Discovery**: Add entry to `learning-changelog.md`

## 📋 Project Folder Template

Each new project should contain:
- `original-query-v1.sql` - First AI attempt
- `refined-query-v[n].sql` - Final working version
- `development-log.md` - Step-by-step process
- `schema-discoveries.md` - New column/table findings
- `troubleshooting-notes.md` - Errors encountered and solutions

## 🎯 AI Agent Instructions

### For Every New SQL Project:
```python
# 1. Create timestamped project folder
project_name = f"project-{date.today()}-{brief_description}"
create_folder(f"/ai-generated-queries/{project_name}")

# 2. Save all query versions
save_query(original_attempt, f"{project_name}/original-query-v1.sql")
save_query(final_version, f"{project_name}/final-query-v{version}.sql")

# 3. Document learning
update_lessons_learned(new_discoveries)
log_development_process(f"{project_name}/development-log.md")
```

### For Schema/Column Discoveries:
```python
# When user provides complete table schema
if complete_table_schema_provided:
    create_table_schema_file(f"/schema/table-schemas/{table_name}.md")
    update_schema_index(table_name, domain, key_columns)
    update_domain_relationships(domain, new_join_patterns)
    request_approval("New table added to schema repository")

# When finding new VHA CDW patterns
if new_schema_pattern_discovered:
    archive_current_mappings()
    update_column_mappings(new_pattern)
    log_discovery(pattern, source_query, date)
```

### Version Control Rules:
- ✅ **NEVER DELETE** working queries
- ✅ **ALWAYS ARCHIVE** before updating
- ✅ **VERSION EVERYTHING** with timestamps
- ✅ **DOCUMENT CHANGES** in development logs

## 🚨 User Control Gates

### Automated (No User Approval Needed):
- Creating project folders
- Saving query versions
- Updating development logs
- Archiving old versions

### Requires User Approval:
- Updating main lessons learned file
- Modifying core schema mappings
- Publishing discoveries to main documentation
- Deleting any content (never should happen)

## 📊 Learning Metrics

Track in `/learning-stats.md`:
- Queries generated per month
- Success rate improvements
- Common error patterns eliminated
- New VHA CDW patterns discovered
- Time saved through reused patterns

## 🔧 Implementation

AI agents should:
1. **Auto-create** project folders for each new request
2. **Auto-save** all query attempts and versions
3. **Auto-document** the development process
4. **Flag for approval** major knowledge base updates
5. **Never overwrite** existing successful patterns

---
**Purpose**: Automated learning and version control for AI-generated SQL queries  
**User Control**: High - user approves all major updates  
**Data Safety**: Maximum - nothing ever deleted, everything versioned