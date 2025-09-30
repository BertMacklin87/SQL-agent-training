# 🎯 **Repository Selection Guide**

## **Choose Your VHA CDW Knowledge Base**

### **📋 Standard Knowledge Base** (Clean & Focused)
**Repository**: `github.com/BertMacklin87/SQL-agent-training`

**Use this prompt:**
```
Please read my VHA CDW knowledge base at github.com/BertMacklin87/SQL-agent-training
Focus on /schema/schema-index.md for existing tables and /schema/relationships/ 
for join patterns. 

CRITICAL RULES:
1. NEVER assume column names - ONLY use columns I've documented or provided
2. If table not in my schema-index.md, STOP and ask: "Can you provide the actual column names for [TableName]?"
3. Before writing SQL, ask clarifying questions about clinical context (inpatient vs outpatient, BCMA vs clinic administration)
4. Verify ALL columns against my documented schema before generating any SQL
5. When uncertain about columns, ask me to run: SELECT TOP 1 * FROM [TableName] WHERE Sta3n = 589

MEDICATION WORKFLOW: For any medication analysis, ALWAYS get LocalDrugSIDs first 
using the LocalDrug table, then use those SIDs in prescription queries. See 
/schema/relationships/medication-domain.md for the required 2-step process.

If I provide table columns, use /schema/SCHEMA-ENTRY-TEMPLATE.md to create 
structured documentation and ask approval before updating main files.
```

**Best for:**
- ✅ Learning VHA CDW fundamentals
- ✅ Simple query development
- ✅ Table schema documentation
- ✅ Basic troubleshooting
- ✅ Clean, focused reference

---

### **🚀 10X Enhanced AI System** (Advanced & Powerful)  
**Repository**: `github.com/BertMacklin87/SQL-agent-training-10X`

**Use this prompt:**
```
Please use my advanced VHA CDW AI system at github.com/BertMacklin87/SQL-agent-training-10X
Start with /AI-AGENT-START-HERE.md for intelligent navigation. 

CRITICAL: NEVER assume column names - always verify against my documented schemas 
in /schema/schema-index.md or ASK for actual table structure before generating SQL.
If uncertain, ask me to run schema discovery: SELECT TOP 1 * FROM [TableName] WHERE Sta3n = 589

MEDICATION WORKFLOW: For any medication analysis, ALWAYS get LocalDrugSIDs first 
using the LocalDrug table, then use those SIDs in prescription queries. See 
/schema/relationships/medication-domain.md for the required 2-step process.

Use /AI-QUERY-GENERATOR.md for optimized SQL generation, /REALTIME-VALIDATOR.md 
for live analysis, and /DOMAIN-ACCELERATORS.md for clinical analytics templates.
```

**Best for:**
- 🚀 AI-powered query generation
- ⚡ Real-time performance optimization  
- 📊 Clinical analytics and reporting
- 🔍 Advanced schema intelligence
- 🔒 HIPAA compliance automation
- 📚 Interactive learning modules

---

## **Quick Decision Matrix**

| Need | Standard Repo | 10X Enhanced Repo |
|------|---------------|-------------------|
| **Document new table schema** | ✅ Perfect | ✅ AI-Enhanced |
| **Learn VHA CDW basics** | ✅ Ideal | 📚 Interactive Learning |
| **Write simple queries** | ✅ Great | 🚀 AI Generation |
| **Complex clinical analytics** | ❓ Manual | 📊 Ready Templates |
| **Performance optimization** | ⚠️ Manual | ⚡ Automatic |
| **HIPAA compliance checking** | ⚠️ Manual | 🔒 Real-time |
| **Real-time query validation** | ❌ None | 🔍 Live Analysis |

**Choose based on your current needs!** 🎯