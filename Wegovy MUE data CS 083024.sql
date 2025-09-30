Drop table if EXISTS #Final_Cohort_Table
Select
    A.*
    ,B.VisitDateTime as MOVEEncounterDate
    ,B.StopCodeName
    ,B.StopCode
    ,B.VisitSID
   Into #Final_Cohort_Table
 From #Wegovy_WL_kcva_pts as A
    left join  #MOVEVisitEncounter as B on A.PatientSID=B.PatientSID
    order By PatientSID

	drop table if EXISTS #MOVEVisitEncounter
select*
   into #MOVEVisitEncounter
From
    (Select
a.VisitSID
,a.VisitDateTime
,a.PatientSID
,a.PrimaryStopCodeSID
,a.SecondaryStopCodeSID
,B.stopcodesid
,B.StopCodeName
,b.StopCode
,ROW_NUMBER()over (partition by A.PatientSID order by A.VisitDateTime desc) as RN
from CDWWork.Outpat.Visit as a
    inner join cdwwork.dim.StopCode as b on a.SecondaryStopCodeSID=b.StopCodeSID and B.Sta3n in (589)
    and StopCode in (372,373)
where A.Sta3n in (589)
and A.VisitDateTime >= cast ('2022-01-01' as datetime2(0))
and A.VisitDateTime < = cast('2024-07-01'as datetime2(0))) as A
 
Where A.stopcode in (372,373)
and A.RN=1 ---> Most Recent MOVE encounter



select a.LocationName
,locationsid
,b.StopCode
,b2.StopCode as secondarystopcode
,b.StopCodeNAME
,b2.StopCodeNAME as secondarystopcodename
into #MOVE_Clinics
from cdwwork.dim.location a
left join cdwwork.dim.StopCode b on a.PrimaryStopCodeSID=b.StopCodesid
left join cdwwork.dim.StopCode b2 on a.SecondaryStopCodeSID=b2.StopCodesid
where (b.stopcode in (372,373) or b2.StopCode in (372,373))
and a.sta3n=589
 
drop table if EXISTS #MOVEVisitEncounter
select*
   into #MOVEVisitEncounter
From
    (Select
    a.VisitSID
    ,a.VisitDateTime
    ,a.PatientSID
    ,a.PrimaryStopCodeSID
    ,a.SecondaryStopCodeSID
    ,B.stopcodesid
    ,B.StopCodeName
    ,b.StopCode
    ,ROW_NUMBER()over (partition by A.PatientSID order by A.VisitDateTime desc) as RN
    from CDWWork.Outpat.Visit as a
        inner join #MOVE_Clinics b on a.LocationSID=b.LocationSID
       -- and StopCode in (372,373)
    where A.Sta3n in (589)
    and A.VisitDateTime >= cast ('2022-01-01' as datetime2(0))
    and A.VisitDateTime < = cast('2024-07-01'as datetime2(0))
    and WorkloadLogicFlag='Y'
    ) as A
 
Where A.RN=1 ---> Most Recent MOVE encounter
 