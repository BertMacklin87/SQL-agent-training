/*
create report
send alerts to providers
automatically?
who checks report

*/

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED


IF OBJECT_ID ('tempdb..#DRUG') IS NOT NULL DROP TABLE #DRUG
SELECT        
b.LocalDrugNameWithDose
--,b.VAClassification
,a.RxNumber
,a.IssueDate
,a.MaxRefills
,a.RxStatus
,a.PatientSID
,a.ProviderSID
,a.FinishedByStaffSID
,a.RxOutpatSID
,a.LocationSID
INTO #DRUG
FROM cdwwork_RxOut.RxOutpat AS a
INNER JOIN cdwwork_dim.LocalDrug as b on a.LocalDrugSID = b.LocalDrugSID
WHERE 
a.Sta3n = 589
AND b.Sta3n = 589
AND a.RxStatus LIKE '%HOLD%'
AND a.IssueDate > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as Date)
--AND b.localDrugNameWithDose like '%%'
and b.DEAHandling not like '%2%'
--and b.VAClassification not like 'xa%'
--and b.VAClassification not like 'dx%'



IF OBJECT_ID ('tempdb..#FILL') IS NOT NULL DROP TABLE #FILL
SELECT        
DRUG.LocalDrugNameWithDose
--,DRUG.VAClassification
,f.PharmacySiteName
,DRUG.RxNumber
,DRUG.IssueDate
--,f.FillDateTime
,f.Qty
,f.DaysSupply
--,f.FillType
,DRUG.MaxRefills
,DRUG.RxStatus
,g.Sig
,DRUG.PatientSID
,DRUG.ProviderSID
,DRUG.FinishedByStaffSID
,g.HoldComments            -- Added
,g.DeletionComments         -- Added
INTO #FILL
FROM #DRUG AS DRUG
INNER JOIN cdwwork_RxOut.RxOutpatFill as f on DRUG.RxOutpatSID = f.RxOutpatSID 
INNER JOIN cdwwork_Rxout.RxOutpatSig as g on DRUG.RxOutpatSID = g.RxOutpatSID 
WHERE
f.sta3n = 589
AND g.Sta3n = 589
AND f.filltype = 'o' --or f.filltype = 'r'
AND f.IssueDate > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as Date)
AND (f.ReleaseDateTime > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as DateTime2(0)) or f.ReleaseDateTime is null)
AND g.IssueDate > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as Date)


SELECT        
c.PatientName
,RIGHT(c.PatientSSN,4) AS Last4
,FILL.LocalDrugNameWithDose
--,FILL.VAClassification
,d.StaffName AS Prescriber
,FILL.PharmacySiteName
,FILL.RxNumber
,FILL.IssueDate
--,FILL.FillDateTime
,FILL.Qty
,FILL.DaysSupply
--,FILL.FillType
,FILL.MaxRefills
,FILL.RxStatus
,e.StaffName as Pharmacist
,FILL.Sig
,FILL.HoldComments        -- Added
,FILL.DeletionComments      -- Added
FROM #FILL AS FILL
INNER JOIN cdwwork_SPatient.SPatient as c on FILL.PatientSID = c.PatientSID
INNER JOIN cdwwork_SStaff.SStaff as d on FILL.ProviderSID = d.StaffSID
INNER JOIN cdwwork_SStaff.SStaff as e on FILL.FinishedByStaffSID = e.StaffSID
WHERE
c.Sta3n = 589
AND d.Sta3n = 589
AND e.sta3n = 589
AND FILL.PharmacySiteName like '%kansas city%'
ORDER BY 
FILL.PharmacySiteName
--,FILL.LocalDrugNameWithDose
,FILL.IssueDate

