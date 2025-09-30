/*----------------------------------------------------------------------
    Unit Dose Antibiotic Report - Cloud Database Conversion
    Converted from on-premise to VHA Cloud CDW Environment
    
    Purpose: Extract unit dose antibiotic data with admit/discharge dates
    Date Range: 12/31/24 to 4/1/25
    Station: 589
-----------------------------------------------------------------------*/

-- Cloud optimization for performance
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

/*----------------------------------------------------------------------
    Main Query - Unit Dose Antibiotic Report with Inpatient Data
    Note: Converted from temp table approach to inline subqueries for cloud compatibility
-----------------------------------------------------------------------*/

SELECT DISTINCT
    pt.PatientName
    ,RIGHT(pt.PatientSSN,4) AS Last4
    ,inpt.AdmitDateTime
    ,inpt.DischargeDateTime
    ,drug_data.LocalDrugNameWithDose
    ,drug_data.OrderDateTime
    ,prov.StaffName AS Prescriber
    ,prov.ProviderClass AS TreatingSpecialty
    ,cprsloc.LocationName AS CPRSLocation
    ,cprsloc.LocationType
    ,drug_data.UnitDoseStatus
    ,drug_data.MedicationRoute
    ,drug_data.Schedule
    ,drug_data.DosageOrdered
    ,drug_data.SpecialInstructions
    ,drug_data.Indication
    ,drug_data.StartDateTime
    ,drug_data.StopDateTime
    ,drug_data.UDProviderComment

FROM (
    -- Drug data subquery (replaces #DRUG temp table)
    SELECT
        ud.Sta3n
        ,ud.PatientSID
        ,ud.ProviderSID
        ,ud.VerifyingPharmacistStaffSID
        ,ud.WardLocationSID
        ,ud.LocationSID
        ,ud.MedicationRouteSID
        ,ld.LocalDrugNameWithDose
        ,ud.OrderDateTime
        ,ud.UnitDoseStatus
        ,mr.MedicationRoute
        ,ud.Schedule
        ,ud.DosageOrdered
        ,ud.SpecialInstructions
        ,ud.StartDateTime
        ,ud.StopDateTime
        ,udprc.UDProviderComment
        ,cprs.PatientLocationSID
        ,CASE 
            WHEN oa.OrderText LIKE '%Indication%' 
            THEN RIGHT(oa.OrderText,(LEN(oa.OrderText) - (CHARINDEX('Indication:',oa.OrderText)+11))) 
            ELSE NULL 
         END AS Indication
    FROM VHA.Cdwwork_RxUD.UnitDose AS ud WITH (NOLOCK)
    LEFT JOIN VHA.Cdwwork_RxUD.UDDispenseDrug AS uddd WITH (NOLOCK) 
        ON ud.UnitDoseSID = uddd.UnitDoseSID
    LEFT JOIN VHA.Cdwwork_Dim.LocalDrug AS ld WITH (NOLOCK) 
        ON uddd.LocalDrugSID = ld.LocalDrugSID
    LEFT JOIN VHA.Cdwwork_RxUD.UDProviderComment AS udprc WITH (NOLOCK) 
        ON ud.UnitDoseSID = udprc.UnitDoseSID
    LEFT JOIN VHA.Cdwwork_Dim.MedicationRoute AS mr WITH (NOLOCK) 
        ON ud.MedicationRouteSID = mr.MedicationRouteSID
    LEFT JOIN VHA.Cdwwork_CPRSOrder.CPRSOrder AS cprs WITH (NOLOCK) 
        ON ud.CPRSOrderSID = cprs.CPRSOrderSID
    LEFT JOIN VHA.Cdwwork_CPRSOrder.OrderAction AS oa WITH (NOLOCK) 
        ON ud.CPRSOrderSID = oa.CPRSOrderSID
    WHERE 
        ud.Sta3n = 589
        AND uddd.Sta3n = 589
        AND ld.Sta3n = 589
        AND ud.StartDateTime > CAST('12/31/24' AS DateTime) 
        AND ud.StartDateTime < CAST('4/1/25' AS DateTime) 
        AND ld.VAClassification LIKE 'am%'
        AND ld.VAClassification NOT LIKE 'am500'
        AND (
            ld.LocalDrugNameWithDose NOT LIKE '%ABACAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ABACAV/DOLUTEGR/LAMIVUD 600/50/300MG TAB%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ATAZANAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%BIKTARVY%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%CABOTEGRAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%CABENUVA%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%CIDOFOVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%COBICISTAT%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%COMPLERA TAB%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%DARUNAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%DIDANOSINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%DOLUTEGRAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%DORAVIRINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%EFAVIRENZ%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ELBASVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%EMTRICITABINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ENFUVIRTIDE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ENTECAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ETRAVIRINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%FOSAMPRENAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%FOSTEMSAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%GENVOYA%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%LAMIVUDINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%LEDIPASVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%LOPINAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%MARAVIROC%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%MAVYRET%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%NELFINAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%NEVIRAPINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ODEFSEY%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%RALTEGRAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%RIBAVIRIN%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%RILPIVIRINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%RITONAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%SAQUINAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%SOFOSBUVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%STAVUDINE (d4T)%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%STRIBILD%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%SYMTUZA%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%TENOFOVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%TIPRANAVIR%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%VIDARABINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%VIEKIRA%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%VOSEVI%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%ZIDOVUDINE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%BACITRACIN%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%PENTAMIDINE ISETHIONATE%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%POLYMYXIN B SO4%'
            AND ld.LocalDrugNameWithDose NOT LIKE '%RIFABUTIN%'
        )
) AS drug_data

INNER JOIN VHA.Cdwwork_SPatient.SPatient AS pt WITH (NOLOCK) 
    ON drug_data.PatientSID = pt.PatientSID

INNER JOIN VHA.Cdwwork_SStaff.SStaff AS prov WITH (NOLOCK) 
    ON drug_data.ProviderSID = prov.StaffSID

LEFT JOIN VHA.Cdwwork_Dim.WardLocation AS wloc WITH (NOLOCK) 
    ON drug_data.WardLocationSID = wloc.WardLocationSID 

LEFT JOIN VHA.Cdwwork_Dim.Location AS oploc WITH (NOLOCK) 
    ON drug_data.LocationSID = oploc.LocationSID 

LEFT JOIN VHA.Cdwwork_Dim.Location AS cprsloc WITH (NOLOCK) 
    ON drug_data.PatientLocationSID = cprsloc.LocationSID

-- Inpatient data subquery (replaces #Inpatient temp table)
LEFT JOIN (
    SELECT
        inpt.AdmitDateTime
        ,inpt.DischargeDateTime
        ,inpt.PatientSID
        ,inpt.Sta3n
    FROM VHA.Cdwwork_Inpat.Inpatient AS inpt WITH (NOLOCK)
    WHERE
        inpt.Sta3n = 589
        AND (inpt.DischargeDateTime > CAST(DATEADD(d,DATEDIFF(d,0,GETDATE())-377,0) AS DateTime) 
             OR inpt.DischargeDateTime IS NULL)
        AND (
            (inpt.AdmitDateTime > CAST('12/31/24' AS DateTime) 
             AND inpt.AdmitDateTime < CAST('4/1/25' AS DateTime))
            OR (inpt.DischargeDateTime > CAST('12/31/24' AS DateTime) 
                AND inpt.DischargeDateTime < CAST('4/1/25' AS DateTime))
        )
) AS inpt ON drug_data.PatientSID = inpt.PatientSID 
    AND drug_data.OrderDateTime > inpt.AdmitDateTime 
    AND drug_data.OrderDateTime < inpt.DischargeDateTime

WHERE 
    drug_data.Sta3n = 589
    AND pt.Sta3n = 589
    AND prov.Sta3n = 589
    AND cprsloc.LocationName LIKE '%KC%'
    AND cprsloc.LocationType LIKE 'WARD'

ORDER BY 
    pt.PatientName
    ,drug_data.OrderDateTime;

/*----------------------------------------------------------------------
    End of Query
-----------------------------------------------------------------------*/