--Get your inpatient orders:

-- Find some quareter tab inpatient orders
DROP TABLE IF EXISTS #Inpt_Orders

SELECT distinct A.PatientName
       ,A.StaPc
       ,Right(A.PatientSSN,4) as Last4
       ,a.PharmacyOrderableItem
       ,a.instructions
       ,a.DisplayText
       ,a.Package
       ,a.entereddatetime
       ,A.LocationName
       ,T.RPCMMTeam                                                             As PCP_TeamName
       ,OrderProvider_StaffName
       ,OrderStatus
       ,Count = 1

Into #Inpt_Orders

  FROM D03_VISN15PBM.App.V15PBM_InpatientOrders as A
  Join CDWWork.CPRSOrder.CPRSOrder As O on A.CPRSOrderSID = O.CPRSOrderSID and O.Sta3n = 589
  Join CDWWork.Dim.OrderStatus as S on O.OrderStatusSID = S.OrderStatusSID
  Left Join PBM_FieldCollab.[DoEX].[vMostRecent_ActivePatients]    As T on A.PatientSID = T.PatientSID


 wHERE A.sTA3N = 589
 --Uncomment next line and add your station identifier to see your orders only
 --and A.StaPc = '589A4'
 and A.entereddatetime > cast(getdate()-365 as datetime2(0))
 --and a.pharmacyorderableitem like '%trazodone%'
 --and (A.MajorDrugClassCode like 'AN%'
 --Or A.PharmacyOrderableItem like 'lenalidom%'
 --Or A.PharmacyOrderableItem like 'pomalidom%)')


Select * From #Inpt_Orders

Where Instructions Like '%12.5%' and pharmacyorderableitem like '%ceftriaxone%'
  --Or (Instructions Like '%6.25%' and pharmacyorderableitem like '%metoprolol%')
  --Or (Instructions Like '%50MG%' and pharmacyorderableitem like '%carbamazepine%')
  --Or (Instructions Like '%25%' and pharmacyorderableitem like '%lamivudine%')
  --Or (Instructions Like '%5%' and pharmacyorderableitem like '%lurasidone%'))

  Order By PatientName