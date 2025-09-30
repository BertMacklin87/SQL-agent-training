--1. All Tables and Views:-----------------------------------------------------------------------------------------

SELECT 
    TABLE_CATALOG,
    TABLE_SCHEMA,
    TABLE_NAME,
    TABLE_TYPE,
    ROW_COUNT = (SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES t2 WHERE t2.TABLE_NAME = t1.TABLE_NAME)
FROM INFORMATION_SCHEMA.TABLES t1
WHERE TABLE_SCHEMA LIKE 'cdwwork%'
ORDER BY TABLE_SCHEMA, TABLE_NAME;

----2. Just columns for key Health Equity tables (maybe 50-100 rows)

SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_SCHEMA = 'cdwwork_hf' AND TABLE_NAME = 'HealthFactor')
   OR (TABLE_SCHEMA = 'cdwwork_dim' AND TABLE_NAME IN ('Sta3n', 'HealthFactorType', 'Date'))
   OR (TABLE_SCHEMA = 'cdwwork_sstaff' AND TABLE_NAME = 'SSTaff')
   OR (TABLE_SCHEMA = 'cdwwork_spatient' AND TABLE_NAME IN ('SPatient', 'SPatientAddress'))
   OR (TABLE_SCHEMA = 'cdwwork_patsub' AND TABLE_NAME IN ('PatientRace', 'PatientEthnicity'))
ORDER BY TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION;


--3. Foreign Key Relationships:-----------------------------------------------------------------------------------------

SELECT 
    fk.name AS ForeignKey,
    tp.name AS ParentTable,
    cp.name AS ParentColumn,
    tr.name AS ReferencedTable,
    cr.name AS ReferencedColumn
FROM sys.foreign_keys fk
INNER JOIN sys.tables tp ON fk.parent_object_id = tp.object_id
INNER JOIN sys.tables tr ON fk.referenced_object_id = tr.object_id
INNER JOIN sys.foreign_key_columns fkc ON fkc.constraint_object_id = fk.object_id
INNER JOIN sys.columns cp ON fkc.parent_column_id = cp.column_id AND fkc.parent_object_id = cp.object_id
INNER JOIN sys.columns cr ON fkc.referenced_column_id = cr.column_id AND fkc.referenced_object_id = cr.object_id
WHERE SCHEMA_NAME(tp.schema_id) LIKE 'cdwwork%'
ORDER BY tp.name, cp.name;

--4. Primary Keys:-----------------------------------------------------------------------------------------

SELECT 
    SCHEMA_NAME(t.schema_id) AS SchemaName,
    t.name AS TableName,
    c.name AS ColumnName,
    ic.key_ordinal AS KeyOrder
FROM sys.tables t
INNER JOIN sys.indexes i ON t.object_id = i.object_id
INNER JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
INNER JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
WHERE i.is_primary_key = 1
  AND SCHEMA_NAME(t.schema_id) LIKE 'cdwwork%'
ORDER BY SchemaName, TableName, KeyOrder;


SELECT TOP 3 * FROM VHA.Cdwwork_Dim.Sta3n;
SELECT* FROM VHA.Cdwwork_SStaff.SSTaff WHERE StaffName LIKE '%minnick%' 
   and firstname LIKE '%Matthew%';;

-- Sample SStaff table (look for your name)
SELECT TOP 10 
    StaffSID,
    StaffName,
    -- [other columns but exclude SSN/sensitive fields]
FROM VHA.Cdwwork_SStaff.SSTaff 
WHERE StaffName LIKE '%minnick%' 
   OR StaffName LIKE '%Minnick%';