
/*----------------------------------------------------------------------
Injectable Long-Acting Antipsychotics Report - Cloud Database (SIMPLIFIED)
IMO (Inpatient Medications for Outpatient) Injections - KC Locations Only

Purpose: Extract injectable long-acting antipsychotics administered via BCMA
Date Range: 10/1/24 to 10/1/25
Station: 589 - KC locations only (excludes CO-, WI-, TO- locations)
-----------------------------------------------------------------------*/

-- Cloud optimization for performance
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

/*----------------------------------------------------------------------
Injectable Long-Acting Antipsychotics Reference Table
-----------------------------------------------------------------------*/
-- Drop temp table if it exists from previous run
IF OBJECT_ID('tempdb..#Injectable_Antipsychotics') IS NOT NULL
    DROP TABLE #Injectable_Antipsychotics;

-- Create temp table for injectable antipsychotics
CREATE TABLE #Injectable_Antipsychotics (
    LocalDrugSID INT,
    LocalDrugNameWithDose VARCHAR(255),
    VAClassification VARCHAR(50),
    DrugCategory VARCHAR(100)
);

-- Populate temp table with injectable antipsychotics
-- Haloperidol Decanoate
INSERT INTO #Injectable_Antipsychotics VALUES (609571, 'HALOPERIDOL DECANOATE 100MG/ML INJ 1ML', 'CN709', 'Haloperidol Decanoate');
-- Fluphenazine Decanoate  
INSERT INTO #Injectable_Antipsychotics VALUES (609559, 'FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML', 'CN701', 'Fluphenazine Decanoate');
-- Aripiprazole Lauroxil (Aristada)
INSERT INTO #Injectable_Antipsychotics VALUES (1000104855, 'ARIPIPRAZOLE 1064MG/3.9ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000029548, 'ARIPIPRAZOLE 300MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000035205, 'ARIPIPRAZOLE 400MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104851, 'ARIPIPRAZOLE 441MG/1.6ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104852, 'ARIPIPRAZOLE 662MG/2.4ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104853, 'ARIPIPRAZOLE 675MG/2.4ML SA INJ STARTER', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104854, 'ARIPIPRAZOLE 882MG/3.2ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
-- Olanzapine Pamoate (Zyprexa Relprevv)
INSERT INTO #Injectable_Antipsychotics VALUES (1000022302, 'OLANZAPINE 210MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022301, 'OLANZAPINE 300MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022303, 'OLANZAPINE 405MG/KIT INJ,SUSP,SA', 'CN709', 'Olanzapine Pamoate');
-- Paliperidone Palmitate (Invega Sustenna - Monthly)
INSERT INTO #Injectable_Antipsychotics VALUES (1025939, 'PALIPERIDONE PALM 117MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1025940, 'PALIPERIDONE PALM 156MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1024050, 'PALIPERIDONE PALM 234MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000005185, 'PALIPERIDONE PALM 39MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000000154, 'PALIPERIDONE PALM 78MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
-- Paliperidone Palmitate (Invega Trinza - 3 Month)
INSERT INTO #Injectable_Antipsychotics VALUES (1000054559, 'PALIPERIDONE 273MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054560, 'PALIPERIDONE 410MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054561, 'PALIPERIDONE 546MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054562, 'PALIPERIDONE 819MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
-- Paliperidone Palmitate (6 Month)
INSERT INTO #Injectable_Antipsychotics VALUES (1600052838, 'PALIPERIDONE 1092MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052839, 'PALIPERIDONE 1560MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
-- Risperidone (Risperdal Consta)
INSERT INTO #Injectable_Antipsychotics VALUES (1600171937, 'RISPERIDONE 100MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1035766, 'RISPERIDONE 12.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1600165950, 'RISPERIDONE 125MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (597819, 'RISPERIDONE 25MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (600037, 'RISPERIDONE 37.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (601371, 'RISPERIDONE 50MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');

-- **NEW FORMULATIONS DISCOVERED FROM QUERY 2** --
-- Additional Fluphenazine Decanoate (clinic injection dose)
-- Note: LocalDrugSID will need to be looked up for these new entries
-- INSERT INTO #Injectable_Antipsychotics VALUES ([SID_TBD], 'FLUPHENAZINE DEC CLINIC INJ 1 DOSE', 'CN701', 'Fluphenazine Decanoate');
-- Additional Haloperidol (short-acting injection) 
-- INSERT INTO #Injectable_Antipsychotics VALUES ([SID_TBD], 'HALOPERIDOL 5MG/ML INJ 1ML', 'CN709', 'Haloperidol Injection');

/*----------------------------------------------------------------------
Diagnostic Query - Check Outpatient Prescription Fills
-----------------------------------------------------------------------*/
PRINT 'Checking outpatient prescription fills for injectable antipsychotics...';

SELECT 
    rx.IssueDate
    ,ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,antipsych.DrugCategory
    ,COUNT(*) AS PrescriptionCount
    ,COUNT(DISTINCT rx.PatientSID) AS UniquePatients
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID
WHERE rx.Sta3n = 589
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    rx.IssueDate, ld.LocalDrugNameWithDose, ld.VAClassification, antipsych.DrugCategory
ORDER BY 
    rx.IssueDate DESC, PrescriptionCount DESC;

/*----------------------------------------------------------------------
Main Query - KC Location Injectable Antipsychotics (RxOut Focus)
Based on Query 1 findings - most activity is in outpatient prescriptions
-----------------------------------------------------------------------*/
SELECT 
    -- Patient Information
    pt.PatientSID
    ,pt.PatientName
    ,RIGHT(pt.PatientSSN, 4) AS Last4SSN
    ,DATEDIFF(YEAR, pt.BirthDateTime, rx.IssueDate) AS PatientAge
    
    -- Prescription Details  
    ,rx.IssueDate AS EncounterDate
    ,rx.IssueDate
    ,rx.ReleasedDateTime
    ,rx.DaysSupplyDispensed
    ,rx.QtyNumericDispensed
    ,rx.UnitDoseScheduleTypeName
    
    -- Prescribing Staff Information (closest match to "administering staff")
    ,staff.StaffName AS PrescribingStaff
    ,staff.ProviderClass AS StaffSpecialty
    ,staff.Title AS StaffTitle
    
    -- Location Information 
    ,loc.LocationName
    ,loc.LocationType
    ,'Kansas City' AS LocationRegion
    
    -- Medication Information
    ,ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,antipsych.DrugCategory
    ,ld.LocalDrugName
    ,ld.StrengthNumeric
    
    -- Prescription Status
    ,rx.RxStatus
    ,rx.RxNumber

FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)

-- Join to get medication details
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n

-- Join to our injectable antipsychotics list
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID

-- Join to get patient information
INNER JOIN VHA.Cdwwork_SPatient.SPatient pt WITH (NOLOCK)
    ON rx.PatientSID = pt.PatientSID
    AND rx.Sta3n = pt.Sta3n

-- Join to get prescribing staff information
LEFT JOIN VHA.Cdwwork_SStaff.SStaff staff WITH (NOLOCK)
    ON rx.OrderingProviderSID = staff.StaffSID
    AND staff.Sta3n = rx.Sta3n

-- Join to get location information
LEFT JOIN VHA.Cdwwork_Dim.Location loc WITH (NOLOCK)
    ON rx.LocationSID = loc.LocationSID
    AND loc.Sta3n = rx.Sta3n

WHERE 
    rx.Sta3n = 589 -- Station 589 only
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
    AND loc.LocationName LIKE 'KC-%' -- Kansas City locations only
    AND rx.RxStatus NOT IN ('DISCONTINUED', 'EXPIRED', 'CANCELLED') -- Active prescriptions only

ORDER BY 
    rx.IssueDate DESC
    ,pt.PatientName
    ,antipsych.DrugCategory;

-- Cleanup
DROP TABLE #Injectable_Antipsychotics;

/*----------------------------------------------------------------------
LOOKUP QUERY for New Medications Found in Query 2
Run this separately to get LocalDrugSID values for missing medications
-----------------------------------------------------------------------*/
/*
PRINT 'Looking up LocalDrugSID values for newly discovered injectable formulations...';
SELECT 
    ld.LocalDrugSID
    ,ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,COUNT(*) AS UsageCount
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
WHERE rx.Sta3n = 589
    AND ld.LocalDrugNameWithDose IN (
        'FLUPHENAZINE DEC CLINIC INJ 1 DOSE',
        'HALOPERIDOL 5MG/ML INJ 1ML'
    )
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    ld.LocalDrugSID, ld.LocalDrugNameWithDose, ld.VAClassification
ORDER BY 
    ld.LocalDrugNameWithDose;
*/

/*----------------------------------------------------------------------
ADDITIONAL DIAGNOSTIC QUERIES - Run separately to find missing data
-----------------------------------------------------------------------*/

-- =====================================================================
-- QUERY 1: All RxOut Locations for Injectable Antipsychotics
-- =====================================================================
/*
-- Recreate temp table for additional queries
IF OBJECT_ID('tempdb..#Injectable_Antipsychotics') IS NOT NULL
    DROP TABLE #Injectable_Antipsychotics;

CREATE TABLE #Injectable_Antipsychotics (
    LocalDrugSID INT,
    LocalDrugNameWithDose VARCHAR(255),
    VAClassification VARCHAR(50),
    DrugCategory VARCHAR(100)
);

INSERT INTO #Injectable_Antipsychotics VALUES (609571, 'HALOPERIDOL DECANOATE 100MG/ML INJ 1ML', 'CN709', 'Haloperidol Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (609559, 'FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML', 'CN701', 'Fluphenazine Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104855, 'ARIPIPRAZOLE 1064MG/3.9ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000029548, 'ARIPIPRAZOLE 300MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000035205, 'ARIPIPRAZOLE 400MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104851, 'ARIPIPRAZOLE 441MG/1.6ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104852, 'ARIPIPRAZOLE 662MG/2.4ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104853, 'ARIPIPRAZOLE 675MG/2.4ML SA INJ STARTER', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104854, 'ARIPIPRAZOLE 882MG/3.2ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022302, 'OLANZAPINE 210MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022301, 'OLANZAPINE 300MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022303, 'OLANZAPINE 405MG/KIT INJ,SUSP,SA', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1025939, 'PALIPERIDONE PALM 117MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1025940, 'PALIPERIDONE PALM 156MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1024050, 'PALIPERIDONE PALM 234MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000005185, 'PALIPERIDONE PALM 39MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000000154, 'PALIPERIDONE PALM 78MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054559, 'PALIPERIDONE 273MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054560, 'PALIPERIDONE 410MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054561, 'PALIPERIDONE 546MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054562, 'PALIPERIDONE 819MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052838, 'PALIPERIDONE 1092MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052839, 'PALIPERIDONE 1560MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600171937, 'RISPERIDONE 100MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1035766, 'RISPERIDONE 12.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1600165950, 'RISPERIDONE 125MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (597819, 'RISPERIDONE 25MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (600037, 'RISPERIDONE 37.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (601371, 'RISPERIDONE 50MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');

-- Query 1: Find ALL locations where injectable antipsychotics are prescribed
PRINT 'Finding all locations with injectable antipsychotic prescriptions...';
SELECT 
    loc.LocationName
    ,loc.LocationType
    ,COUNT(*) AS PrescriptionCount
    ,COUNT(DISTINCT rx.PatientSID) AS UniquePatients
    ,MIN(rx.IssueDate) AS FirstFill
    ,MAX(rx.IssueDate) AS LastFill
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID
LEFT JOIN VHA.Cdwwork_Dim.Location loc WITH (NOLOCK)
    ON rx.LocationSID = loc.LocationSID
    AND rx.Sta3n = loc.Sta3n
WHERE rx.Sta3n = 589
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    loc.LocationName, loc.LocationType
ORDER BY 
    PrescriptionCount DESC;

DROP TABLE #Injectable_Antipsychotics;
*/

-- =====================================================================
-- QUERY 2: All CN709/CN701 Medications at Station 589
-- =====================================================================
/*
PRINT 'Finding ALL CN709/CN701 medications at Station 589...';
SELECT 
    ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,COUNT(*) AS PrescriptionCount
    ,COUNT(DISTINCT rx.PatientSID) AS UniquePatients
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
WHERE rx.Sta3n = 589
    AND ld.VAClassification IN ('CN709', 'CN701')
    AND ld.LocalDrugNameWithDose LIKE '%INJ%'
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    ld.LocalDrugNameWithDose, ld.VAClassification
ORDER BY 
    PrescriptionCount DESC;
*/

-- =====================================================================
-- QUERY 3: Patient Summary - All Injectable Antipsychotic Patients
-- =====================================================================
/*
-- Recreate temp table
IF OBJECT_ID('tempdb..#Injectable_Antipsychotics') IS NOT NULL
    DROP TABLE #Injectable_Antipsychotics;

CREATE TABLE #Injectable_Antipsychotics (
    LocalDrugSID INT,
    LocalDrugNameWithDose VARCHAR(255),
    VAClassification VARCHAR(50),
    DrugCategory VARCHAR(100)
);

INSERT INTO #Injectable_Antipsychotics VALUES (609571, 'HALOPERIDOL DECANOATE 100MG/ML INJ 1ML', 'CN709', 'Haloperidol Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (609559, 'FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML', 'CN701', 'Fluphenazine Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104855, 'ARIPIPRAZOLE 1064MG/3.9ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000029548, 'ARIPIPRAZOLE 300MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000035205, 'ARIPIPRAZOLE 400MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104851, 'ARIPIPRAZOLE 441MG/1.6ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104852, 'ARIPIPRAZOLE 662MG/2.4ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104853, 'ARIPIPRAZOLE 675MG/2.4ML SA INJ STARTER', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104854, 'ARIPIPRAZOLE 882MG/3.2ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022302, 'OLANZAPINE 210MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022301, 'OLANZAPINE 300MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022303, 'OLANZAPINE 405MG/KIT INJ,SUSP,SA', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1025939, 'PALIPERIDONE PALM 117MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1025940, 'PALIPERIDONE PALM 156MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1024050, 'PALIPERIDONE PALM 234MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000005185, 'PALIPERIDONE PALM 39MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000000154, 'PALIPERIDONE PALM 78MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054559, 'PALIPERIDONE 273MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054560, 'PALIPERIDONE 410MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054561, 'PALIPERIDONE 546MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054562, 'PALIPERIDONE 819MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052838, 'PALIPERIDONE 1092MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052839, 'PALIPERIDONE 1560MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600171937, 'RISPERIDONE 100MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1035766, 'RISPERIDONE 12.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1600165950, 'RISPERIDONE 125MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (597819, 'RISPERIDONE 25MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (600037, 'RISPERIDONE 37.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (601371, 'RISPERIDONE 50MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');

PRINT 'Patient summary - Injectable antipsychotic usage patterns...';
SELECT 
    pt.PatientSID
    ,pt.PatientName
    ,RIGHT(pt.PatientSSN, 4) AS Last4SSN
    ,DATEDIFF(YEAR, pt.BirthDateTime, MIN(rx.IssueDate)) AS PatientAge
    ,COUNT(*) AS TotalPrescriptions
    ,COUNT(DISTINCT antipsych.DrugCategory) AS DifferentMedicationTypes
    ,MIN(rx.IssueDate) AS FirstPrescription
    ,MAX(rx.IssueDate) AS LastPrescription
    ,DATEDIFF(DAY, MIN(rx.IssueDate), MAX(rx.IssueDate)) AS DaysBetweenFirstLast
    ,(SELECT TOP 1 antipsych2.DrugCategory 
      FROM VHA.Cdwwork_RxOut.RxOutPat rx2 WITH (NOLOCK)
      INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld2 WITH (NOLOCK)
          ON rx2.LocalDrugSID = ld2.LocalDrugSID
      INNER JOIN #Injectable_Antipsychotics antipsych2
          ON ld2.LocalDrugSID = antipsych2.LocalDrugSID
      WHERE rx2.PatientSID = pt.PatientSID
          AND rx2.Sta3n = 589
          AND rx2.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
          AND rx2.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
      GROUP BY antipsych2.DrugCategory
      ORDER BY COUNT(*) DESC) AS PrimaryMedication
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID
INNER JOIN VHA.Cdwwork_SPatient.SPatient pt WITH (NOLOCK)
    ON rx.PatientSID = pt.PatientSID
    AND rx.Sta3n = pt.Sta3n
WHERE rx.Sta3n = 589
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    pt.PatientSID, pt.PatientName, pt.PatientSSN, pt.BirthDateTime
ORDER BY 
    TotalPrescriptions DESC, pt.PatientName;

DROP TABLE #Injectable_Antipsychotics;
*/

/*----------------------------------------------------------------------
End of Additional Diagnostic Queries
-----------------------------------------------------------------------*/





/*----------------------------------------------------------------------
End of Query
-----------------------------------------------------------------------*/


/*----------------------------------------------------------------------
					TESTING
-----------------------------------------------------------------------*/
/*
-- =====================================================================
-- QUERY 1: All RxOut Locations for Injectable Antipsychotics
-- =====================================================================

-- Recreate temp table for additional queries
IF OBJECT_ID('tempdb..#Injectable_Antipsychotics') IS NOT NULL
    DROP TABLE #Injectable_Antipsychotics;

CREATE TABLE #Injectable_Antipsychotics (
    LocalDrugSID INT,
    LocalDrugNameWithDose VARCHAR(255),
    VAClassification VARCHAR(50),
    DrugCategory VARCHAR(100)
);

INSERT INTO #Injectable_Antipsychotics VALUES (609571, 'HALOPERIDOL DECANOATE 100MG/ML INJ 1ML', 'CN709', 'Haloperidol Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (609559, 'FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML', 'CN701', 'Fluphenazine Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104855, 'ARIPIPRAZOLE 1064MG/3.9ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000029548, 'ARIPIPRAZOLE 300MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000035205, 'ARIPIPRAZOLE 400MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104851, 'ARIPIPRAZOLE 441MG/1.6ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104852, 'ARIPIPRAZOLE 662MG/2.4ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104853, 'ARIPIPRAZOLE 675MG/2.4ML SA INJ STARTER', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104854, 'ARIPIPRAZOLE 882MG/3.2ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022302, 'OLANZAPINE 210MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022301, 'OLANZAPINE 300MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022303, 'OLANZAPINE 405MG/KIT INJ,SUSP,SA', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1025939, 'PALIPERIDONE PALM 117MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1025940, 'PALIPERIDONE PALM 156MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1024050, 'PALIPERIDONE PALM 234MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000005185, 'PALIPERIDONE PALM 39MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000000154, 'PALIPERIDONE PALM 78MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054559, 'PALIPERIDONE 273MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054560, 'PALIPERIDONE 410MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054561, 'PALIPERIDONE 546MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054562, 'PALIPERIDONE 819MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052838, 'PALIPERIDONE 1092MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052839, 'PALIPERIDONE 1560MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600171937, 'RISPERIDONE 100MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1035766, 'RISPERIDONE 12.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1600165950, 'RISPERIDONE 125MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (597819, 'RISPERIDONE 25MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (600037, 'RISPERIDONE 37.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (601371, 'RISPERIDONE 50MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');

/*

-- Query 1: Find ALL locations where injectable antipsychotics are prescribed
PRINT 'Finding all locations with injectable antipsychotic prescriptions...';
SELECT 
    loc.LocationName
    ,loc.LocationType
    ,COUNT(*) AS PrescriptionCount
    ,COUNT(DISTINCT rx.PatientSID) AS UniquePatients
    ,MIN(rx.IssueDate) AS FirstFill
    ,MAX(rx.IssueDate) AS LastFill
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID
LEFT JOIN VHA.Cdwwork_Dim.Location loc WITH (NOLOCK)
    ON rx.LocationSID = loc.LocationSID
    AND rx.Sta3n = loc.Sta3n
WHERE rx.Sta3n = 589
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    loc.LocationName, loc.LocationType
ORDER BY 
    PrescriptionCount DESC;

DROP TABLE #Injectable_Antipsychotics;
*/

-- =====================================================================
-- QUERY 2: All CN709/CN701 Medications at Station 589
-- =====================================================================
/*
PRINT 'Finding ALL CN709/CN701 medications at Station 589...';
SELECT 
    ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,COUNT(*) AS PrescriptionCount
    ,COUNT(DISTINCT rx.PatientSID) AS UniquePatients
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
WHERE rx.Sta3n = 589
    AND ld.VAClassification IN ('CN709', 'CN701')
    AND ld.LocalDrugNameWithDose LIKE '%INJ%'
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    ld.LocalDrugNameWithDose, ld.VAClassification
ORDER BY 
    PrescriptionCount DESC;
*/

-- =====================================================================
-- QUERY 3: Patient Summary - All Injectable Antipsychotic Patients
-- =====================================================================

-- Recreate temp table
IF OBJECT_ID('tempdb..#Injectable_Antipsychotics') IS NOT NULL
    DROP TABLE #Injectable_Antipsychotics;

CREATE TABLE #Injectable_Antipsychotics (
    LocalDrugSID INT,
    LocalDrugNameWithDose VARCHAR(255),
    VAClassification VARCHAR(50),
    DrugCategory VARCHAR(100)
);

INSERT INTO #Injectable_Antipsychotics VALUES (609571, 'HALOPERIDOL DECANOATE 100MG/ML INJ 1ML', 'CN709', 'Haloperidol Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (609559, 'FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML', 'CN701', 'Fluphenazine Decanoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104855, 'ARIPIPRAZOLE 1064MG/3.9ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000029548, 'ARIPIPRAZOLE 300MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000035205, 'ARIPIPRAZOLE 400MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104851, 'ARIPIPRAZOLE 441MG/1.6ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104852, 'ARIPIPRAZOLE 662MG/2.4ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104853, 'ARIPIPRAZOLE 675MG/2.4ML SA INJ STARTER', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104854, 'ARIPIPRAZOLE 882MG/3.2ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022302, 'OLANZAPINE 210MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022301, 'OLANZAPINE 300MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022303, 'OLANZAPINE 405MG/KIT INJ,SUSP,SA', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1025939, 'PALIPERIDONE PALM 117MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1025940, 'PALIPERIDONE PALM 156MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1024050, 'PALIPERIDONE PALM 234MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000005185, 'PALIPERIDONE PALM 39MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000000154, 'PALIPERIDONE PALM 78MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054559, 'PALIPERIDONE 273MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054560, 'PALIPERIDONE 410MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054561, 'PALIPERIDONE 546MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054562, 'PALIPERIDONE 819MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052838, 'PALIPERIDONE 1092MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052839, 'PALIPERIDONE 1560MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600171937, 'RISPERIDONE 100MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1035766, 'RISPERIDONE 12.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1600165950, 'RISPERIDONE 125MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (597819, 'RISPERIDONE 25MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (600037, 'RISPERIDONE 37.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (601371, 'RISPERIDONE 50MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');

PRINT 'Patient summary - Injectable antipsychotic usage patterns...';
SELECT 
    pt.PatientSID
    ,pt.PatientName
    ,RIGHT(pt.PatientSSN, 4) AS Last4SSN
    ,DATEDIFF(YEAR, pt.BirthDateTime, MIN(rx.IssueDate)) AS PatientAge
    ,COUNT(*) AS TotalPrescriptions
    ,COUNT(DISTINCT antipsych.DrugCategory) AS DifferentMedicationTypes
    ,MIN(rx.IssueDate) AS FirstPrescription
    ,MAX(rx.IssueDate) AS LastPrescription
    ,DATEDIFF(DAY, MIN(rx.IssueDate), MAX(rx.IssueDate)) AS DaysBetweenFirstLast
    ,(SELECT TOP 1 antipsych2.DrugCategory 
      FROM VHA.Cdwwork_RxOut.RxOutPat rx2 WITH (NOLOCK)
      INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld2 WITH (NOLOCK)
          ON rx2.LocalDrugSID = ld2.LocalDrugSID
      INNER JOIN #Injectable_Antipsychotics antipsych2
          ON ld2.LocalDrugSID = antipsych2.LocalDrugSID
      WHERE rx2.PatientSID = pt.PatientSID
          AND rx2.Sta3n = 589
          AND rx2.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
          AND rx2.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
      GROUP BY antipsych2.DrugCategory
      ORDER BY COUNT(*) DESC) AS PrimaryMedication
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID
INNER JOIN VHA.Cdwwork_SPatient.SPatient pt WITH (NOLOCK)
    ON rx.PatientSID = pt.PatientSID
    AND rx.Sta3n = pt.Sta3n
WHERE rx.Sta3n = 589
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    pt.PatientSID, pt.PatientName, pt.PatientSSN, pt.BirthDateTime
ORDER BY 
    TotalPrescriptions DESC, pt.PatientName;

DROP TABLE #Injectable_Antipsychotics;
*/

/*----------------------------------------------------------------------
End of Additional Diagnostic Queries
-----------------------------------------------------------------------*/


/*

/*----------------------------------------------------------------------
Injectable Long-Acting Antipsychotics Report - Cloud Database (SIMPLIFIED)
IMO (Inpatient Medications for Outpatient) Injections - KC Locations Only

Purpose: Extract injectable long-acting antipsychotics administered via BCMA
Date Range: 10/1/24 to 10/1/25
Station: 589 - KC locations only (excludes CO-, WI-, TO- locations)
-----------------------------------------------------------------------*/

-- Cloud optimization for performance
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

/*----------------------------------------------------------------------
Injectable Long-Acting Antipsychotics Reference Table
-----------------------------------------------------------------------*/
-- Drop temp table if it exists from previous run
IF OBJECT_ID('tempdb..#Injectable_Antipsychotics') IS NOT NULL
    DROP TABLE #Injectable_Antipsychotics;

-- Create temp table for injectable antipsychotics
CREATE TABLE #Injectable_Antipsychotics (
    LocalDrugSID INT,
    LocalDrugNameWithDose VARCHAR(255),
    VAClassification VARCHAR(50),
    DrugCategory VARCHAR(100)
);

-- Populate temp table with injectable antipsychotics
-- Haloperidol Decanoate
INSERT INTO #Injectable_Antipsychotics VALUES (609571, 'HALOPERIDOL DECANOATE 100MG/ML INJ 1ML', 'CN709', 'Haloperidol Decanoate');
-- Fluphenazine Decanoate  
INSERT INTO #Injectable_Antipsychotics VALUES (609559, 'FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML', 'CN701', 'Fluphenazine Decanoate');
-- Aripiprazole Lauroxil (Aristada)
INSERT INTO #Injectable_Antipsychotics VALUES (1000104855, 'ARIPIPRAZOLE 1064MG/3.9ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000029548, 'ARIPIPRAZOLE 300MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000035205, 'ARIPIPRAZOLE 400MG/VIL SA INJ SUSP', 'CN709', 'Aripiprazole Maintena');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104851, 'ARIPIPRAZOLE 441MG/1.6ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104852, 'ARIPIPRAZOLE 662MG/2.4ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104853, 'ARIPIPRAZOLE 675MG/2.4ML SA INJ STARTER', 'CN709', 'Aripiprazole Lauroxil');
INSERT INTO #Injectable_Antipsychotics VALUES (1000104854, 'ARIPIPRAZOLE 882MG/3.2ML SA INJ SUSP', 'CN709', 'Aripiprazole Lauroxil');
-- Olanzapine Pamoate (Zyprexa Relprevv)
INSERT INTO #Injectable_Antipsychotics VALUES (1000022302, 'OLANZAPINE 210MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022301, 'OLANZAPINE 300MG/KIT SA INJ SUSP', 'CN709', 'Olanzapine Pamoate');
INSERT INTO #Injectable_Antipsychotics VALUES (1000022303, 'OLANZAPINE 405MG/KIT INJ,SUSP,SA', 'CN709', 'Olanzapine Pamoate');
-- Paliperidone Palmitate (Invega Sustenna - Monthly)
INSERT INTO #Injectable_Antipsychotics VALUES (1025939, 'PALIPERIDONE PALM 117MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1025940, 'PALIPERIDONE PALM 156MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1024050, 'PALIPERIDONE PALM 234MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000005185, 'PALIPERIDONE PALM 39MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
INSERT INTO #Injectable_Antipsychotics VALUES (1000000154, 'PALIPERIDONE PALM 78MG/KIT SA INJ SUSP', 'CN709', 'Paliperidone Palmitate Monthly');
-- Paliperidone Palmitate (Invega Trinza - 3 Month)
INSERT INTO #Injectable_Antipsychotics VALUES (1000054559, 'PALIPERIDONE 273MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054560, 'PALIPERIDONE 410MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054561, 'PALIPERIDONE 546MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1000054562, 'PALIPERIDONE 819MG/KIT (3 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 3-Month');
-- Paliperidone Palmitate (6 Month)
INSERT INTO #Injectable_Antipsychotics VALUES (1600052838, 'PALIPERIDONE 1092MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
INSERT INTO #Injectable_Antipsychotics VALUES (1600052839, 'PALIPERIDONE 1560MG/KIT (6 MONTH) SA INJ', 'CN709', 'Paliperidone Palmitate 6-Month');
-- Risperidone (Risperdal Consta)
INSERT INTO #Injectable_Antipsychotics VALUES (1600171937, 'RISPERIDONE 100MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1035766, 'RISPERIDONE 12.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (1600165950, 'RISPERIDONE 125MG/SYRINGE INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (597819, 'RISPERIDONE 25MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (600037, 'RISPERIDONE 37.5MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');
INSERT INTO #Injectable_Antipsychotics VALUES (601371, 'RISPERIDONE 50MG/VIL INJ SA SUSP', 'CN709', 'Risperidone Long-Acting');

/*----------------------------------------------------------------------
Diagnostic Query - Check Outpatient Prescription Fills
-----------------------------------------------------------------------*/
PRINT 'Checking outpatient prescription fills for injectable antipsychotics...';

SELECT 
    rx.IssueDate
    ,ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,antipsych.DrugCategory
    ,COUNT(*) AS PrescriptionCount
    ,COUNT(DISTINCT rx.PatientSID) AS UniquePatients
FROM VHA.Cdwwork_RxOut.RxOutPat rx WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON rx.LocalDrugSID = ld.LocalDrugSID
    AND rx.Sta3n = ld.Sta3n
INNER JOIN #Injectable_Antipsychotics antipsych
    ON ld.LocalDrugSID = antipsych.LocalDrugSID
WHERE rx.Sta3n = 589
    AND rx.IssueDate >= CAST('2024-10-01' AS DATETIME2(0))
    AND rx.IssueDate <= CAST('2025-10-01' AS DATETIME2(0))
GROUP BY 
    rx.IssueDate, ld.LocalDrugNameWithDose, ld.VAClassification, antipsych.DrugCategory
ORDER BY 
    rx.IssueDate DESC, PrescriptionCount DESC;

/*----------------------------------------------------------------------
Simplified Query - KC Location Injectable Antipsychotics Only
-----------------------------------------------------------------------*/
SELECT 
    -- Patient Information
    pt.PatientSID
    ,pt.PatientName
    ,RIGHT(pt.PatientSSN, 4) AS Last4SSN
    ,DATEDIFF(YEAR, pt.BirthDateTime, bcma.ActionDateTime) AS PatientAge
    
    -- Administration Details  
    ,bcma.ActionDateTime AS AdministrationDateTime
    ,CONVERT(DATE, bcma.ActionDateTime) AS AdministrationDate
    ,bcma.InjectionSite
    ,bcma.OrderDosage
    
    -- Staff Information
    ,staff.StaffName AS AdministeringStaff
    ,staff.ProviderClass AS StaffSpecialty
    
    -- Location Information (using PatientLocation directly since Dim.Location has NULLs)
    ,bcma.PatientLocation AS LocationName
    ,COALESCE(loc.LocationName, bcma.PatientLocation) AS FacilityLocationName
    ,loc.LocationType
    
    -- Medication Information
    ,ld.LocalDrugNameWithDose
    ,ld.VAClassification
    ,antipsych.DrugCategory
    ,dd.DosesOrdered
    ,dd.DosesGiven
    ,dd.UnitOfAdministration
    
    -- Additional Details
    ,bcma.ActionStatus
    ,bcma.OrderSchedule
    ,bcma.ScheduledAdministrationDateTime
    ,bcma.BCMAMedicationLogComment

FROM VHA.Cdwwork_BCMA.BCMAMedicationLog bcma WITH (NOLOCK)

-- Join to get medication details
INNER JOIN VHA.Cdwwork_BCMA.BCMADispensedDrug dd WITH (NOLOCK)
    ON bcma.BCMAMedicationLogSID = dd.BCMAMedicationLogSID
    AND bcma.Sta3n = dd.Sta3n

-- Join to our injectable antipsychotics list
INNER JOIN #Injectable_Antipsychotics antipsych
    ON dd.LocalDrugSID = antipsych.LocalDrugSID

-- Join to get full drug information
INNER JOIN VHA.Cdwwork_Dim.LocalDrug ld WITH (NOLOCK)
    ON dd.LocalDrugSID = ld.LocalDrugSID
    AND ld.Sta3n = bcma.Sta3n

-- Join to get patient information
INNER JOIN VHA.Cdwwork_SPatient.SPatient pt WITH (NOLOCK)
    ON bcma.PatientSID = pt.PatientSID
    AND pt.Sta3n = bcma.Sta3n

-- Join to get administering staff information
INNER JOIN VHA.Cdwwork_SStaff.SStaff staff WITH (NOLOCK)
    ON bcma.ActionByStaffSID = staff.StaffSID
    AND staff.Sta3n = bcma.Sta3n

-- Join to get location information (optional since many are NULL)
LEFT JOIN VHA.Cdwwork_Dim.Location loc WITH (NOLOCK)
    ON bcma.PatientLocation = loc.LocationName
    AND loc.Sta3n = bcma.Sta3n

WHERE 
    bcma.Sta3n = 589 -- Station 589 only
    AND bcma.ActionDateTime >= CAST('2024-10-01' AS DATETIME2(0))
    AND bcma.ActionDateTime <= CAST('2025-10-01' AS DATETIME2(0))
    AND bcma.ActionStatus NOT LIKE 'HELD%'
    AND bcma.ActionStatus NOT LIKE 'REFUSED%'
    AND bcma.ActionStatus NOT LIKE 'NOT GIVEN%'
    AND dd.DosesGiven > 0 -- Ensure medication was actually given
    AND bcma.InjectionSite IS NOT NULL -- Focus on injections
    AND bcma.PatientLocation LIKE '%KC%' -- KC locations only (more flexible pattern)
    AND bcma.PatientLocation NOT LIKE 'CO-%' -- Exclude Colorado locations
    AND bcma.PatientLocation NOT LIKE 'WI-%' -- Exclude Wisconsin locations 
    AND bcma.PatientLocation NOT LIKE '%TO%' -- Exclude TO locations

ORDER BY 
    bcma.ActionDateTime DESC
    ,pt.PatientName;

-- Cleanup
DROP TABLE #Injectable_Antipsychotics;
*/