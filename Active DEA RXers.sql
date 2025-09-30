--SELECT 
--    TABLE_SCHEMA,
--    TABLE_NAME,
--    COLUMN_NAME
--FROM 
--    INFORMATION_SCHEMA.COLUMNS
--WHERE 
--    COLUMN_NAME IN ('dea')---insert column here
--ORDER BY 
--    TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME;


--SELECT *
--FROM [cdwwork_sstaff].[PrescribingProviderDEANumber]
--WHERE sta3n = '589'
--  --AND lastname LIKE 'Waller';
 
--SELECT
--    dea.STA3N,
--    dea.DEANUMBER,
--    inst.INSTITUTIONNAME,
--    inst.OFFICIALVANAME,
--    inst.STAPCNAME,
--    spv.staffname,
--    spv.emailaddress
--FROM cdwwork_sstaff.DEANumber AS dea
--INNER JOIN cdwwork_dim.institution AS inst
--    ON dea.sta3n = inst.sta3n
--INNER JOIN spv_sstaff.prescribingprovider AS spv
--    ON dea.sta3n = spv.sta3n
--WHERE dea.sta3n = '589'
--  AND inst.institutionname NOT LIKE 'ZZ%'
--  AND inst.stapaname = 'kansas city vamc'
--  AND spv.dea IS NOT NULL
--  AND spv.terminationdatetime IS NULL;

 
 

declare @StartDate datetime, @EndDate datetime, @Site smallint

select @StartDate  = '9/29/2024'
	,@EndDate  = '9/29/2025 23:59:59'
	,@Site = 589

select a.sta3n
, a.staffSID
, a.StaffName
, a.DisUserFlag
, a.PositionTitle
, ProviderClass 
, a.ServiceSection
, a.InactivationDateTIme
, a.NPI
, a.DEA
, a.NetworkUsername
, a.Schedule2NarcoticFlag
, a.Schedule3NarcoticFlag
, a.Schedule4SubstanceFlag
, a.Schedule5SubstanceFlag
--,b.institutionname
from cdwwork_sstaff.sstaff as a
--right join cdwwork_dim.institution as b on a.sta3n = b.sta3n
where a.sta3n in (@Site)
and a.InactivationDateTime is null
and [MedOrdersAuthorizedFlag] = 'Y'
and (DisuserFlag = 'N' or DisuserFlag is null)
and PositionTitle not like '%NON-VA%'
and (Schedule2NarcoticFlag = 'Y' or Schedule3NarcoticFlag = 'Y' or Schedule4SubstanceFlag = 'Y' or Schedule5SubstanceFlag = 'Y')
and networkusername like 'VHAKAN%'
order by StaffName --471