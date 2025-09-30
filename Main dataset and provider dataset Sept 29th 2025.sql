-----main dataset---

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

WITH HealthFactorData AS (
    SELECT
        hf.PatientSID,
        hf.Sta3n,
        hf.HealthFactorDateTime,
        hft.HealthFactorType,
        CONCAT(d.FiscalYear, ' Q', d.FiscalQuarter) AS FiscalYQ,
        d.FiscalYear,  -- Added for your fiscal year filter
        ROW_NUMBER() OVER (
            PARTITION BY hf.PatientSID 
            ORDER BY 
                CASE WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET ID%' THEN 0 ELSE 1 END,
                hf.HealthFactorDateTime DESC
        ) AS RN
    FROM VHA.Cdwwork_HF.HealthFactor hf WITH (NOLOCK)
    INNER JOIN VHA.Cdwwork_DIM.HealthFactorType hft WITH (NOLOCK)
        ON hf.HealthFactorTypeSID = hft.HealthFactorTypeSID
    INNER JOIN VHA.Cdwwork_Dim.Date d WITH (NOLOCK)
        ON CONVERT(INT, REPLACE(CONVERT(CHAR(8), hf.HealthFactorDateTime, 112), '-', '')) = d.DateSID
    WHERE hft.HealthFactorType LIKE 'KC-Health Equity%'
      AND hf.HealthFactorDateTime >= '2021-07-01'
      AND hf.HealthFactorDateTime < GETDATE()
      AND hf.Sta3n IN (537, 550, 556, 578, 585, 589, 600, 605, 607, 637, 644, 649, 664, 676, 691, 695, 657, 652)
)
, PatientRaces AS (
    SELECT
        pr.PatientSID,
        STRING_AGG(pr.Race, '/') AS Race
    FROM VHA.Cdwwork_PatSub.PatientRace pr WITH (NOLOCK)
    GROUP BY pr.PatientSID
)
SELECT
    hfd.PatientSID
    ,hfd.Sta3n
    ,sta.VISNFY17 AS VISN                    -- ⭐ ADDED FOR VISN FILTER
    ,sta.Sta3nName AS FacilityName           -- ⭐ ADDED FOR FACILITY FILTER  
    ,sp.PatientName
    ,sp.PatientFirstName                     -- ⭐ ADDED
    ,sp.PatientLastName                      -- ⭐ ADDED
    ,sp.PatientSSN                           -- ⭐ ADDED
    ,sp.Gender
    ,sp.Age
    ,sp.BirthDateTime
    ,sp.DeathDateTime
    ,pr.Race
    ,pe.Ethnicity
    ,pa.GISURH AS UrbanRuralHighRural
    ,hfd.HealthFactorType
    ,hfd.HealthFactorDateTime
    ,hfd.FiscalYQ
    ,hfd.FiscalYear                          -- ⭐ ADDED FOR FISCAL YEAR FILTER
FROM HealthFactorData hfd
INNER JOIN VHA.Cdwwork_SPatient.SPatient sp WITH (NOLOCK)
    ON hfd.PatientSID = sp.PatientSID 
    AND hfd.Sta3n = sp.Sta3n
INNER JOIN VHA.Cdwwork_Dim.Sta3n sta WITH (NOLOCK)  -- ⭐ ADDED FOR VISN/FACILITY
    ON hfd.Sta3n = sta.Sta3n
LEFT JOIN PatientRaces pr
    ON hfd.PatientSID = pr.PatientSID
LEFT JOIN VHA.Cdwwork_PatSub.PatientEthnicity pe WITH (NOLOCK)
    ON hfd.PatientSID = pe.PatientSID
LEFT JOIN VHA.Cdwwork_SPatient.SPatientAddress pa WITH (NOLOCK)
    ON hfd.PatientSID = pa.PatientSID
    AND pa.OrdinalNumber = 13
WHERE hfd.RN = 1
  AND sp.PatientName NOT LIKE 'ZZ%'
ORDER BY hfd.PatientSID;


---provider dataset single row per provider--- 113

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

SELECT 
    sta.VISNFY17 AS VISN                    
    ,sta.Sta3nName AS FacilityName
    ,s.StaffName AS ProviderName
    ,s.PositionTitle AS ProviderTitle
    ,s.ServiceSection AS ProviderDepartment
    ,s.ProviderClass
    ,COUNT(DISTINCT hf.PatientSID) AS UniquePatients
    ,COUNT(hf.PatientSID) AS TotalInteractions
    ,MIN(hf.HealthFactorDateTime) AS FirstInteraction
    ,MAX(hf.HealthFactorDateTime) AS LastInteraction
    ,COUNT(CASE WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET ID%' THEN 1 END) AS Identifications
    ,COUNT(CASE WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET CONTACT%' THEN 1 END) AS ContactAttempts
    ,COUNT(CASE WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET REFUSED%' THEN 1 END) AS Refusals
FROM VHA.Cdwwork_HF.HealthFactor AS hf WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_DIM.HealthFactorType AS hft WITH (NOLOCK)
    ON hf.HealthFactorTypeSID = hft.HealthFactorTypeSID
    AND hft.HealthFactorType LIKE 'KC-Health Equity%'
INNER JOIN VHA.Cdwwork_SStaff.SSTaff AS s WITH (NOLOCK)
    ON hf.EncounterStaffSID = s.StaffSID
    AND hf.Sta3n = s.Sta3n
INNER JOIN VHA.Cdwwork_Dim.Sta3n sta WITH (NOLOCK)  
    ON hf.Sta3n = sta.Sta3n
WHERE hf.HealthFactorDateTime >= '2021-07-01'
    AND hf.Sta3n IN (537, 550, 556, 578, 585, 589, 600, 605, 607, 637, 644, 649, 664, 676, 691, 695, 657, 652)
GROUP BY 
    sta.VISNFY17, sta.Sta3nName, s.StaffName, s.PositionTitle, s.ServiceSection, s.ProviderClass
ORDER BY sta.VISNFY17, sta.Sta3nName, UniquePatients DESC;










---provider dataset (20,000 rows all HF for all pats)----

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

SELECT DISTINCT
    hf.PatientSID
    ,hf.Sta3n
    ,sta.VISNFY17 AS VISN                    
    ,sta.Sta3nName AS FacilityName           
    ,hf.VisitSID
    ,hf.VisitDateTime
    ,hf.EncounterStaffSID
    ,s.StaffName AS ProviderName
    ,s.FirstName AS ProviderFirstName        -- ⭐ ADDED
    ,s.LastName AS ProviderLastName          -- ⭐ ADDED
    ,s.PositionTitle AS ProviderTitle        -- ⭐ CORRECTED - this was StaffTitle
    ,s.ServiceSection AS ProviderDepartment  -- ⭐ ADDED
    ,s.ProviderClass                         -- ⭐ ADDED
    ,hft.HealthFactorType
    ,hf.HealthFactorDateTime
    ,CONCAT(d.FiscalYear, ' Q', d.FiscalQuarter) AS FiscalYQ
    ,d.FiscalYear                            
    ,CASE 
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET ID%' THEN 'Identification'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET CONTACT%' THEN 'Contact Attempt'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY UNABLE TO REACH%' THEN 'Unable to Reach'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET REFUSED%' THEN 'Refusal'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY VET REPORTED%' THEN 'Patient Report'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY PROVIDER%' THEN 'Provider Action'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY DOES%' THEN 'Assessment'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY OFFERED%' THEN 'Offered Options'
        WHEN hft.HealthFactorType LIKE 'KC-HEALTH EQUITY DIFFICULTY%' THEN 'Barriers'
        ELSE 'Other'
    END AS HF_Category                       
FROM VHA.Cdwwork_HF.HealthFactor AS hf WITH (NOLOCK)
INNER JOIN VHA.Cdwwork_DIM.HealthFactorType AS hft WITH (NOLOCK)
    ON hf.HealthFactorTypeSID = hft.HealthFactorTypeSID
    AND hft.HealthFactorType LIKE 'KC-Health Equity%'
INNER JOIN VHA.Cdwwork_SStaff.SSTaff AS s WITH (NOLOCK)
    ON hf.EncounterStaffSID = s.StaffSID
    AND hf.Sta3n = s.Sta3n                   
INNER JOIN VHA.Cdwwork_Dim.Date AS d WITH (NOLOCK)
    ON CONVERT(INT, REPLACE(CONVERT(CHAR(8), hf.HealthFactorDateTime, 112), '-', '')) = d.DateSID
INNER JOIN VHA.Cdwwork_Dim.Sta3n sta WITH (NOLOCK)  
    ON hf.Sta3n = sta.Sta3n
WHERE hf.HealthFactorDateTime >= '2021-07-01'
    AND hf.Sta3n IN (537, 550, 556, 578, 585, 589, 600, 605, 607, 637, 644, 649, 664, 676, 691, 695, 657, 652)
ORDER BY sta.VISNFY17, sta.Sta3nName, s.StaffName, hf.PatientSID, hf.VisitDateTime DESC;