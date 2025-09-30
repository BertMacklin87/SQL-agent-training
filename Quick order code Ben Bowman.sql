--Set your search term and number of days to look back:
Declare @FreeText varchar(20)= 'P%EK GOUT%'
Declare @DaysToLookBack int = 400
-------------------------------------------------------


Drop Table If Exists #WOQOs

Select
Sta3n
,OrderDialogIEN
,OrderDialogSID
,OrderDialogName
,DisplayText

Into #WOQOs

From CDWWork.dim.OrderDialog

WHere Sta3n = 589

Drop Table If Exists #AllQO_Use

Select
OrderDialogSID
,OrderDialogName
,DisplayText
,EnteredDateTime
,Count = 1


Into #AllQO_Use

From CPRSOrder.CPRSOrder as A
Join #WOQOs as B on A. ItemOrderedParentFileIEN = B.OrderDialogIEN

Where A.Sta3n = 589 
and A.EnteredDateTime > Cast(getdate()-@DaysToLookBack As datetime2(0))


Drop Table If Exists #LastDateUsed

Select
OrderDialogSID
,OrderDialogName
,DisplayText
,Max(EnteredDateTime) AS LastTimeUsed


Into #LastDateUsed

From #AllQO_Use


Group By OrderDialogSID,OrderDialogName,DisplayText


Drop Table If Exists #CountTable

Select OrderDialogName
       ,Sum(Count) as TimesUsed
 
Into #CountTable
   from #AllQO_Use
   
Group By OrderDialogName





Select  A.* 
       ,B.TimesUsed



From #LastDateUsed as A
  Join #CountTable as B on A.OrderDialogName = B.OrderDialogName


Where 
LastTimeUsed > Cast(getdate()-365 As datetime2(0))
And 

--OrderDialogName Like '%EK%'

OrderDialogSID

In(
Select OrderDialogSID from Dim.OrderDialog Where OrderDialogName Like ('%' + @FreeText + '%')
)

Order By OrderDialogName

--IN(
--'PSJI EK BUMETANIDE 10MG DRIP'
--,'PSJI EK CISATRACURIUM 10MG DRIP'
--,'PSJI EK COVID FENTANYL DRIP'
--,'PSJI EK DEXMEDETOMIDINE 200MCG/50ML PREMIX CIWA INPT (QO)'
--,'PSJI EK DEXMEDETOMIDINE 400MCG/100ML PREMIX CIWA (QO)'
--,'PSJI EK DEXMEDETOMIDINE DRIP 50MG'
--,'PSJI EK DILTIAZEM DRIP 120ML IV (QO)'
--,'PSJI EK DILTIAZEM DRIP 125ML IV'
--,'PSJI EK DOBUTAMINE 500MG'
--,'PSJI EK DOBUTAMINE 500MG (QO)'
--,'PSJI EK DOBUTAMINE DRIP 1000MG,'
--,'PSJI EK DOBUTAMINE IV 1000MG'
--,'PSJI EK DOPAMINE DRIP 800 MG IV (QO)'
--,'PSJI EK DOPAMINE DRIP 800MG 0.9% NS 250ML'
--,'PSJI EK DOPAMINE DRIP 800MG IV'
--,'PSJI EK EPINEPHRINE DRIP 4MG'
--,'PSJI EK EPINEPHRINE DRIP 4MG (QO)'
--,'PSJI EK ER COVID MIDAZOLAM 150MG/30ML (QO)'
--,'PSJI EK ER COVID PROFOFOL 1000ML/100ML'
--,'PSJI EK ER NOREPINEPHRINE DRIP (QO)'
--,'PSJI EK ER PROPOFOL DRIP (QO)'
--,'PSJI EK ESMOLOL DRIP 2500MG'
--,'PSJI EK FENTANYL 1500MG DRIP' 
--,'PSJI EK FUROSEMIDE DRIP 100MG'
--,'PSJI EK HYDROMORPHONE DRIP 30MG'
--,'PSJI EK LABETALOL'
--,'PSJI EK METOPROLOL DRIP 20MG'
--,'PSJI EK MIDAZOLAM 150MG DRIP'
--,'PSJI EK MIDAZOLAM 150MG DRIP (QO)'
--,'PSJI EK MORPHINE 1MG DRIP'
--,'PSJI EK MORPHINE DRIP 1MG'
--,'PSJI EK NALOXONE 2MG DRIP'
--,'PSJI EK NICARDIPINE 20MG DRIP'
--,'PSJI EK NICARDIPINE 20MG/200ML'
--,'PSJI EK NICARDIPINE 25MG/250ML'
--,'PSJI EK NITROGLYCERIN DRIP'
--,'PSJI EK NITROGLYCERIN DRIP (QO)'
--,'PSJI EK NITROPRUSSIDE DRIP'
--,'PSJI EK NITROPRUSSIDE DRIP (QO)'
--,'PSJI EK NITROPRUSSIDE TELESTROKE'
--,'PSJI EK NOREPINEPHRINE 5 MCG/MIN'
--,'PSJI EK NOREPINEPHRINE DRIP'
--,'PSJI EK NOREPINEPHRINE DRIP (QO)'
--,'PSJI EK PHENYLEPHRINE DRIP'
--,'PSJI EK PHENYLEPHRINE DRIP 40MG'
--,'PSJI EK PROPOFOL DRIP'
--,'PSJI EK PROPOFOL DRIP (QO)'
--,'PSJI EK ROCURONIUM DRIP'
--,'PSJI EK VASOPRESSIN 20 UNITS (QO)'
--,'PSJI EK VASOPRESSIN INFUSION (QO)'
--,'PSJI EK VECURONIUM DRIP'
--,'PSJI TO HYDROMORPHONE 30MG DRIP (QO)'
--,'PSJI TO LR 1000CC GI (QO)'
--,'PSJZ EK DEXMEDETOMIDINE 200MCG/50ML PREMIX CIWA ER (QO)'
--,'PSJZ EK DILTIAZEM GTT (QO)'
--,'PSJZ EK ER COVID MIDAZOLAM 150MG/30ML (QO)'
--,'PSJZ EK HYDROMORPHONE 0.2MG PRN SUBQ (QO)'
--,'PSJZ EK IMO NICARDAPINE 5 MG IV (QO)'
--,'PSJZ EK LABETALOL GTT (QO)'
--,'PSJZ EK MOPRHINE 1MG PRN BOLUS (PCA)'
--,'PSJZ EK NITROGLY GTT (QO)'
--,'PSJZ LE DILTIAZEM GTT (QO)'
--,'PSJZ LE DOPAMINE IV (QO)'
--,'PSJZ LE LABETALOL GTT (QO)'
--,'PSJZ LE NOREPINEPHRINE/LEVOPHED (QO)'
--,'PSJZ LE NTG GTT (QO)'
--)





--Uncomment this section to get an interesting table with all WO quick orders that have not been used in the past year. 
--It is ~79% of our total number of quick orders. 

/*

Select * From #WOQOs

Where OrderDialogName Like '%acetylc%'

Where OrderDialogName Not In

(
Select OrderDialogName

From #All_QO_use

Where LastTimeUsed > Cast(getdate()-365 As datetime2(0))
)

Order By OrderDialogName

*/