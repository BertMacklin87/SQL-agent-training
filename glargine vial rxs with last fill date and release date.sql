USE LSV

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DECLARE @site smallint
SELECT @site = 589

IF OBJECT_ID ('tempdb..#DRUG') IS NOT NULL DROP TABLE #DRUG
SELECT        
b.LocalDrugNameWithDose
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
FROM RxOut.RxOutpat AS a
INNER JOIN dim.LocalDrug as b on a.LocalDrugSID = b.LocalDrugSID
WHERE 
a.Sta3n = @site
AND b.Sta3n = @site
AND (a.RxStatus = 'ACTIVE'
     OR a.RxStatus LIKE '%HOLD%'
       OR a.RxStatus = 'SUSPENDED')
AND a.IssueDate > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as Date)
AND (
	b.localDrugNameWithDose like '%CEFTRIAXONE%'
	--OR b.localDrugNameWithDose like '%INSULIN,GLARGINE-YFGN 100UNIT/ML INJ%'
	)
GO

DECLARE @site smallint
SELECT @site = 589

IF OBJECT_ID ('tempdb..#FILL') IS NOT NULL DROP TABLE #FILL
SELECT        
DRUG.LocalDrugNameWithDose
,f.PharmacySiteName
,DRUG.RxNumber
,DRUG.IssueDate
,f.FillDateTime
,f.ReleaseDateTime
,f.Qty
,f.DaysSupply
,DRUG.MaxRefills
,DRUG.RxStatus
,g.Sig
,DRUG.PatientSID
,DRUG.ProviderSID
,DRUG.FinishedByStaffSID
INTO #FILL
FROM #DRUG AS DRUG
INNER JOIN RxOut.RxOutpatFill as f on DRUG.RxOutpatSID = f.RxOutpatSID 
INNER JOIN Rxout.RxOutpatSig as g on DRUG.RxOutpatSID = g.RxOutpatSID 
WHERE
f.sta3n = @site
AND g.Sta3n = @site
AND f.IssueDate > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as Date)
AND (f.ReleaseDateTime > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as DateTime2(0)) or f.ReleaseDateTime is null)
AND g.IssueDate > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-367,0) as Date)
GO

DECLARE @site smallint
SELECT @site = 589

SELECT        
c.PatientName
,RIGHT(c.PatientSSN,4) AS Last4
,FILL.LocalDrugNameWithDose
,d.StaffName AS Prescriber
,FILL.PharmacySiteName
,FILL.RxNumber
,FILL.IssueDate
,FILL.FillDateTime
,FILL.ReleaseDateTime
,FILL.Qty
,FILL.DaysSupply
,FILL.MaxRefills
,FILL.RxStatus
,FILL.Sig
FROM #FILL AS FILL
INNER JOIN SPatient.SPatient as c on FILL.PatientSID = c.PatientSID
INNER JOIN SStaff.SStaff as d on FILL.ProviderSID = d.StaffSID
WHERE
c.Sta3n = @site
AND d.Sta3n = @site
AND FILL.PharmacySiteName like '%KANSAS CITY%'
and FILL.ReleaseDateTime is null
and FILL.FillDateTime is not null
ORDER BY 
FILL.PharmacySiteName
,FILL.FillDateTime
,FILL.IssueDate
