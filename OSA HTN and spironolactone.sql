
-- 1. ICD10 Codes for HTN and OSA
DROP TABLE IF EXISTS #icd_htn_osa
SELECT Sta3n, ICD10Code, ICD10SID
INTO #icd_htn_osa 
FROM CDWWork.Dim.ICD10
WHERE Sta3n=589
  AND ICD10Code IN ('I10', 'I15', 'G47.33')  -- HTN and OSA codes

-- 2. Patients with HTN
DROP TABLE IF EXISTS #pats_htn
SELECT DISTINCT PatientSID
INTO #pats_htn
FROM (
    SELECT PatientSID FROM CDWWork.Outpat.VDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10', 'I15'))
    UNION
    SELECT PatientSID FROM CDWWork.Outpat.ProblemList 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10', 'I15'))
    UNION
    SELECT PatientSID FROM CDWWork.Inpat.InpatientDischargeDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10', 'I15'))
) x

-- 3. Patients with OSA
DROP TABLE IF EXISTS #pats_osa
SELECT DISTINCT PatientSID
INTO #pats_osa
FROM (
    SELECT PatientSID FROM CDWWork.Outpat.VDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code = 'G47.33')
    UNION
    SELECT PatientSID FROM CDWWork.Outpat.ProblemList 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code = 'G47.33')
    UNION
    SELECT PatientSID FROM CDWWork.Inpat.InpatientDischargeDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code = 'G47.33')
) y

-- 4. Patients with BOTH HTN and OSA
DROP TABLE IF EXISTS #pats_both
SELECT htn.PatientSID
INTO #pats_both
FROM #pats_htn htn
INNER JOIN #pats_osa osa ON htn.PatientSID = osa.PatientSID

-- 5. Spironolactone Rx Exclusion
DROP TABLE IF EXISTS #spironolactone_rx
SELECT DISTINCT PatientSID
INTO #spironolactone_rx
FROM CDWWork.RxOut.RxOutpatFill rx
INNER JOIN CDWWork.Dim.LocalDrug ld
    ON rx.LocalDrugSID = ld.LocalDrugSID
WHERE rx.Sta3n = 589
  AND ld.LocalDrugNameWithDose LIKE '%spironolactone%'

-- 6. Spironolactone Allergy Comments (10-year lookback)
DROP TABLE IF EXISTS #allergycomment
SELECT 
    a.AllergySID,
    a.AllergyComment,
    a.AllergyCommentType,
    b.StaffName AS 'Entered By'
INTO #allergycomment
FROM Allergy.AllergyComment a
JOIN SStaff.SStaff b ON a.EnteringStaffSID = b.StaffSID
WHERE a.Sta3n = 589
  AND b.Sta3n = 589
  AND a.OriginationDateTime > DATEADD(mm, -120, CAST(GETDATE() AS DATETIME2(0)))
  AND a.AllergyComment LIKE '%spironolactone%'

-- 7. Spironolactone Allergy Exclusion
DROP TABLE IF EXISTS #spironolactone_allergy
SELECT DISTINCT a.PatientSID
INTO #spironolactone_allergy
FROM Allergy.Allergy a
LEFT JOIN #allergycomment ac ON a.AllergySID = ac.AllergySID
WHERE a.Sta3n = 589
  AND a.OriginationDateTime > DATEADD(mm, -120, CAST(GETDATE() AS DATETIME2(0)))
  AND a.EnteredInErrorDateTime IS NULL
  AND a.AllergicReactant LIKE '%spironolactone%'

-- 8. Exclusion Union (Rx or Allergy)
DROP TABLE IF EXISTS #exclusions
SELECT PatientSID INTO #exclusions FROM #spironolactone_rx
UNION
SELECT PatientSID FROM #spironolactone_allergy

-- 9. Final cohort: HTN + OSA, NOT on spironolactone, NO spironolactone allergy
DROP TABLE IF EXISTS #final_cohort
SELECT pb.PatientSID
INTO #final_cohort
FROM #pats_both pb
LEFT JOIN #exclusions ex ON pb.PatientSID = ex.PatientSID
WHERE ex.PatientSID IS NULL

-- 10. Optional: Show patient details
SELECT 
    ap.PatientName,
    RIGHT(ap.PatientSSN, 4) AS 'Last 4 SSN',
    fc.PatientSID
FROM #final_cohort fc
JOIN lsv.PBM_FieldCollab.activepatients ap ON fc.PatientSID = ap.PatientSID
WHERE ap.Sta3n = 589
ORDER BY ap.PatientName

-- 11. Optional: Count by provider (if needed)
-- (You can add provider logic here as in your PTSD/benzo template)


----------TESTING---------------
/*

-- HTN (I10, I15) and OSA (G47.33) ICD codes
DROP TABLE IF EXISTS #icd_htn_osa
SELECT Sta3n, ICD10Code, ICD10SID
INTO #icd_htn_osa 
FROM CDWWork.Dim.ICD10
WHERE Sta3n=589
AND ICD10Code IN ('I10','I15','G47.33')

-- Patients with BOTH diagnoses (FIXED ALIAS ISSUE)
DROP TABLE IF EXISTS #pats_both
SELECT DISTINCT htn.PatientSID  -- Changed from 'a' to 'htn'
INTO #pats_both
FROM (
    -- HTN patients
    SELECT PatientSID FROM CDWWork.Outpat.VDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10','I15'))
    UNION
    SELECT PatientSID FROM CDWWork.Outpat.ProblemList 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10','I15'))
    UNION
    SELECT PatientSID FROM CDWWork.Inpat.InpatientDischargeDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10','I15'))
) htn
INNER JOIN (
    -- OSA patients  
    SELECT PatientSID FROM CDWWork.Outpat.VDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code='G47.33')
    UNION
    SELECT PatientSID FROM CDWWork.Outpat.ProblemList 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code='G47.33')
    UNION
    SELECT PatientSID FROM CDWWork.Inpat.InpatientDischargeDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code='G47.33')
) osa ON htn.PatientSID = osa.PatientSID

-- Spironolactone exclusion
DROP TABLE IF EXISTS #exclusions
SELECT DISTINCT a.PatientSID
INTO #exclusions
FROM CDWWork.RxOut.RxOutpatFill a
WHERE a.LocalDrugSID IN (
    SELECT LocalDrugSID 
    FROM CDWWork.Dim.LocalDrug 
    WHERE LocalDrugNameWithDose LIKE '%Spironolactone%'
)
UNION 
SELECT PatientSID 
FROM CDWWork.Allergies.comment 
WHERE Allergen = 'Spironolactone'

-- Final patient cohort
DROP TABLE IF EXISTS #final_cohort
SELECT p.PatientSID
INTO #final_cohort 
FROM #pats_both p
LEFT JOIN #exclusions e ON p.PatientSID = e.PatientSID
WHERE e.PatientSID IS NULL

-- Provider analysis (using your existing provider list)
SELECT 
    s.StaffName,
    COUNT(DISTINCT fc.PatientSID) AS TotalPatients
FROM #final_cohort fc
INNER JOIN CDWWork.SStaff.SStaff s 
    ON EXISTS (
        SELECT 1 
        FROM CDWWork.RxOut.RxOutpatFill rx 
        WHERE rx.PatientSID = fc.PatientSID 
        AND rx.ProviderSID = s.StaffSID
    )
WHERE s.Sta3n=589
GROUP BY s.StaffName
a




-- HTN (I10, I15) and OSA (G47.33) ICD codes
DROP TABLE IF EXISTS #icd_htn_osa
SELECT Sta3n, ICD10Code, ICD10SID
INTO #icd_htn_osa 
FROM CDWWork.Dim.ICD10
WHERE Sta3n=589
AND ICD10Code IN ('I10','I15','G47.33')  -- HTN + OSA codes

-- Patients with BOTH diagnoses
DROP TABLE IF EXISTS #pats_both
SELECT DISTINCT a.PatientSID
INTO #pats_both
FROM (
    -- HTN patients
    SELECT PatientSID FROM CDWWork.Outpat.VDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10','I15'))
    UNION
    SELECT PatientSID FROM CDWWork.Outpat.ProblemList 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10','I15'))
    UNION
    SELECT PatientSID FROM CDWWork.Inpat.InpatientDischargeDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code IN ('I10','I15'))
) htn
INNER JOIN (
    -- OSA patients  
    SELECT PatientSID FROM CDWWork.Outpat.VDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code='G47.33')
    UNION
    SELECT PatientSID FROM CDWWork.Outpat.ProblemList 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code='G47.33')
    UNION
    SELECT PatientSID FROM CDWWork.Inpat.InpatientDischargeDiagnosis 
    WHERE ICD10SID IN (SELECT ICD10SID FROM #icd_htn_osa WHERE ICD10Code='G47.33')
) osa ON htn.PatientSID = osa.PatientSID

-- Spironolactone exclusion
DROP TABLE IF EXISTS #exclusions
SELECT DISTINCT a.PatientSID
INTO #exclusions
FROM CDWWork.RxOut.RxOutpatFill a
WHERE a.LocalDrugSID IN (
    SELECT LocalDrugSID 
    FROM CDWWork.Dim.LocalDrug 
    WHERE LocalDrugNameWithDose LIKE '%Spironolactone%'
)
UNION 
SELECT PatientSID 
FROM CDWWork.Allergies.Allergy 
WHERE Allergen = 'Spironolactone'

-- Final patient cohort
DROP TABLE IF EXISTS #final_cohort
SELECT p.PatientSID
INTO #final_cohort 
FROM #pats_both p
LEFT JOIN #exclusions e ON p.PatientSID = e.PatientSID
WHERE e.PatientSID IS NULL

-- Provider analysis (using your existing provider list)
SELECT 
    s.StaffName,
    COUNT(DISTINCT fc.PatientSID) AS TotalPatients
FROM #final_cohort fc
INNER JOIN CDWWork.SStaff.SStaff s 
    ON EXISTS (
        SELECT 1 
        FROM CDWWork.RxOut.RxOutpatFill rx 
        WHERE rx.PatientSID = fc.PatientSID 
        AND rx.ProviderSID = s.StaffSID
    )
WHERE s.Sta3n=589
GROUP BY s.StaffName

*/