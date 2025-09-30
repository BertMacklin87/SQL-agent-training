/*=============================================================
VHA CDW Cloud Database Schema Documentation
Generated: [DATE]
=============================================================*/

/*--- 1. ALL TABLES AND VIEWS ---
SELECT 
    TABLE_CATALOG,
    TABLE_SCHEMA,
    TABLE_NAME,
    TABLE_TYPE,
    ROW_COUNT = (SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES t2 WHERE t2.TABLE_NAME = t1.TABLE_NAME)
FROM INFORMATION_SCHEMA.TABLES t1
WHERE TABLE_SCHEMA LIKE 'cdwwork%'
ORDER BY TABLE_SCHEMA, TABLE_NAME;

*/
TABLE_CATALOG	TABLE_SCHEMA	TABLE_NAME	TABLE_TYPE	ROW_COUNT
VHA	cdwwork_adr	ADREnrollHistory	VIEW	2
VHA	cdwwork_aemsmers	equipmentinventory	VIEW	2
VHA	cdwwork_aemsmers	EquipmentInventoryHistory	VIEW	2
VHA	cdwwork_aemsmers	EquipmentInventoryShop	VIEW	2
VHA	cdwwork_aemsmers	EquipmentInventoryShopFrequency	VIEW	2
VHA	cdwwork_aemsmers	FADocumentLog	VIEW	2
VHA	cdwwork_aemsmers	FADocumentLogComment	VIEW	2
VHA	cdwwork_aemsmers	FBDocumentLog	VIEW	2
VHA	cdwwork_aemsmers	FBDocumentLogComment	VIEW	2
VHA	cdwwork_aemsmers	FCDocumentLog	VIEW	2
VHA	cdwwork_aemsmers	FCDocumentLogComment	VIEW	2
VHA	cdwwork_aemsmers	FDDocumentLog	VIEW	2
VHA	cdwwork_aemsmers	FDDocumentLogComment	VIEW	2
VHA	cdwwork_aemsmers	FRDocumentLog	VIEW	2
VHA	cdwwork_aemsmers	FRDocumentLogComment	VIEW	2
VHA	cdwwork_aemsmers	InventoryRequest	VIEW	2
VHA	cdwwork_aemsmers	InventoryRequestLineItem	VIEW	2
VHA	cdwwork_aemsmers	ITAssignment	VIEW	2
VHA	cdwwork_aemsmers	TurnInRequest	VIEW	2
VHA	cdwwork_aemsmers	TurnInRequestItem	VIEW	2
VHA	cdwwork_aemsmers	WorkOrder	VIEW	2
VHA	cdwwork_aemsmers	WorkOrderAction	VIEW	2
VHA	cdwwork_aemsmers	WorkOrderAssignedTechnician	VIEW	2
VHA	cdwwork_aemsmers	WorkOrderComment	VIEW	2
VHA	cdwwork_allergy	AllergicReaction	VIEW	2
VHA	cdwwork_allergy	AllergicReactionAssessment	VIEW	2
VHA	cdwwork_allergy	AllergicReactionReport	VIEW	2
VHA	cdwwork_allergy	Allergy	VIEW	2
VHA	cdwwork_allergy	AllergyComment	VIEW	2
VHA	cdwwork_allergy	AllergyDrugClass	VIEW	2
VHA	cdwwork_allergy	AllergyDrugIngredient	VIEW	2
VHA	cdwwork_anticoag	Flowsheet	VIEW	2
VHA	cdwwork_anticoag	FlowsheetActivity	VIEW	2
VHA	cdwwork_appt	Appointment	VIEW	4
VHA	cdwwork_appt	Appointment_Recent	VIEW	4
VHA	cdwwork_appt	AppointmentMultiple	VIEW	2
VHA	cdwwork_appt	AppointmentRequest	VIEW	2
VHA	cdwwork_appt	RecallReminder	VIEW	2
VHA	cdwwork_appt	RemovedRecallReminders	VIEW	2
VHA	cdwwork_appt	VSEAppointment	VIEW	2
VHA	cdwwork_appt	VSEAppointmentCheckInStatus	VIEW	2
VHA	cdwwork_appt	VSEAppointmentContact	VIEW	2
VHA	cdwwork_appt	VSEAppointmentRequest	VIEW	2
VHA	cdwwork_appt	VSEDateTimeOfContact	VIEW	2
VHA	cdwwork_appt	VSEMRTCCalcPrefDate	VIEW	2
VHA	cdwwork_appt	VSEMultipleAppointmentsMade	VIEW	2
VHA	cdwwork_appt	VSEPIDHistory	VIEW	2
VHA	cdwwork_appt	VSEPrerequisite	VIEW	2
VHA	cdwwork_appt	VSEVSAudit	VIEW	2
VHA	cdwwork_appt	WaitList	VIEW	2
VHA	cdwwork_basecamp	customer	BASE TABLE	1
VHA	cdwwork_basecamp	customerauthorization	BASE TABLE	1
VHA	cdwwork_basecamp	doexcatalog	BASE TABLE	1
VHA	cdwwork_basecamp	researchworkgroup	BASE TABLE	1
VHA	cdwwork_basecamp	task	BASE TABLE	1
VHA	cdwwork_basecamp	utilityaccountpermission	BASE TABLE	1
VHA	cdwwork_basecamp	workgroup	BASE TABLE	1
VHA	cdwwork_basecamp	workgroupclearance	BASE TABLE	1
VHA	cdwwork_basecamp	workgroupmembership	BASE TABLE	1
VHA	cdwwork_basecamp	workgrouppermission	BASE TABLE	1
VHA	cdwwork_bcma	BCMAAdditive	VIEW	2
VHA	cdwwork_bcma	BCMADispensedDrug	VIEW	2
VHA	cdwwork_bcma	BCMADispensedDrug_Recent	VIEW	2
VHA	cdwwork_bcma	BCMAMedicationLog	VIEW	2
VHA	cdwwork_bcma	BCMAMedicationLog_Recent	VIEW	2
VHA	cdwwork_bcma	BCMAMedicationVariance	VIEW	2
VHA	cdwwork_bcma	BCMAMissingDoseRequest	VIEW	2
VHA	cdwwork_bcma	BCMASolution	VIEW	2
VHA	cdwwork_bcma	BCMAUnableToScan	VIEW	2
VHA	cdwwork_bcma	BCMAUnableToScanDrug	VIEW	2
VHA	cdwwork_benetravel	Certification	VIEW	2
VHA	cdwwork_benetravel	Claim	VIEW	2
VHA	cdwwork_chem	LabChem	VIEW	2
VHA	cdwwork_chem	LabChem_Recent	VIEW	2
VHA	cdwwork_chem	LabPanel	VIEW	2
VHA	cdwwork_chem	OrderedLabPanel	VIEW	2
VHA	cdwwork_chem	PatientLabChem	VIEW	2
VHA	cdwwork_con	Consult	VIEW	2
VHA	cdwwork_con	Consult_Recent	VIEW	2
VHA	cdwwork_con	ConsultActivity	VIEW	2
VHA	cdwwork_con	ConsultActivity_Recent	VIEW	2
VHA	cdwwork_con	ConsultFactor	VIEW	2
VHA	cdwwork_cprsorder	CancelledOrderChecks	VIEW	2
VHA	cdwwork_cprsorder	CancelledOrderChecksText	VIEW	2
VHA	cdwwork_cprsorder	CancelledOrderData	VIEW	2
VHA	cdwwork_cprsorder	CancelledOrdersAndOrderChecks	VIEW	2
VHA	cdwwork_cprsorder	CancelledOrdersOrderableItems	VIEW	2
VHA	cdwwork_cprsorder	CPRSOrder	VIEW	2
VHA	cdwwork_cprsorder	CPRSOrder_Recent	VIEW	2
VHA	cdwwork_cprsorder	OrderAction	VIEW	2
VHA	cdwwork_cprsorder	OrderAction_Recent	VIEW	2
VHA	cdwwork_cprsorder	OrderCheckInstance	VIEW	2
VHA	cdwwork_cprsorder	OrderCheckMessage	VIEW	2
VHA	cdwwork_cprsorder	OrderCheckOverrideReason	VIEW	2
VHA	cdwwork_cprsorder	OrderedItem	VIEW	2
VHA	cdwwork_cprsorder	OrderedItem_Recent	VIEW	2
VHA	cdwwork_cprsorder	OrderIntervention	VIEW	2
VHA	cdwwork_crp	OrderCheckRuleGroup	VIEW	2
VHA	cdwwork_crp	OrderCheckRuleGroupRuleList	VIEW	2
VHA	cdwwork_crp	ReminderCategory	VIEW	2
VHA	cdwwork_crp	ReminderCategoryIndividualReminder	VIEW	2
VHA	cdwwork_crp	ReminderCategorySubCategory	VIEW	2
VHA	cdwwork_crp	ReminderDefEditHistory	VIEW	2
VHA	cdwwork_crp	ReminderDefinition	VIEW	2
VHA	cdwwork_crp	ReminderDialog	VIEW	2
VHA	cdwwork_crp	ReminderFindingType	VIEW	2
VHA	cdwwork_crp	ReminderOrderCheckRule	VIEW	2
VHA	cdwwork_crp	ReminderReport	VIEW	2
VHA	cdwwork_crp	ReminderReportDue	VIEW	2
VHA	cdwwork_crp	ReminderReportPatient	VIEW	2
VHA	cdwwork_crp	ReminderResolution	VIEW	2
VHA	cdwwork_crp	ReminderSponsor	VIEW	2
VHA	cdwwork_crp	ReminderSponsorContact	VIEW	2
VHA	cdwwork_crp	ReminderTaxonomy	VIEW	2
VHA	cdwwork_crp	ReminderTaxonomyCodeList	VIEW	2
VHA	cdwwork_crp	ReminderTaxonomyCodingSystem	VIEW	2
VHA	cdwwork_crp	ReminderTaxonomyDialogCodingSystem	VIEW	2
VHA	cdwwork_crp	ReminderTerm	VIEW	2
VHA	cdwwork_crp	ReminderTermFinding	VIEW	2
VHA	cdwwork_dental	DentalAlerts	VIEW	2
VHA	cdwwork_dental	DentalEncounter	VIEW	2
VHA	cdwwork_dental	DentalEncounterEvent	VIEW	2
VHA	cdwwork_dental	DentalEncounterEventDetail	VIEW	2
VHA	cdwwork_dental	DentalExamDiagnosis	VIEW	2
VHA	cdwwork_dental	DentalFeeBasis	VIEW	2
VHA	cdwwork_dental	DentalHeadNeckDescription	VIEW	2
VHA	cdwwork_dental	DentalParafunctionalClinicalFindings	VIEW	2
VHA	cdwwork_dental	DentalParafunctionalNotes	VIEW	2
VHA	cdwwork_dental	DentalPatient	VIEW	2
VHA	cdwwork_dental	DentalPeriodontalNotes	VIEW	2
VHA	cdwwork_dental	DentalPeriodontalNullNotes	VIEW	2
VHA	cdwwork_dental	dentalperiodonticnotes	VIEW	2
VHA	cdwwork_dental	DentalRemarks	VIEW	2
VHA	cdwwork_dental	DentalSocialHistoryNotes	VIEW	2
VHA	cdwwork_dental	DentalTreatment	VIEW	2
VHA	cdwwork_dental	DentalTreatmentPlanNotes	VIEW	2
VHA	cdwwork_dental	dentaltreatmentplannotetype	VIEW	2
VHA	cdwwork_dental	DentalTreatmentPlanReserve	VIEW	2
VHA	cdwwork_dental	DentalTreatmentPlanReserveTransaction	VIEW	2
VHA	cdwwork_dental	DeviceTracking	VIEW	2
VHA	cdwwork_dental	DeviceTrackingDetail	VIEW	2
VHA	cdwwork_dental	TMJClinicalFindings	VIEW	2
VHA	cdwwork_dental	TMJNotes	VIEW	2
VHA	cdwwork_dim	abusedsubstance	VIEW	2
VHA	cdwwork_dim	AccessionArea	VIEW	2
VHA	cdwwork_dim	AccessioningInstitution	VIEW	2
VHA	cdwwork_dim	ActivityType	VIEW	2
VHA	cdwwork_dim	AdministrationSchedule	VIEW	2
VHA	cdwwork_dim	AdministrationScheduleWard	VIEW	2
VHA	cdwwork_dim	AdministrativeActivitySite	VIEW	2
VHA	cdwwork_dim	AdministrativeActivitySiteType	VIEW	2
VHA	cdwwork_dim	AdminScheduleDrugsForDosingChkFreq	VIEW	2
VHA	cdwwork_dim	admitregulation	VIEW	2
VHA	cdwwork_dim	AdmitSource	VIEW	2
VHA	cdwwork_dim	agency	VIEW	2
VHA	cdwwork_dim	AmbulanceReasonCode	VIEW	2
VHA	cdwwork_dim	AnatomicPhantomType	VIEW	2
VHA	cdwwork_dim	AnatomicTargetRegion	VIEW	2
VHA	cdwwork_dim	anesthesiasupervisorcode	VIEW	2
VHA	cdwwork_dim	Antibiotic	VIEW	2
VHA	cdwwork_dim	AppointmentStatus	VIEW	2
VHA	cdwwork_dim	AppointmentType	VIEW	2
VHA	cdwwork_dim	AppointmentTypeDescription	VIEW	2
VHA	cdwwork_dim	ARCategory	VIEW	2
VHA	cdwwork_dim	ARDebtList	VIEW	2
VHA	cdwwork_dim	ARDebtor	VIEW	2
VHA	cdwwork_dim	ARGroup	VIEW	2
VHA	cdwwork_dim	ARGroupType	VIEW	2
VHA	cdwwork_dim	ARTransactionType	VIEW	2
VHA	cdwwork_dim	asaclass	VIEW	2
VHA	cdwwork_dim	AssociatedStopCode	VIEW	2
VHA	cdwwork_dim	attendingcode	VIEW	2
VHA	cdwwork_dim	AutoDiscontinuedRule	VIEW	2
VHA	cdwwork_dim	AVReason	VIEW	2
VHA	cdwwork_dim	bedsection	VIEW	2
VHA	cdwwork_dim	BeneTravelAccount	VIEW	2
VHA	cdwwork_dim	BodySystem	VIEW	2
VHA	cdwwork_dim	BodySystemDisabilityCondition	VIEW	2
VHA	cdwwork_dim	BranchOfService	VIEW	2
VHA	cdwwork_dim	BudgetObjectCode	VIEW	2
VHA	cdwwork_dim	CALMLogBatchType	VIEW	2
VHA	cdwwork_dim	cancellationreason	VIEW	2
VHA	cdwwork_dim	CAPRICustomExamList	VIEW	2
VHA	cdwwork_dim	CAPRICustomExamListType	VIEW	2
VHA	cdwwork_dim	CAPRIRoutingPlace	VIEW	2
VHA	cdwwork_dim	CatastrophicDisabilityReason	VIEW	2
VHA	cdwwork_dim	CensusPeriod	VIEW	2
VHA	cdwwork_dim	ClinicalProcedure	VIEW	2
VHA	cdwwork_dim	ClinicalTerm	VIEW	2
VHA	cdwwork_dim	clinicaltermform	VIEW	2
VHA	cdwwork_dim	ClinicalTermType	VIEW	2
VHA	cdwwork_dim	ClinicGroup	VIEW	2
VHA	cdwwork_dim	CollectionMethod	VIEW	2
VHA	cdwwork_dim	CollectionSample	VIEW	1
VHA	cdwwork_dim	ComorbidICD10DiagnosisVersion	VIEW	2
VHA	cdwwork_dim	ComorbidICD9DiagnosisVersion	VIEW	2
VHA	cdwwork_dim	Country	VIEW	2
VHA	cdwwork_dim	CPExamCancellationReason	VIEW	2
VHA	cdwwork_dim	CPExamClaimType	VIEW	2
VHA	cdwwork_dim	CPExamContractor	VIEW	2
VHA	cdwwork_dim	CPExamInsufficientReason	VIEW	2
VHA	cdwwork_dim	CPExamSpecialConsideration	VIEW	2
VHA	cdwwork_dim	CPExamType	VIEW	2
VHA	cdwwork_dim	CPExamTypeDisabilityCondition	VIEW	2
VHA	cdwwork_dim	CPRSNotificationParameter	VIEW	2
VHA	cdwwork_dim	CPRSPatientList	VIEW	2
VHA	cdwwork_dim	CPRSPatientMemberList	VIEW	2
VHA	cdwwork_dim	CPRSTabKey	VIEW	2
VHA	cdwwork_dim	CPT	VIEW	2
VHA	cdwwork_dim	CPTCategory	VIEW	2
VHA	cdwwork_dim	CPTDescriptionVersion	VIEW	2
VHA	cdwwork_dim	CPTModifier	VIEW	2
VHA	cdwwork_dim	CPTShortNameVersion	VIEW	2
VHA	cdwwork_dim	date	VIEW	2
VHA	cdwwork_dim	DEABusinessActivityCode	VIEW	2
VHA	cdwwork_dim	DenialReason	VIEW	2
VHA	cdwwork_dim	dentalbedsection	VIEW	2
VHA	cdwwork_dim	dentalcannedcommentcategory	VIEW	2
VHA	cdwwork_dim	dentalclassification	VIEW	2
VHA	cdwwork_dim	dentalcodingcheck	VIEW	2
VHA	cdwwork_dim	dentalconstantdata	VIEW	2
VHA	cdwwork_dim	dentaldssgrouping	VIEW	2
VHA	cdwwork_dim	dentalprocedure	VIEW	2
VHA	cdwwork_dim	DentalProcedureDefaultDiagnosis	VIEW	2
VHA	cdwwork_dim	DentalProcedureDefaultICD10Diagnosis	VIEW	2
VHA	cdwwork_dim	dentalprovider	VIEW	2
VHA	cdwwork_dim	dentalproviderspecialty	VIEW	2
VHA	cdwwork_dim	dentalprovidertype	VIEW	2
VHA	cdwwork_dim	dentalservice	VIEW	2
VHA	cdwwork_dim	dentalsite	VIEW	2
VHA	cdwwork_dim	DentalTooth	VIEW	2
VHA	cdwwork_dim	Device	VIEW	2
VHA	cdwwork_dim	dialysistype	VIEW	2
VHA	cdwwork_dim	DisabilityCondition	VIEW	2
VHA	cdwwork_dim	DischargeType	VIEW	2
VHA	cdwwork_dim	DispenseUnit	VIEW	2
VHA	cdwwork_dim	DisplayGroup	VIEW	2
VHA	cdwwork_dim	Division	VIEW	2
VHA	cdwwork_dim	DLAIssueUnit	VIEW	2
VHA	cdwwork_dim	dosageform	VIEW	2
VHA	cdwwork_dim	DosageFormMedRoute	VIEW	2
VHA	cdwwork_dim	DoseUnit	VIEW	2
VHA	cdwwork_dim	DRG	VIEW	2
VHA	cdwwork_dim	DRGChange	VIEW	2
VHA	cdwwork_dim	DRGConditionComorbidityExclusion	VIEW	2
VHA	cdwwork_dim	DRGEffectiveDateVersion	VIEW	2
VHA	cdwwork_dim	DRGEffectivePeriod	VIEW	2
VHA	cdwwork_dim	DRGFiscalWeight	VIEW	2
VHA	cdwwork_dim	DRGIDCode	VIEW	2
VHA	cdwwork_dim	DRGVersionedDescription	VIEW	2
VHA	cdwwork_dim	DrugClass	VIEW	2
VHA	cdwwork_dim	DrugIngredient	VIEW	2
VHA	cdwwork_dim	DrugNameWithoutDose	VIEW	2
VHA	cdwwork_dim	DrugTextEntry	VIEW	2
VHA	cdwwork_dim	DrugTextLocalDrug	VIEW	2
VHA	cdwwork_dim	DrugTextPharmacyOrderableItem	VIEW	2
VHA	cdwwork_dim	DrugTextSynonym	VIEW	2
VHA	cdwwork_dim	DrugUnit	VIEW	2
VHA	cdwwork_dim	dsslocation	VIEW	2
VHA	cdwwork_dim	dsslocationstopcode	VIEW	2
VHA	cdwwork_dim	EDIMessageRouter	VIEW	2
VHA	cdwwork_dim	EDISRole	VIEW	2
VHA	cdwwork_dim	EDISRoomBed	VIEW	2
VHA	cdwwork_dim	EDISStaff	VIEW	2
VHA	cdwwork_dim	EDISTrackingArea	VIEW	2
VHA	cdwwork_dim	EDISTrackingCode	VIEW	2
VHA	cdwwork_dim	EDISTrackingCodeSet	VIEW	2
VHA	cdwwork_dim	EducationTopic	VIEW	2
VHA	cdwwork_dim	electrogroundposition	VIEW	2
VHA	cdwwork_dim	electrolytes	VIEW	2
VHA	cdwwork_dim	Eligibility	VIEW	2
VHA	cdwwork_dim	EngCategoryStockNumber	VIEW	2
VHA	cdwwork_dim	EngineeringBuilding	VIEW	2
VHA	cdwwork_dim	EngineeringSection	VIEW	2
VHA	cdwwork_dim	EngineeringSpace	VIEW	2
VHA	cdwwork_dim	EngineeringSpaceFunction	VIEW	2
VHA	cdwwork_dim	enrollmentstatus	VIEW	2
VHA	cdwwork_dim	EPharmacySiteParameters	VIEW	2
VHA	cdwwork_dim	EquipmentCategory	VIEW	2
VHA	cdwwork_dim	EquipmentCategoryShop	VIEW	2
VHA	cdwwork_dim	EquipmentCategoryShopFrequency	VIEW	2
VHA	cdwwork_dim	EquipmentCategorySynonym	VIEW	2
VHA	cdwwork_dim	EquipmentDisposition	VIEW	2
VHA	cdwwork_dim	EquipmentInventoryListing	VIEW	2
VHA	cdwwork_dim	EquipmentManufacturer	VIEW	2
VHA	cdwwork_dim	eRx2017PharmacyCommunication	VIEW	2
VHA	cdwwork_dim	eRxPharmacy	VIEW	2
VHA	cdwwork_dim	eRxPharmacyCommunication	VIEW	2
VHA	cdwwork_dim	eRxPharmacyIdentification	VIEW	2
VHA	cdwwork_dim	eRxServiceReasonCode	VIEW	2
VHA	cdwwork_dim	Ethnicity	VIEW	2
VHA	cdwwork_dim	EventCaptureSpecialty	VIEW	2
VHA	cdwwork_dim	Exam	VIEW	2
VHA	cdwwork_dim	ExcludedICD10Diagnosis	VIEW	2
VHA	cdwwork_dim	ExcludedICD9Diagnosis	VIEW	2
VHA	cdwwork_dim	FacilityMovementType	VIEW	4
VHA	cdwwork_dim	facilitytype	VIEW	2
VHA	cdwwork_dim	FederalAgency	VIEW	2
VHA	cdwwork_dim	FeeCheckCancellationReason	VIEW	2
VHA	cdwwork_dim	FeeConversionCategory	VIEW	2
VHA	cdwwork_dim	FeeCPTRVU	VIEW	2
VHA	cdwwork_dim	FeeDispositionCode	VIEW	2
VHA	cdwwork_dim	FeeGeographicIndex	VIEW	2
VHA	cdwwork_dim	FeeLetter	VIEW	2
VHA	cdwwork_dim	FeeParticipationCode	VIEW	2
VHA	cdwwork_dim	FeeProgram	VIEW	2
VHA	cdwwork_dim	FeePurposeOfVisit	VIEW	2
VHA	cdwwork_dim	FeeSpecialtyCode	VIEW	2
VHA	cdwwork_dim	FeeSuspension	VIEW	2
VHA	cdwwork_dim	FeeUnauthorizedClaimDisposition	VIEW	2
VHA	cdwwork_dim	FeeUnauthorizedClaimStatus	VIEW	2
VHA	cdwwork_dim	FeeUnauthorizedDisapprovalReason	VIEW	2
VHA	cdwwork_dim	FeeVATypeOfService	VIEW	2
VHA	cdwwork_dim	FMSSecurityCode	VIEW	2
VHA	cdwwork_dim	FMSSecurityCodeStatus	VIEW	2
VHA	cdwwork_dim	FPDSCode	VIEW	2
VHA	cdwwork_dim	GenericInventoryPoint	VIEW	2
VHA	cdwwork_dim	GIPCostSection	VIEW	2
VHA	cdwwork_dim	GIPDistributionPoint	VIEW	2
VHA	cdwwork_dim	GIPGroupCategory	VIEW	2
VHA	cdwwork_dim	GIPInventoryUser	VIEW	2
VHA	cdwwork_dim	GIPItem	VIEW	2
VHA	cdwwork_dim	GIPItemAdditionalLocation	VIEW	2
VHA	cdwwork_dim	gipitemaudit	VIEW	2
VHA	cdwwork_dim	GIPItemCaseCart	VIEW	2
VHA	cdwwork_dim	GIPItemOnDemandAudit	VIEW	2
VHA	cdwwork_dim	GIPItemOutstandingRequest	VIEW	2
VHA	cdwwork_dim	GIPItemReceipt	VIEW	2
VHA	cdwwork_dim	GIPItemSource	VIEW	2
VHA	cdwwork_dim	GIPItemSubstitute	VIEW	2
VHA	cdwwork_dim	GIPItemUse	VIEW	2
VHA	cdwwork_dim	GIPOnDemandUser	VIEW	2
VHA	cdwwork_dim	GIPQuantityReplacementUser	VIEW	2
VHA	cdwwork_dim	GIPStorageLocation	VIEW	2
VHA	cdwwork_dim	GIPSupplyStation	VIEW	2
VHA	cdwwork_dim	GMRCProcedure	VIEW	2
VHA	cdwwork_dim	HCPCSInventory	VIEW	2
VHA	cdwwork_dim	HealthFactorCodeMapping	VIEW	2
VHA	cdwwork_dim	HealthFactorType	VIEW	2
VHA	cdwwork_dim	HealthSummaryType	VIEW	2
VHA	cdwwork_dim	HelpFrame	VIEW	2
VHA	cdwwork_dim	IBActionStatus	VIEW	2
VHA	cdwwork_dim	IBActionType	VIEW	2
VHA	cdwwork_dim	IBAttachmentReportType	VIEW	2
VHA	cdwwork_dim	IBBillFormType	VIEW	2
VHA	cdwwork_dim	IBBillingAlertDefinition	VIEW	2
VHA	cdwwork_dim	IBChargeRemoveReason	VIEW	2
VHA	cdwwork_dim	IBClaimsTrackingAmount	VIEW	2
VHA	cdwwork_dim	IBClaimsTrackingNonBillableReason	VIEW	2
VHA	cdwwork_dim	IBClaimsTrackingType	VIEW	2
VHA	cdwwork_dim	IBError	VIEW	2
VHA	cdwwork_dim	IBInformationSource	VIEW	2
VHA	cdwwork_dim	IBInsurancePayer	VIEW	2
VHA	cdwwork_dim	IBPlaceOfService	VIEW	2
VHA	cdwwork_dim	IBProviderIDType	VIEW	2
VHA	cdwwork_dim	IBRateType	VIEW	2
VHA	cdwwork_dim	IBRevenueCode	VIEW	2
VHA	cdwwork_dim	IBSiteParameter	VIEW	2
VHA	cdwwork_dim	IBSiteParameterBatch	VIEW	2
VHA	cdwwork_dim	IBSiteParameterCommercial	VIEW	2
VHA	cdwwork_dim	IBSiteParameterInsurance	VIEW	2
VHA	cdwwork_dim	IBStopCodeBillType	VIEW	2
VHA	cdwwork_dim	IBTypeOfService	VIEW	2
VHA	cdwwork_dim	ICD10	VIEW	2
VHA	cdwwork_dim	ICD10AgeHighVersion	VIEW	2
VHA	cdwwork_dim	ICD10DescriptionVersion	VIEW	2
VHA	cdwwork_dim	ICD10DiagnosisVersion	VIEW	2
VHA	cdwwork_dim	ICD10MDCMap	VIEW	2
VHA	cdwwork_dim	ICD10Procedure	VIEW	2
VHA	cdwwork_dim	ICD10ProcedureDescriptionVersion	VIEW	2
VHA	cdwwork_dim	ICD10ProcedureDRGIDCode	VIEW	2
VHA	cdwwork_dim	ICD10ProcedureOperationVersion	VIEW	2
VHA	cdwwork_dim	ICD10ProcedureSexVersion	VIEW	2
VHA	cdwwork_dim	ICD10ProcedureStatusVersion	VIEW	2
VHA	cdwwork_dim	ICD10SexVersion	VIEW	2
VHA	cdwwork_dim	ICD10StatusVersion	VIEW	2
VHA	cdwwork_dim	ICD9	VIEW	2
VHA	cdwwork_dim	ICD9AgeHighVersion	VIEW	2
VHA	cdwwork_dim	ICD9DescriptionVersion	VIEW	2
VHA	cdwwork_dim	ICD9DiagnosisVersion	VIEW	2
VHA	cdwwork_dim	ICD9MDCMap	VIEW	2
VHA	cdwwork_dim	ICD9Procedure	VIEW	2
VHA	cdwwork_dim	ICD9ProcedureDescriptionVersion	VIEW	2
VHA	cdwwork_dim	ICD9ProcedureDRGIDCode	VIEW	2
VHA	cdwwork_dim	ICD9ProcedureOperationVersion	VIEW	2
VHA	cdwwork_dim	ICD9ProcedureSexVersion	VIEW	2
VHA	cdwwork_dim	ICD9ProcedureStatusVersion	VIEW	2
VHA	cdwwork_dim	ICD9SexVersion	VIEW	2
VHA	cdwwork_dim	ICD9StatusVersion	VIEW	2
VHA	cdwwork_dim	identificationformat	VIEW	2
VHA	cdwwork_dim	IFCAPCostCenter	VIEW	2
VHA	cdwwork_dim	IFCAPCostCenterBOC	VIEW	2
VHA	cdwwork_dim	IFCAPItem	VIEW	2
VHA	cdwwork_dim	IFCAPItemFundControlPoint	VIEW	2
VHA	cdwwork_dim	IFCAPItemPurchaseOrder	VIEW	2
VHA	cdwwork_dim	IFCAPItemSynonym	VIEW	2
VHA	cdwwork_dim	IFCAPItemVendor	VIEW	2
VHA	cdwwork_dim	IFCAPManufacturer	VIEW	2
VHA	cdwwork_dim	IFCAPSourceManufacturerPart	VIEW	2
VHA	cdwwork_dim	IFCAPStandardCode	VIEW	2
VHA	cdwwork_dim	IFCAPStandardCodeGroup	VIEW	2
VHA	cdwwork_dim	IFCAPSupplyClassification	VIEW	2
VHA	cdwwork_dim	IFCAPSupplyGroup	VIEW	2
VHA	cdwwork_dim	ImagingAdministrationRoute	VIEW	2
VHA	cdwwork_dim	ImagingAdministrationSite	VIEW	2
VHA	cdwwork_dim	ImagingType	VIEW	2
VHA	cdwwork_dim	ImmunizationAdministrationRoute	VIEW	2
VHA	cdwwork_dim	ImmunizationAdministrationSite	VIEW	2
VHA	cdwwork_dim	ImmunizationContraReason	VIEW	2
VHA	cdwwork_dim	ImmunizationInformationSource	VIEW	2
VHA	cdwwork_dim	ImmunizationLot	VIEW	2
VHA	cdwwork_dim	ImmunizationManufacturer	VIEW	2
VHA	cdwwork_dim	ImmunizationName	VIEW	2
VHA	cdwwork_dim	ImmunizationRefusalReason	VIEW	2
VHA	cdwwork_dim	InconsistentDataElements	VIEW	2
VHA	cdwwork_dim	Institution	VIEW	2
VHA	cdwwork_dim	InstitutionTimeZone	VIEW	2
VHA	cdwwork_dim	InsuranceCompany	VIEW	2
VHA	cdwwork_dim	InsuranceCoverageType	VIEW	2
VHA	cdwwork_dim	InsuranceCoverageTypeDescription	VIEW	2
VHA	cdwwork_dim	InsuranceFilingTimeframe	VIEW	2
VHA	cdwwork_dim	InsurancePlan	VIEW	2
VHA	cdwwork_dim	InsurancePlanType	VIEW	2
VHA	cdwwork_dim	InterventionRecommendation	VIEW	2
VHA	cdwwork_dim	InterventionType	VIEW	2
VHA	cdwwork_dim	IrradiationInstanceCode	VIEW	2
VHA	cdwwork_dim	IRTDeficiency	VIEW	2
VHA	cdwwork_dim	IRTDeficiencyCategory	VIEW	2
VHA	cdwwork_dim	IRTStatus	VIEW	2
VHA	cdwwork_dim	IVAdditiveIngredient	VIEW	2
VHA	cdwwork_dim	ivadditiveingredientelectrolytes	VIEW	2
VHA	cdwwork_dim	ivadditiveingredientsynonym	VIEW	2
VHA	cdwwork_dim	IVRoom	VIEW	2
VHA	cdwwork_dim	IVSolutionIngredient	VIEW	2
VHA	cdwwork_dim	ivsolutioningredientelectrolytes	VIEW	2
VHA	cdwwork_dim	ivsolutioningredientsynonym	VIEW	2
VHA	cdwwork_dim	LabChemTest	VIEW	2
VHA	cdwwork_dim	LabChemTestPanelList	VIEW	2
VHA	cdwwork_dim	LabChemTestSpecimen	VIEW	2
VHA	cdwwork_dim	LabChemTestSynonym	VIEW	2
VHA	cdwwork_dim	LabChemTestUrgency	VIEW	2
VHA	cdwwork_dim	LabCode	VIEW	2
VHA	cdwwork_dim	LabCodeSubtype	VIEW	2
VHA	cdwwork_dim	LabResultOrderParameter	VIEW	2
VHA	cdwwork_dim	LabSection	VIEW	2
VHA	cdwwork_dim	Letter	VIEW	2
VHA	cdwwork_dim	localdrug	VIEW	2
VHA	cdwwork_dim	LocalDrugNDCByOutpatientSite	VIEW	2
VHA	cdwwork_dim	LocalDrugSynonym	VIEW	2
VHA	cdwwork_dim	LocalPatientRecordFlag	VIEW	2
VHA	cdwwork_dim	LocalPossibleDosage	VIEW	2
VHA	cdwwork_dim	LocalSurgicalSpecialty	VIEW	2
VHA	cdwwork_dim	Location	VIEW	2
VHA	cdwwork_dim	LocationAdminTimes	VIEW	2
VHA	cdwwork_dim	LocationInstruction	VIEW	2
VHA	cdwwork_dim	LocationProvider	VIEW	2
VHA	cdwwork_dim	LocationType	VIEW	2
VHA	cdwwork_dim	Logic	VIEW	2
VHA	cdwwork_dim	LOINC	VIEW	2
VHA	cdwwork_dim	LTCCoPayExemption	VIEW	2
VHA	cdwwork_dim	majorconceptmap	VIEW	2
VHA	cdwwork_dim	Manufacturer	VIEW	2
VHA	cdwwork_dim	MaritalStatus	VIEW	2
VHA	cdwwork_dim	maseligibility	VIEW	2
VHA	cdwwork_dim	MASMovementType	VIEW	2
VHA	cdwwork_dim	MASService	VIEW	2
VHA	cdwwork_dim	MASTransactionType	VIEW	2
VHA	cdwwork_dim	MDC	VIEW	2
VHA	cdwwork_dim	MeansTestStatus	VIEW	2
VHA	cdwwork_dim	MeansTestStatusDescription	VIEW	2
VHA	cdwwork_dim	MeansTypeOfTest	VIEW	2
VHA	cdwwork_dim	MedicationInstruction	VIEW	2
VHA	cdwwork_dim	MedicationInstructionWard	VIEW	2
VHA	cdwwork_dim	medicationroute	VIEW	2
VHA	cdwwork_dim	MedInstructionDrugsForDosingChkFreq	VIEW	2
VHA	cdwwork_dim	MenuOption	VIEW	2
VHA	cdwwork_dim	MHRules	VIEW	2
VHA	cdwwork_dim	ModeOfTransportation	VIEW	2
VHA	cdwwork_dim	Morphology	VIEW	2
VHA	cdwwork_dim	MRSADivisionIsolationOrder	VIEW	2
VHA	cdwwork_dim	MRSADivisionMap	VIEW	2
VHA	cdwwork_dim	MRSADivisionParameter	VIEW	2
VHA	cdwwork_dim	MRSAWardLocationMap	VIEW	2
VHA	cdwwork_dim	NationalDrug	VIEW	2
VHA	cdwwork_dim	NationalDrugCodingSystem	VIEW	2
VHA	cdwwork_dim	NationalDrugCodingSystemCode	VIEW	2
VHA	cdwwork_dim	NationalDrugCopayTier	VIEW	2
VHA	cdwwork_dim	NationalDrugDOTShipping	VIEW	2
VHA	cdwwork_dim	NationalDrugFormularyDesignator	VIEW	2
VHA	cdwwork_dim	NationalDrugIngredient	VIEW	2
VHA	cdwwork_dim	NationalPatientRecordFlag	VIEW	2
VHA	cdwwork_dim	NationalPossibleDosage	VIEW	2
VHA	cdwwork_dim	NationalVALabCode	VIEW	2
VHA	cdwwork_dim	NationalVALabCodeRelatedTerm	VIEW	2
VHA	cdwwork_dim	NationalVALabCodeSpecimen	VIEW	2
VHA	cdwwork_dim	NationalVALabCodeTimeAspect	VIEW	2
VHA	cdwwork_dim	NatureOfOrder	VIEW	2
VHA	cdwwork_dim	NCPDPFormat	VIEW	2
VHA	cdwwork_dim	NCPDPProcessor	VIEW	2
VHA	cdwwork_dim	NCPDPRelationshipCode	VIEW	2
VHA	cdwwork_dim	NDCUPNLink	VIEW	2
VHA	cdwwork_dim	NonAcuteClassification	VIEW	2
VHA	cdwwork_dim	NonBillableClinic	VIEW	2
VHA	cdwwork_dim	NonBillableStopCode	VIEW	2
VHA	cdwwork_dim	NonExpendAdminOffice	VIEW	2
VHA	cdwwork_dim	NonExpendBudgetObjectCode	VIEW	2
VHA	cdwwork_dim	NonExpendFundCode	VIEW	2
VHA	cdwwork_dim	NonExpendGeneralLedger	VIEW	2
VHA	cdwwork_dim	NonExpendGeneralLedgerGroup	VIEW	2
VHA	cdwwork_dim	NonExpendStatus	VIEW	2
VHA	cdwwork_dim	NotComorbidICD10Diagnosis	VIEW	2
VHA	cdwwork_dim	NotComorbidICD9Diagnosis	VIEW	2
VHA	cdwwork_dim	OldMedInstructionSchedule	VIEW	2
VHA	cdwwork_dim	OldScheduleName	VIEW	2
VHA	cdwwork_dim	OperatingRoom	VIEW	2
VHA	cdwwork_dim	OperatingRoomBlockScheduleDate	VIEW	2
VHA	cdwwork_dim	OperatingRoomSchedule	VIEW	2
VHA	cdwwork_dim	OperatingRoomScheduleDate	VIEW	2
VHA	cdwwork_dim	OperatingRoomServiceBlockout	VIEW	2
VHA	cdwwork_dim	OperatingRoomType	VIEW	2
VHA	cdwwork_dim	OrderableItem	VIEW	2
VHA	cdwwork_dim	OrderableItemSetMembership	VIEW	2
VHA	cdwwork_dim	OrderableItemSynonym	VIEW	2
VHA	cdwwork_dim	OrderCheckReason	VIEW	2
VHA	cdwwork_dim	OrderDialog	VIEW	2
VHA	cdwwork_dim	OrderReason	VIEW	2
VHA	cdwwork_dim	OrderStatus	VIEW	2
VHA	cdwwork_dim	OrderUnit	VIEW	2
VHA	cdwwork_dim	Organism	VIEW	2
VHA	cdwwork_dim	OutOfServiceReason	VIEW	2
VHA	cdwwork_dim	PackageSize	VIEW	2
VHA	cdwwork_dim	PackageType	VIEW	2
VHA	cdwwork_dim	PatientConsciousness	VIEW	2
VHA	cdwwork_dim	PatientMood	VIEW	2
VHA	cdwwork_dim	PatientRecordFlagType	VIEW	2
VHA	cdwwork_dim	PatientType	VIEW	2
VHA	cdwwork_dim	PBMPlan	VIEW	2
VHA	cdwwork_dim	PCEDataSource	VIEW	2
VHA	cdwwork_dim	PeriodOfService	VIEW	2
VHA	cdwwork_dim	PeriodOfServiceEligibility	VIEW	2
VHA	cdwwork_dim	PharmacyOrderableItem	VIEW	2
VHA	cdwwork_dim	PharmacyOrderableItemIndications	VIEW	2
VHA	cdwwork_dim	PharmacyOrderableItemMedRoute	VIEW	2
VHA	cdwwork_dim	PharmacyOrderableItemOtherLangIndic	VIEW	2
VHA	cdwwork_dim	PharmacyOrderableItemSynonym	VIEW	2
VHA	cdwwork_dim	PharmacyPatientStatus	VIEW	2
VHA	cdwwork_dim	PharmacySite	VIEW	2
VHA	cdwwork_dim	PlaceOfDisposition	VIEW	2
VHA	cdwwork_dim	PlanCoverageLimitation	VIEW	2
VHA	cdwwork_dim	PlanLimitationCategory	VIEW	2
VHA	cdwwork_dim	POWLocation	VIEW	2
VHA	cdwwork_dim	PRCDFund	VIEW	2
VHA	cdwwork_dim	PreventativeMaintenanceProcedure	VIEW	2
VHA	cdwwork_dim	PrimaryDrug	VIEW	2
VHA	cdwwork_dim	primarydrugapplication	VIEW	2
VHA	cdwwork_dim	primarydrugsynonym	VIEW	2
VHA	cdwwork_dim	ProcedureSubspecialtyType	VIEW	2
VHA	cdwwork_dim	ProcurementSource	VIEW	2
VHA	cdwwork_dim	PronounType	VIEW	2
VHA	cdwwork_dim	ProsAMISCategory	VIEW	2
VHA	cdwwork_dim	ProsAMISRepairCategory	VIEW	2
VHA	cdwwork_dim	ProsAMISReport	VIEW	2
VHA	cdwwork_dim	ProsAutoAdaptiveEqpt	VIEW	2
VHA	cdwwork_dim	ProsAutoAdaptiveEqptMftr	VIEW	2
VHA	cdwwork_dim	ProsDisabilityGroupCode	VIEW	2
VHA	cdwwork_dim	ProsDisabilityWorksheet	VIEW	2
VHA	cdwwork_dim	ProsHCPCSBalance	VIEW	2
VHA	cdwwork_dim	ProsInventoryTransaction	VIEW	2
VHA	cdwwork_dim	ProsItemLocation	VIEW	2
VHA	cdwwork_dim	ProsItemLocationHCPCS	VIEW	2
VHA	cdwwork_dim	ProsStock	VIEW	2
VHA	cdwwork_dim	ProsStockLocation	VIEW	2
VHA	cdwwork_dim	Prosthesis	VIEW	2
VHA	cdwwork_dim	ProstheticLetter	VIEW	2
VHA	cdwwork_dim	ProstheticsAMISCode	VIEW	2
VHA	cdwwork_dim	ProstheticsHCPCS	VIEW	2
VHA	cdwwork_dim	ProstheticsHCPCSItem	VIEW	2
VHA	cdwwork_dim	ProstheticsHCPCSItemMaster	VIEW	2
VHA	cdwwork_dim	ProstheticSiteParameter	VIEW	2
VHA	cdwwork_dim	ProstheticsMasterAMISCode	VIEW	2
VHA	cdwwork_dim	Protocol	VIEW	2
VHA	cdwwork_dim	ProviderClass	VIEW	2
VHA	cdwwork_dim	providernarrative	VIEW	2
VHA	cdwwork_dim	ProviderType	VIEW	2
VHA	cdwwork_dim	Race	VIEW	2
VHA	cdwwork_dim	RadiologyCommonProcedure	VIEW	2
VHA	cdwwork_dim	RadiologyCommonProcedureModifier	VIEW	2
VHA	cdwwork_dim	RadiologyComplicationType	VIEW	2
VHA	cdwwork_dim	RadiologyContractAgreement	VIEW	2
VHA	cdwwork_dim	RadiologyCPTProcedure	VIEW	2
VHA	cdwwork_dim	RadiologyDependentProcedure	VIEW	2
VHA	cdwwork_dim	RadiologyDiagnosticCode	VIEW	2
VHA	cdwwork_dim	RadiologyDivision	VIEW	2
VHA	cdwwork_dim	RadiologyDivisionLocation	VIEW	2
VHA	cdwwork_dim	RadiologyEquipmentRoom	VIEW	2
VHA	cdwwork_dim	RadiologyExamStatus	VIEW	2
VHA	cdwwork_dim	RadiologyHoldCancelReason	VIEW	2
VHA	cdwwork_dim	RadiologyLocation	VIEW	2
VHA	cdwwork_dim	RadiologyModality	VIEW	2
VHA	cdwwork_dim	radiologyprocedure	VIEW	2
VHA	cdwwork_dim	RadiologyProcedureContrastMedia	VIEW	2
VHA	cdwwork_dim	RadiologyProcedureModifier	VIEW	2
VHA	cdwwork_dim	RadiologyProcedureModifierImagingType	VIEW	2
VHA	cdwwork_dim	RadiopharmaceuticalLot	VIEW	2
VHA	cdwwork_dim	RadiopharmaceuticalSource	VIEW	2
VHA	cdwwork_dim	Reactant	VIEW	2
VHA	cdwwork_dim	ReactantDrugClass	VIEW	2
VHA	cdwwork_dim	ReactantDrugIngredient	VIEW	2
VHA	cdwwork_dim	ReactantSynonym	VIEW	2
VHA	cdwwork_dim	Reaction	VIEW	2
VHA	cdwwork_dim	ReactionEffectiveDate	VIEW	2
VHA	cdwwork_dim	ReactionSynonym	VIEW	2
VHA	cdwwork_dim	RecallReminderParameter	VIEW	2
VHA	cdwwork_dim	recallreminderprovider	VIEW	2
VHA	cdwwork_dim	RecallReminderTeam	VIEW	2
VHA	cdwwork_dim	RecallReminderType	VIEW	2
VHA	cdwwork_dim	releaseevent	VIEW	2
VHA	cdwwork_dim	Religion	VIEW	2
VHA	cdwwork_dim	RequestClassification	VIEW	2
VHA	cdwwork_dim	RequestService	VIEW	2
VHA	cdwwork_dim	RequiredICD10Diagnosis	VIEW	2
VHA	cdwwork_dim	RequiredICD9Diagnosis	VIEW	2
VHA	cdwwork_dim	RevenueCode	VIEW	2
VHA	cdwwork_dim	revenuesourcecode	VIEW	2
VHA	cdwwork_dim	ReviewType	VIEW	2
VHA	cdwwork_dim	ROIDocumentType	VIEW	2
VHA	cdwwork_dim	ROIIndicator	VIEW	2
VHA	cdwwork_dim	ROIRequestAuthorityType	VIEW	2
VHA	cdwwork_dim	ROIRequestorType	VIEW	2
VHA	cdwwork_dim	ROIRequestReason	VIEW	2
VHA	cdwwork_dim	ROIRequestType	VIEW	2
VHA	cdwwork_dim	ROIStatusCode	VIEW	2
VHA	cdwwork_dim	RoomBed	VIEW	2
VHA	cdwwork_dim	RoomBedOoS	VIEW	2
VHA	cdwwork_dim	ServiceSection	VIEW	2
VHA	cdwwork_dim	SexualOrientationType	VIEW	2
VHA	cdwwork_dim	SIOrISCategory	VIEW	2
VHA	cdwwork_dim	skinintegrity	VIEW	2
VHA	cdwwork_dim	skinprepagent	VIEW	2
VHA	cdwwork_dim	SkinTest	VIEW	2
VHA	cdwwork_dim	SNOMEDDisease	VIEW	2
VHA	cdwwork_dim	SNOMEDFunction	VIEW	2
VHA	cdwwork_dim	SNOMEDProcedure	VIEW	2
VHA	cdwwork_dim	SourceOfIncomeTest	VIEW	2
VHA	cdwwork_dim	spacekey	VIEW	2
VHA	cdwwork_dim	Specialty	VIEW	2
VHA	cdwwork_dim	Sta3n	VIEW	2
VHA	cdwwork_dim	standardmedicationroute	VIEW	2
VHA	cdwwork_dim	StandardPosition	VIEW	2
VHA	cdwwork_dim	State	VIEW	2
VHA	cdwwork_dim	StateCounty	VIEW	2
VHA	cdwwork_dim	StopCode	VIEW	2
VHA	cdwwork_dim	StopCodeClassificationException	VIEW	2
VHA	cdwwork_dim	SurgeryCancelReason	VIEW	2
VHA	cdwwork_dim	SurgeryDelayCause	VIEW	2
VHA	cdwwork_dim	SurgeryDisposition	VIEW	2
VHA	cdwwork_dim	SurgeryDispositionSynonym	VIEW	2
VHA	cdwwork_dim	SurgeryOccurrenceCategory	VIEW	2
VHA	cdwwork_dim	surgeryposition	VIEW	2
VHA	cdwwork_dim	surgerytransportdevice	VIEW	2
VHA	cdwwork_dim	SurgicalSpecialty	VIEW	2
VHA	cdwwork_dim	survey	VIEW	2
VHA	cdwwork_dim	SurveyBattery	VIEW	2
VHA	cdwwork_dim	SurveyBatteryID	VIEW	2
VHA	cdwwork_dim	SurveyChoice	VIEW	2
VHA	cdwwork_dim	SurveyChoiceType	VIEW	2
VHA	cdwwork_dim	SurveyContent	VIEW	2
VHA	cdwwork_dim	SurveyDisplay	VIEW	2
VHA	cdwwork_dim	SurveyQuestion	VIEW	2
VHA	cdwwork_dim	SurveyReport	VIEW	2
VHA	cdwwork_dim	SurveyRules	VIEW	2
VHA	cdwwork_dim	SurveyScale	VIEW	2
VHA	cdwwork_dim	SurveyScaleGroup	VIEW	2
VHA	cdwwork_dim	SurveyScoringKey	VIEW	2
VHA	cdwwork_dim	SurveySection	VIEW	2
VHA	cdwwork_dim	SurveySkippedQuestion	VIEW	2
VHA	cdwwork_dim	team	VIEW	2
VHA	cdwwork_dim	teamposition	VIEW	2
VHA	cdwwork_dim	TermCategory	VIEW	2
VHA	cdwwork_dim	TermSource	VIEW	2
VHA	cdwwork_dim	time	VIEW	2
VHA	cdwwork_dim	TIUDocumentDefinition	VIEW	2
VHA	cdwwork_dim	TIUDocumentDefinitionItem	VIEW	2
VHA	cdwwork_dim	TIUDocumentType	VIEW	2
VHA	cdwwork_dim	TIUItem	VIEW	2
VHA	cdwwork_dim	TIURole	VIEW	2
VHA	cdwwork_dim	TIUSearchCategory	VIEW	2
VHA	cdwwork_dim	TIUService	VIEW	2
VHA	cdwwork_dim	TIUSetting	VIEW	2
VHA	cdwwork_dim	TIUStandardTitle	VIEW	2
VHA	cdwwork_dim	TIUStandardTitleLOINC	VIEW	2
VHA	cdwwork_dim	TIUStatus	VIEW	2
VHA	cdwwork_dim	TIUSubjectMatterDomain	VIEW	2
VHA	cdwwork_dim	TIUTemplate	VIEW	2
VHA	cdwwork_dim	TIUTemplateBoilerplate	VIEW	2
VHA	cdwwork_dim	TIUTemplateDescription	VIEW	2
VHA	cdwwork_dim	TIUTemplateField	VIEW	2
VHA	cdwwork_dim	TIUTemplateFieldDescription	VIEW	2
VHA	cdwwork_dim	TIUTemplateItem	VIEW	2
VHA	cdwwork_dim	Topography	VIEW	2
VHA	cdwwork_dim	TreatingSpecialty	VIEW	2
VHA	cdwwork_dim	Treatment	VIEW	2
VHA	cdwwork_dim	UCUMCode	VIEW	2
VHA	cdwwork_dim	UDActivityLogReason	VIEW	2
VHA	cdwwork_dim	UserClass	VIEW	2
VHA	cdwwork_dim	UtilitySystem	VIEW	2
VHA	cdwwork_dim	Vendor	VIEW	2
VHA	cdwwork_dim	VendorContractNumber	VIEW	2
VHA	cdwwork_dim	VendorFPDSCode	VIEW	2
VHA	cdwwork_dim	VendorOwnershipType	VIEW	2
VHA	cdwwork_dim	VendorSynonym	VIEW	2
VHA	cdwwork_dim	ViewAlertParameter	VIEW	2
VHA	cdwwork_dim	VistaDomain	VIEW	2
VHA	cdwwork_dim	VistaField	VIEW	2
VHA	cdwwork_dim	VistaFieldVariablePointer	VIEW	2
VHA	cdwwork_dim	VistaFile	VIEW	2
VHA	cdwwork_dim	VistaPackage	VIEW	2
VHA	cdwwork_dim	VistaSecurityKey	VIEW	2
VHA	cdwwork_dim	VistaSecurityKeyDescription	VIEW	2
VHA	cdwwork_dim	VistASite	VIEW	2
VHA	cdwwork_dim	VitalType	VIEW	2
VHA	cdwwork_dim	VSEAdditionalResource	VIEW	2
VHA	cdwwork_dim	VSEAppointmentResource	VIEW	2
VHA	cdwwork_dim	VSEAssociatedClinic	VIEW	2
VHA	cdwwork_dim	VSECheckInStepStatus	VIEW	2
VHA	cdwwork_dim	VSEDispositionReason	VIEW	2
VHA	cdwwork_dim	WaitListLocation	VIEW	2
VHA	cdwwork_dim	WaitListSpecialtyInstitution	VIEW	2
VHA	cdwwork_dim	WaitListStopCode	VIEW	2
VHA	cdwwork_dim	WardLocation	VIEW	2
VHA	cdwwork_dim	WardLocationOoS	VIEW	2
VHA	cdwwork_dim	WardsWhichCanAssign	VIEW	2
VHA	cdwwork_dim	WHAgeRangeDefault	VIEW	2
VHA	cdwwork_dim	WHBreastTreatmentNeed	VIEW	2
VHA	cdwwork_dim	WHCaseManager	VIEW	2
VHA	cdwwork_dim	WHCaseParameter	VIEW	2
VHA	cdwwork_dim	WHCervicalTreatmentNeed	VIEW	2
VHA	cdwwork_dim	WHNotificationOutcome	VIEW	2
VHA	cdwwork_dim	WHNotificationPurpose	VIEW	2
VHA	cdwwork_dim	WHNotificationType	VIEW	2
VHA	cdwwork_dim	WHPapRegimen	VIEW	2
VHA	cdwwork_dim	WHProcedureType	VIEW	2
VHA	cdwwork_dim	WHRadiologyDiagnosisCode	VIEW	2
VHA	cdwwork_dim	WHReferralSource	VIEW	2
VHA	cdwwork_dim	WHResult	VIEW	2
VHA	cdwwork_dim	WHSnapshotReport	VIEW	2
VHA	cdwwork_dim	WorkAction	VIEW	2
VHA	cdwwork_dim	WorkOrderCode	VIEW	2
VHA	cdwwork_dim	X12278DelayReasonCode	VIEW	2
VHA	cdwwork_edis	EDISLog	VIEW	2
VHA	cdwwork_edis	EDISLogDischargeDiagnosis	VIEW	2
VHA	cdwwork_edis	EDISLogHistory	VIEW	2
VHA	cdwwork_edis	EDISOrder	VIEW	2
VHA	cdwwork_extract	extractbatch	VIEW	2
VHA	cdwwork_fee	CommunityNursingHome	VIEW	2
VHA	cdwwork_fee	FeeAuthorization	VIEW	2
VHA	cdwwork_fee	FeeAuthorizationRemarks	VIEW	2
VHA	cdwwork_fee	FeeAuthorizationRequest	VIEW	2
VHA	cdwwork_fee	FeeBatch	VIEW	2
VHA	cdwwork_fee	FeeCPTModifier	VIEW	2
VHA	cdwwork_fee	FeeInitialTreatment	VIEW	2
VHA	cdwwork_fee	FeeInpatInvoice	VIEW	2
VHA	cdwwork_fee	FeeInpatInvoice_Recent	VIEW	2
VHA	cdwwork_fee	FeeInpatInvoiceICDDiagnosis	VIEW	2
VHA	cdwwork_fee	FeeInpatInvoiceICDDiagnosis_Recent	VIEW	2
VHA	cdwwork_fee	FeeInpatInvoiceICDProcedure	VIEW	2
VHA	cdwwork_fee	FeeNotificationRequest	VIEW	2
VHA	cdwwork_fee	FeePharmacyInvoice	VIEW	2
VHA	cdwwork_fee	FeePrescription	VIEW	2
VHA	cdwwork_fee	FeeServiceProvided	VIEW	2
VHA	cdwwork_fee	FeeTravelPayment	VIEW	2
VHA	cdwwork_fee	FeeUnauthorizedClaim	VIEW	2
VHA	cdwwork_gip	ClinicalLogisticsReportServer	VIEW	2
VHA	cdwwork_gip	InventoryCaseCart	VIEW	2
VHA	cdwwork_gip	InventoryCaseCartCode	VIEW	2
VHA	cdwwork_gip	InventoryCaseCartItem	VIEW	2
VHA	cdwwork_gip	InventoryInstrumentKit	VIEW	2
VHA	cdwwork_gip	InventoryInstrumentKitItem	VIEW	2
VHA	cdwwork_gip	InventoryTransaction	VIEW	2
VHA	cdwwork_hf	HealthFactor	VIEW	2
VHA	cdwwork_ib	AccountsReceivable	VIEW	2
VHA	cdwwork_ib	AccountsReceivableComment	VIEW	2
VHA	cdwwork_ib	AccountsReceivableDescription	VIEW	2
VHA	cdwwork_ib	AccountsReceivableFiscalYear	VIEW	2
VHA	cdwwork_ib	AccountsReceivableRepayDate	VIEW	2
VHA	cdwwork_ib	AccountsReceivableTCSP	VIEW	2
VHA	cdwwork_ib	ApproveOnAppealFrom	VIEW	2
VHA	cdwwork_ib	ARTransaction	VIEW	2
VHA	cdwwork_ib	ARTransactionComment	VIEW	2
VHA	cdwwork_ib	ARTransactionDescription	VIEW	2
VHA	cdwwork_ib	ARTransactionFiscalYear	VIEW	2
VHA	cdwwork_ib	BillClaim	VIEW	2
VHA	cdwwork_ib	BillClaimCare	VIEW	2
VHA	cdwwork_ib	BillClaimCPTModifier	VIEW	2
VHA	cdwwork_ib	BillClaimDiagnosis	VIEW	2
VHA	cdwwork_ib	BillClaimInsurance	VIEW	2
VHA	cdwwork_ib	BillClaimOutpatientVisitDate	VIEW	2
VHA	cdwwork_ib	BillClaimProcedure	VIEW	2
VHA	cdwwork_ib	BillClaimProsthetics	VIEW	2
VHA	cdwwork_ib	BillClaimProvider	VIEW	2
VHA	cdwwork_ib	BillClaimRevenueCode	VIEW	2
VHA	cdwwork_ib	BillClaimRxOutpat	VIEW	2
VHA	cdwwork_ib	EDIMessage	VIEW	2
VHA	cdwwork_ib	EDITransmissionBatch	VIEW	2
VHA	cdwwork_ib	EDITransmitBill	VIEW	2
VHA	cdwwork_ib	EEOBClaim	VIEW	2
VHA	cdwwork_ib	EEOBClaimAdjustment	VIEW	2
VHA	cdwwork_ib	EEOBClaimAdjustmentReason	VIEW	2
VHA	cdwwork_ib	EEOBClaimARAmountDistribution	VIEW	2
VHA	cdwwork_ib	EEOBLineAdjGroupCode	VIEW	2
VHA	cdwwork_ib	EEOBLineAdjGroupReason	VIEW	2
VHA	cdwwork_ib	EEOBLineAdjModifier	VIEW	2
VHA	cdwwork_ib	EEOBLineAdjRemark	VIEW	2
VHA	cdwwork_ib	EEOBLineAdjustment	VIEW	2
VHA	cdwwork_ib	hospitalreview	VIEW	2
VHA	cdwwork_ib	IBAction	VIEW	2
VHA	cdwwork_ib	IBClaimsTracking	VIEW	2
VHA	cdwwork_ib	IBCopayTransaction	VIEW	2
VHA	cdwwork_ib	IBInpatientDiagnosis	VIEW	2
VHA	cdwwork_ib	IBInpatientInterimDRG	VIEW	2
VHA	cdwwork_ib	IBInpatientProvider	VIEW	2
VHA	cdwwork_ib	InsurancePenalty	VIEW	2
VHA	cdwwork_ib	InsuranceReview	VIEW	2
VHA	cdwwork_ib	ReasonForNonAcuteAdmission	VIEW	2
VHA	cdwwork_ib	ReasonForNonAcuteDay	VIEW	2
VHA	cdwwork_ib	ReasonsForDenial	VIEW	2
VHA	cdwwork_ib	ScheduledAdmission	VIEW	2
VHA	cdwwork_immun	Immunization	VIEW	2
VHA	cdwwork_immun	ImmunizationContraRefusalEvent	VIEW	2
VHA	cdwwork_inpat	Census	VIEW	2
VHA	cdwwork_inpat	Census501	VIEW	2
VHA	cdwwork_inpat	Census501Diagnosis	VIEW	2
VHA	cdwwork_inpat	Census535	VIEW	2
VHA	cdwwork_inpat	CensusDiagnosis	VIEW	2
VHA	cdwwork_inpat	CensusICDProcedure	VIEW	2
VHA	cdwwork_inpat	CensusSurgicalProcedure	VIEW	2
VHA	cdwwork_inpat	DailyCensus	VIEW	2
VHA	cdwwork_inpat	Inpatient	VIEW	2
VHA	cdwwork_inpat	Inpatient_Recent	VIEW	2
VHA	cdwwork_inpat	Inpatient501Multiple	VIEW	2
VHA	cdwwork_inpat	Inpatient501Transaction	VIEW	2
VHA	cdwwork_inpat	Inpatient501TransactionDiagnosis	VIEW	2
VHA	cdwwork_inpat	Inpatient535Multiple	VIEW	2
VHA	cdwwork_inpat	Inpatient535Transaction	VIEW	2
VHA	cdwwork_inpat	InpatientCloseout	VIEW	2
VHA	cdwwork_inpat	InpatientCPTProcedure	VIEW	2
VHA	cdwwork_inpat	InpatientDiagnosis	VIEW	2
VHA	cdwwork_inpat	InpatientDiagnosis_Recent	VIEW	2
VHA	cdwwork_inpat	InpatientDischargeDiagnosis	VIEW	2
VHA	cdwwork_inpat	InpatientFeeBasis	VIEW	2
VHA	cdwwork_inpat	InpatientFeeDiagnosis	VIEW	2
VHA	cdwwork_inpat	InpatientICDProcedure	VIEW	2
VHA	cdwwork_inpat	InpatientRelease	VIEW	2
VHA	cdwwork_inpat	InpatientSurgicalProcedure	VIEW	2
VHA	cdwwork_inpat	Lodger	VIEW	2
VHA	cdwwork_inpat	PatientTransfer	VIEW	2
VHA	cdwwork_inpat	PatientTransferDiagnosis	VIEW	2
VHA	cdwwork_inpat	PresentOnAdmission	VIEW	2
VHA	cdwwork_inpat	ProvisionalMovement	VIEW	2
VHA	cdwwork_inpat	SpecialtyTransfer	VIEW	2
VHA	cdwwork_inpat	specialtytransferdiagnosis	VIEW	2
VHA	cdwwork_labaccession	AccessionAreaNumber	VIEW	2
VHA	cdwwork_labaccession	AccessionAreaPeriod	VIEW	2
VHA	cdwwork_labaccession	AccessionTest	VIEW	2
VHA	cdwwork_labaccession	AccessionTestWorkload	VIEW	2
VHA	cdwwork_laborder	AccessionSpecimen	VIEW	2
VHA	cdwwork_laborder	AccessionSpecimenAPDescription	VIEW	2
VHA	cdwwork_laborder	AccessionSpecimenDescription	VIEW	2
VHA	cdwwork_laborder	AccessionSpecimenTest	VIEW	2
VHA	cdwwork_laborder	LabOrder	VIEW	2
VHA	cdwwork_lcustomer	allpermissions	BASE TABLE	1
VHA	cdwwork_lcustomer	lcustomer	BASE TABLE	1
VHA	cdwwork_lsv	clinicavailability	VIEW	2
VHA	cdwwork_meta	DWIndex	VIEW	2
VHA	cdwwork_meta	dwsourceattributet	VIEW	2
VHA	cdwwork_meta	dwsourceentityt	VIEW	2
VHA	cdwwork_meta	DWView	VIEW	2
VHA	cdwwork_meta	DWViewField	VIEW	2
VHA	cdwwork_meta	dwviewfieldt	VIEW	2
VHA	cdwwork_meta	DWViewForeignKey	VIEW	2
VHA	cdwwork_meta	dwviewforeignkeyt	VIEW	2
VHA	cdwwork_meta	dwviewindext	VIEW	2
VHA	cdwwork_meta	DWViewSchema	VIEW	2
VHA	cdwwork_meta	dwviewschemat	VIEW	2
VHA	cdwwork_meta	dwviewt	VIEW	2
VHA	cdwwork_meta	etltracking	VIEW	2
VHA	cdwwork_meta	filemanfield	VIEW	2
VHA	cdwwork_meta	filemanfile	VIEW	2
VHA	cdwwork_meta	SourceAttributeView	VIEW	2
VHA	cdwwork_meta	SourceEntityView	VIEW	2
VHA	cdwwork_mh	SurveyAdministration	VIEW	2
VHA	cdwwork_mh	SurveyAnswer	VIEW	2
VHA	cdwwork_mh	surveyanswertext	VIEW	2
VHA	cdwwork_mh	SurveyCRScratch	VIEW	2
VHA	cdwwork_mh	SurveyResult	VIEW	2
VHA	cdwwork_micro	AntibioticSensitivity	VIEW	2
VHA	cdwwork_micro	AntibioticSensitivityComment	VIEW	2
VHA	cdwwork_micro	BacteriologyReports	VIEW	2
VHA	cdwwork_micro	MicroAntibioticLevel	VIEW	2
VHA	cdwwork_micro	MicroAudit	VIEW	2
VHA	cdwwork_micro	Microbiology	VIEW	2
VHA	cdwwork_micro	microorderedtest	VIEW	2
VHA	cdwwork_micro	MicroSterilityResults	VIEW	2
VHA	cdwwork_micro	Mycobacteriology	VIEW	2
VHA	cdwwork_micro	MycobacteriologyReports	VIEW	2
VHA	cdwwork_micro	Mycology	VIEW	2
VHA	cdwwork_micro	MycologyReports	VIEW	2
VHA	cdwwork_micro	Parasitology	VIEW	2
VHA	cdwwork_micro	ParasitologyReports	VIEW	2
VHA	cdwwork_micro	ParasitologyStage	VIEW	2
VHA	cdwwork_micro	Virology	VIEW	2
VHA	cdwwork_micro	VirologyReports	VIEW	2
VHA	cdwwork_ndim	activedirectoryaccount	VIEW	2
VHA	cdwwork_ndim	activedirectorygroup	VIEW	2
VHA	cdwwork_ndim	activedirectorygroupmembership	VIEW	2
VHA	cdwwork_ndim	consultfactortype	VIEW	2
VHA	cdwwork_ndim	parentinstitution	VIEW	2
VHA	cdwwork_ndim	pyramiduscity	VIEW	2
VHA	cdwwork_ndim	pyramiduscounty	VIEW	2
VHA	cdwwork_ndim	pyramidusstate	VIEW	2
VHA	cdwwork_ndim	pyramiduszipcode	VIEW	2
VHA	cdwwork_ndim	pyramidvisnshape	VIEW	2
VHA	cdwwork_ndim	pyramidworldcity	VIEW	2
VHA	cdwwork_ndim	pyramidworldcontinent	VIEW	2
VHA	cdwwork_ndim	pyramidworldcountry	VIEW	2
VHA	cdwwork_ndim	pyramidworldstate	VIEW	2
VHA	cdwwork_ndim	rpcmmstaffrole	VIEW	2
VHA	cdwwork_ndim	rpcmmteam	VIEW	2
VHA	cdwwork_ndim	rpcmmteamcaretype	VIEW	2
VHA	cdwwork_ndim	rpcmmteamfocus	VIEW	2
VHA	cdwwork_ndim	rpcmmteampatientassignmentstatus	VIEW	2
VHA	cdwwork_ndim	rpcmmteamposition	VIEW	2
VHA	cdwwork_ndim	rpcmmteampositionstatusreason	VIEW	2
VHA	cdwwork_ndim	rpcmmteamrole	VIEW	2
VHA	cdwwork_ndimadr	ADRApplicationCloseReason	VIEW	2
VHA	cdwwork_ndimadr	ADRDeathNotificationSource	VIEW	2
VHA	cdwwork_ndimadr	ADREnrollCategory	VIEW	2
VHA	cdwwork_ndimadr	ADREnrollSource	VIEW	2
VHA	cdwwork_ndimadr	ADREnrollStatus	VIEW	2
VHA	cdwwork_ndimadr	adrlookuptype	VIEW	2
VHA	cdwwork_ndimadr	ADRPriorityGroup	VIEW	2
VHA	cdwwork_ndimadr	ADRPrioritySubGroup	VIEW	2
VHA	cdwwork_ndimadr	ADRReferenceType	VIEW	2
VHA	cdwwork_ndimmvi	MVIAgency	VIEW	2
VHA	cdwwork_ndimmvi	MVIAssigningAuthority	VIEW	2
VHA	cdwwork_ndimmvi	MVICountryCode	VIEW	2
VHA	cdwwork_ndimmvi	MVIDeathDocumentationType	VIEW	2
VHA	cdwwork_ndimmvi	MVIFacilityType	VIEW	2
VHA	cdwwork_ndimmvi	MVIInstitution	VIEW	2
VHA	cdwwork_ndimmvi	MVIMaritalStatus	VIEW	2
VHA	cdwwork_ndimmvi	mvipronountype	VIEW	2
VHA	cdwwork_ndimmvi	MVIReligion	VIEW	2
VHA	cdwwork_ndimmvi	mvisexualorientationtype	VIEW	2
VHA	cdwwork_ndimmvi	MVIState	VIEW	2
VHA	cdwwork_next_appt	Appointment	VIEW	4
VHA	cdwwork_next_appt	Appointment_Recent	VIEW	4
VHA	cdwwork_next_apptehr	appointment_ehr_v004	VIEW	4
VHA	cdwwork_next_cprsorder	patientevent_v018	VIEW	2
VHA	cdwwork_next_dim	cancellationreason_v005	VIEW	2
VHA	cdwwork_next_dim	cptmodifier_v014	VIEW	2
VHA	cdwwork_next_dim	electrolytes_v005	VIEW	2
VHA	cdwwork_next_dim	FacilityMovementType	VIEW	4
VHA	cdwwork_next_dim	facilitymovementtype_v033	VIEW	2
VHA	cdwwork_next_dim	federalagency_v027	VIEW	2
VHA	cdwwork_next_dim	feecheckcancellationreason_v022	VIEW	2
VHA	cdwwork_next_dim	feeconversioncategory_v003	VIEW	2
VHA	cdwwork_next_dim	feecptrvu_v003	VIEW	2
VHA	cdwwork_next_dim	feedispositioncode_v006	VIEW	2
VHA	cdwwork_next_dim	feegeographicindex_v003	VIEW	2
VHA	cdwwork_next_dim	feeletter_v006	VIEW	2
VHA	cdwwork_next_dim	feeparticipationcode_v004	VIEW	2
VHA	cdwwork_next_dim	feepurposeofvisit_v033	VIEW	2
VHA	cdwwork_next_dim	feespecialtycode_v007	VIEW	2
VHA	cdwwork_next_dim	feesuspension_v018	VIEW	2
VHA	cdwwork_next_dim	feeunauthorizedclaimdisposition_v023	VIEW	2
VHA	cdwwork_next_dim	feeunauthorizedclaimstatus_v027	VIEW	2
VHA	cdwwork_next_dim	feeunauthorizeddisapprovalreason_v016	VIEW	2
VHA	cdwwork_next_dim	feevatypeofservice_v004	VIEW	2
VHA	cdwwork_next_dim	identificationformat_v005	VIEW	2
VHA	cdwwork_next_dim	ivadditiveingredientelectrolytes_v003	VIEW	2
VHA	cdwwork_next_dim	ivadditiveingredientsynonym_v004	VIEW	2
VHA	cdwwork_next_dim	ivsolutioningredientelectrolytes_v004	VIEW	2
VHA	cdwwork_next_dim	ivsolutioningredientsynonym_v004	VIEW	2
VHA	cdwwork_next_dim	modeoftransportation_v008	VIEW	2
VHA	cdwwork_next_dim	placeofdisposition_v007	VIEW	2
VHA	cdwwork_next_dim	treatingspecialty_v053	VIEW	2
VHA	cdwwork_next_dim	vendorsocioeconomicgroup_v003	VIEW	2
VHA	cdwwork_next_ifcap	clrsreportstorage_v002	VIEW	2
VHA	cdwwork_next_ifcap	controlpointactivity_v015	VIEW	2
VHA	cdwwork_next_ifcap	controlpointactivityitem_v014	VIEW	2
VHA	cdwwork_next_ifcap	dailyobligationtransaction_v006	VIEW	2
VHA	cdwwork_next_ifcap	procurementtransaction_v013	VIEW	2
VHA	cdwwork_next_ifcap	procurementtransactionamount_v006	VIEW	2
VHA	cdwwork_next_ifcap	procurementtransactiondiscount_v003	VIEW	2
VHA	cdwwork_next_ifcap	requestworksheet_v007	VIEW	2
VHA	cdwwork_next_ndimadr	adrlookuptype_v008	VIEW	2
VHA	cdwwork_next_pcmm	patientpositionassignment_v029	VIEW	2
VHA	cdwwork_next_pcmm	patientproviderrelationship_v030	VIEW	2
VHA	cdwwork_next_pcmm	preceptorpositiontopositionassignment_v011	VIEW	2
VHA	cdwwork_next_pcmm	providerpositionassignment_v033	VIEW	2
VHA	cdwwork_next_spatient	capritemplate_v161	VIEW	2
VHA	cdwwork_next_spatient	oldcpexam_v012	VIEW	2
VHA	cdwwork_next_spatient	patientrecordflagrequestlog_v003	VIEW	2
VHA	cdwwork_next_spatient	problemlistcomment_v005	VIEW	2
VHA	cdwwork_next_spatient	surgdelaycomments_v003	VIEW	2
VHA	cdwwork_next_sstaff	purchasecard_v032	VIEW	2
VHA	cdwwork_next_sstaff	purchasecardreconciliation_v007	VIEW	2
VHA	cdwwork_next_staffsub	staffdelegatedmenuoption_v033	VIEW	2
VHA	cdwwork_next_staffsub	staffdivisionpermission_v011	VIEW	2
VHA	cdwwork_next_surg	surgeryanescaretimeblock_v004	VIEW	2
VHA	cdwwork_next_viewalert	patientviewalert_v009	VIEW	2
VHA	cdwwork_next_wh	previousdiagnosis_v008	VIEW	2
VHA	cdwwork_nonvamed	NonVAMed	VIEW	2
VHA	cdwwork_outpat	ProblemList	VIEW	2
VHA	cdwwork_outpat	VDiagnosis	VIEW	2
VHA	cdwwork_outpat	VDiagnosis_Recent	VIEW	2
VHA	cdwwork_outpat	VExam	VIEW	2
VHA	cdwwork_outpat	Visit	VIEW	2
VHA	cdwwork_outpat	Visit_Recent	VIEW	2
VHA	cdwwork_outpat	VisitLogic	VIEW	2
VHA	cdwwork_outpat	visitlogicnew	VIEW	2
VHA	cdwwork_outpat	VPatientEd	VIEW	2
VHA	cdwwork_outpat	VProcedure	VIEW	2
VHA	cdwwork_outpat	VProcedure_Recent	VIEW	2
VHA	cdwwork_outpat	VProcedureCPTModifier	VIEW	2
VHA	cdwwork_outpat	VProcedureDiagnosis	VIEW	2
VHA	cdwwork_outpat	VProvider	VIEW	2
VHA	cdwwork_outpat	VProvider_Recent	VIEW	2
VHA	cdwwork_outpat	VSkinTest	VIEW	2
VHA	cdwwork_outpat	VSkinTestDiagnosis	VIEW	2
VHA	cdwwork_outpat	VStandardCode	VIEW	2
VHA	cdwwork_outpat	Workload	VIEW	2
VHA	cdwwork_outpat	WorkloadVDiagnosis	VIEW	2
VHA	cdwwork_outpat	WorkloadVProcedure	VIEW	2
VHA	cdwwork_outpat	WorkloadVProcedureCPTModifier	VIEW	2
VHA	cdwwork_outpat	WorkloadVProcedureDiagnosis	VIEW	2
VHA	cdwwork_outpat	WorkloadVProvider	VIEW	2
VHA	cdwwork_pathology	Autopsy	VIEW	2
VHA	cdwwork_pathology	AutopsyClinicalDiagnosis	VIEW	2
VHA	cdwwork_pathology	AutopsyComment	VIEW	2
VHA	cdwwork_pathology	AutopsyOrganTissueDisease	VIEW	2
VHA	cdwwork_pathology	AutopsyOrganTissueEtiology	VIEW	2
VHA	cdwwork_pathology	AutopsyOrganTissueFunction	VIEW	2
VHA	cdwwork_pathology	autopsyorgantissuemorphology	VIEW	2
VHA	cdwwork_pathology	AutopsyOrganTissueProcedure	VIEW	2
VHA	cdwwork_pathology	AutopsyPathologicalDiagnosis	VIEW	2
VHA	cdwwork_pathology	AutopsySupplement	VIEW	2
VHA	cdwwork_pathology	AutopsySupplementDescript	VIEW	2
VHA	cdwwork_pathology	AutopsyTIUReference	VIEW	2
VHA	cdwwork_pathology	CytoDelayedReportComment	VIEW	2
VHA	cdwwork_pathology	CytoDiagnosis	VIEW	2
VHA	cdwwork_pathology	CytoGrossDescription	VIEW	2
VHA	cdwwork_pathology	cytomicroscopicexam	VIEW	2
VHA	cdwwork_pathology	CytoOpFinding	VIEW	2
VHA	cdwwork_pathology	CytoOrderedTest	VIEW	2
VHA	cdwwork_pathology	CytoOrganTissueDisease	VIEW	2
VHA	cdwwork_pathology	CytoOrganTissueEtiology	VIEW	2
VHA	cdwwork_pathology	CytoOrganTissueFunction	VIEW	2
VHA	cdwwork_pathology	CytoOrganTissueMorphology	VIEW	2
VHA	cdwwork_pathology	CytoOrganTissueProcedure	VIEW	2
VHA	cdwwork_pathology	Cytopathology	VIEW	2
VHA	cdwwork_pathology	CytoPostOpDiagnosis	VIEW	2
VHA	cdwwork_pathology	CytoPreOpDiagnosis	VIEW	2
VHA	cdwwork_pathology	cytoreportcomment	VIEW	2
VHA	cdwwork_pathology	CytoSpecimen	VIEW	2
VHA	cdwwork_pathology	CytoStainBlock	VIEW	2
VHA	cdwwork_pathology	CytoStainCytospin	VIEW	2
VHA	cdwwork_pathology	CytoStainMembrane	VIEW	2
VHA	cdwwork_pathology	CytoStainProcedure	VIEW	2
VHA	cdwwork_pathology	CytoStainSlide	VIEW	2
VHA	cdwwork_pathology	CytoSupplement	VIEW	2
VHA	cdwwork_pathology	CytoSupplementDescript	VIEW	2
VHA	cdwwork_pathology	CytoTIUReference	VIEW	2
VHA	cdwwork_pathology	ElectronMicroscopy	VIEW	2
VHA	cdwwork_pathology	EMComment	VIEW	2
VHA	cdwwork_pathology	EMDelayedComment	VIEW	2
VHA	cdwwork_pathology	EMDiagnosis	VIEW	2
VHA	cdwwork_pathology	EMGrossDescription	VIEW	2
VHA	cdwwork_pathology	EMMicroscopicExam	VIEW	2
VHA	cdwwork_pathology	EMOperativeFinding	VIEW	2
VHA	cdwwork_pathology	EMOrderedTest	VIEW	2
VHA	cdwwork_pathology	EMOrganTissueDisease	VIEW	2
VHA	cdwwork_pathology	EMOrganTissueEtiology	VIEW	2
VHA	cdwwork_pathology	EMOrganTissueFunction	VIEW	2
VHA	cdwwork_pathology	EMOrganTissueMorphology	VIEW	2
VHA	cdwwork_pathology	EMOrganTissueProcedure	VIEW	2
VHA	cdwwork_pathology	EMPostOpDiagnosis	VIEW	2
VHA	cdwwork_pathology	EMPreOpDiagnosis	VIEW	2
VHA	cdwwork_pathology	EMSpecimen	VIEW	2
VHA	cdwwork_pathology	EMSpecimenEPON	VIEW	2
VHA	cdwwork_pathology	EMSpecimenEPONProcedure	VIEW	2
VHA	cdwwork_pathology	EMSupplement	VIEW	2
VHA	cdwwork_pathology	EMSupplementDescript	VIEW	2
VHA	cdwwork_pathology	EMTIUReference	VIEW	2
VHA	cdwwork_pathology	SurgicalPathology	VIEW	2
VHA	cdwwork_pathology	SurgPathComment	VIEW	2
VHA	cdwwork_pathology	SurgPathDelayedComment	VIEW	2
VHA	cdwwork_pathology	SurgPathDiagnosis	VIEW	2
VHA	cdwwork_pathology	SurgPathFrozenSection	VIEW	2
VHA	cdwwork_pathology	surgpathgrossdescription	VIEW	2
VHA	cdwwork_pathology	SurgPathMicroscopicExam	VIEW	2
VHA	cdwwork_pathology	SurgPathOpFindings	VIEW	2
VHA	cdwwork_pathology	surgpathorderedtest	VIEW	2
VHA	cdwwork_pathology	SurgPathOrganTissueDisease	VIEW	2
VHA	cdwwork_pathology	SurgPathOrganTissueEtiology	VIEW	2
VHA	cdwwork_pathology	SurgPathOrganTissueFunction	VIEW	2
VHA	cdwwork_pathology	SurgPathOrganTissueMorphology	VIEW	2
VHA	cdwwork_pathology	surgpathorgantissueprocedure	VIEW	2
VHA	cdwwork_pathology	SurgPathPostOpDiagnosis	VIEW	2
VHA	cdwwork_pathology	surgpathpreopdiagnosis	VIEW	2
VHA	cdwwork_pathology	surgpathspecimen	VIEW	2
VHA	cdwwork_pathology	SurgPathSupplement	VIEW	2
VHA	cdwwork_pathology	SurgPathSupplementDescript	VIEW	2
VHA	cdwwork_pathology	SurgPathTIUReference	VIEW	2
VHA	cdwwork_patient	CatastrophicDisability	VIEW	2
VHA	cdwwork_patient	CatastrophicDisabilityHistory	VIEW	2
VHA	cdwwork_patient	CompActPatient	VIEW	2
VHA	cdwwork_patient	CompActPatientCare	VIEW	2
VHA	cdwwork_patient	compactpatientcareinpatient	VIEW	2
VHA	cdwwork_patient	CompActPatientCareOutpatient	VIEW	2
VHA	cdwwork_patient	enrollment	VIEW	2
VHA	cdwwork_patient	HomeTelehealth	VIEW	2
VHA	cdwwork_patient	HomeTelehealthTransaction	VIEW	2
VHA	cdwwork_patient	InsuranceBuffer	VIEW	2
VHA	cdwwork_patient	InsuranceBufferReport	VIEW	2
VHA	cdwwork_patient	InsuranceVerificationCreation	VIEW	2
VHA	cdwwork_patient	InsuranceVerificationProcessor	VIEW	2
VHA	cdwwork_patient	LabSubject	VIEW	2
VHA	cdwwork_patient	Patient	VIEW	2
VHA	cdwwork_patient	PatientBirthSex	VIEW	2
VHA	cdwwork_patient	PatientICN	VIEW	2
VHA	cdwwork_patient	PharmacyPatient	VIEW	2
VHA	cdwwork_patient	PharmacyPatientScriptalk	VIEW	2
VHA	cdwwork_patient	PreferredLanguage	VIEW	2
VHA	cdwwork_patient	PreferredPronoun	VIEW	2
VHA	cdwwork_patient	PurpleHeart	VIEW	2
VHA	cdwwork_patient	RadiologyPatient	VIEW	2
VHA	cdwwork_patient	SexualOrientation	VIEW	2
VHA	cdwwork_patient	WHPatient	VIEW	2
VHA	cdwwork_patsub	ConfidentialAddressCategory	VIEW	2
VHA	cdwwork_patsub	MeansTest	VIEW	2
VHA	cdwwork_patsub	MilitarySexualTrauma	VIEW	2
VHA	cdwwork_patsub	NoseThroatRadiumHST	VIEW	2
VHA	cdwwork_patsub	OEFOIFService	VIEW	2
VHA	cdwwork_patsub	PatientEthnicity	VIEW	2
VHA	cdwwork_patsub	PatientRace	VIEW	2
VHA	cdwwork_patsub	PatientServicePeriod	VIEW	2
VHA	cdwwork_patsub	SecondaryEligibility	VIEW	2
VHA	cdwwork_patsub	ServiceConnectedCondition	VIEW	2
VHA	cdwwork_patsub	VARatedDisability	VIEW	2
VHA	cdwwork_pcmm	patientproviders	VIEW	2
VHA	cdwwork_pcmm	patientteamassignment	VIEW	2
VHA	cdwwork_pcmm	providerftee	VIEW	2
VHA	cdwwork_pros	AppointmentWorksheet	VIEW	2
VHA	cdwwork_pros	BillingItem	VIEW	2
VHA	cdwwork_pros	MaterialUsed	VIEW	2
VHA	cdwwork_pros	PatientClothing	VIEW	2
VHA	cdwwork_pros	PatientDisability	VIEW	2
VHA	cdwwork_pros	patientletter	VIEW	2
VHA	cdwwork_pros	PatientOrder	VIEW	2
VHA	cdwwork_pros	PatientOrderICD	VIEW	2
VHA	cdwwork_pros	PatientOxygen	VIEW	2
VHA	cdwwork_pros	PatientOxygenICD	VIEW	2
VHA	cdwwork_pros	PatientOxygenItem	VIEW	2
VHA	cdwwork_pros	PatientTransaction	VIEW	2
VHA	cdwwork_pros	PatientVisit	VIEW	2
VHA	cdwwork_pros	ProstheticFollowUp	VIEW	2
VHA	cdwwork_pros	ProstheticPatient	VIEW	2
VHA	cdwwork_pros	ProstheticReissue	VIEW	2
VHA	cdwwork_pros	ProstheticReturn	VIEW	2
VHA	cdwwork_pros	Prosthetics	VIEW	2
VHA	cdwwork_pros	ProstheticsICD	VIEW	2
VHA	cdwwork_pros	ProstheticVAF	VIEW	2
VHA	cdwwork_pros	ProstheticVAFAppliance	VIEW	2
VHA	cdwwork_pros	ProstheticVAFDisability	VIEW	2
VHA	cdwwork_pros	ProstheticWorkOrder	VIEW	2
VHA	cdwwork_pros	Purchase	VIEW	2
VHA	cdwwork_pros	StockItemRecord	VIEW	2
VHA	cdwwork_pros	VehicleOfRecord	VIEW	2
VHA	cdwwork_pros	VehicleOfRecordTransaction	VIEW	2
VHA	cdwwork_rad	IrradiationInstance	VIEW	2
VHA	cdwwork_rad	NuclearMedicineExam	VIEW	2
VHA	cdwwork_rad	RadiationAbsorbedDose	VIEW	2
VHA	cdwwork_rad	RadiologyExam	VIEW	2
VHA	cdwwork_rad	RadiologyExamActivityLog	VIEW	2
VHA	cdwwork_rad	RadiologyExamContrastMedia	VIEW	2
VHA	cdwwork_rad	RadiologyExamCPTModifier	VIEW	2
VHA	cdwwork_rad	RadiologyExamMedication	VIEW	2
VHA	cdwwork_rad	RadiologyExamSecondaryDiagnosticCode	VIEW	2
VHA	cdwwork_rad	RadiologyExamStatusList	VIEW	2
VHA	cdwwork_rad	RadiologyExamTechnologist	VIEW	2
VHA	cdwwork_rad	RadiologyFilmRegistry	VIEW	2
VHA	cdwwork_rad	RadiologyNuclearMedicineOrder	VIEW	2
VHA	cdwwork_rad	RadiologyRegisteredExam	VIEW	2
VHA	cdwwork_rad	Radiopharmaceutical	VIEW	2
VHA	cdwwork_rpcmm	currentpatientproviderrelationship	VIEW	2
VHA	cdwwork_rpcmm	currentpatientteammembership	VIEW	2
VHA	cdwwork_rpcmm	currentproviderproviderrelationship	VIEW	2
VHA	cdwwork_rpcmm	currentproviderteammembership	VIEW	2
VHA	cdwwork_rpcmm	currentrpcmmproviderftee	VIEW	2
VHA	cdwwork_rpcmm	rpcmmteamstatushistory	VIEW	2
VHA	cdwwork_rpcmmraw	calculatedpatientpositionassignment	VIEW	2
VHA	cdwwork_rpcmmraw	calculatedpatientteammembership	VIEW	2
VHA	cdwwork_rpcmmraw	patientteamassignmenthistory	VIEW	2
VHA	cdwwork_rpcmmraw	patientteampositionhistory	VIEW	2
VHA	cdwwork_rpcmmraw	providerteammembershiphistory	VIEW	2
VHA	cdwwork_rpcmmraw	teampositionhistory	VIEW	2
VHA	cdwwork_rxiv	IV	VIEW	2
VHA	cdwwork_rxiv	IVActivityLog	VIEW	2
VHA	cdwwork_rxiv	IVAdditive	VIEW	2
VHA	cdwwork_rxiv	IVLabelTracking	VIEW	2
VHA	cdwwork_rxiv	IVLastRenew	VIEW	2
VHA	cdwwork_rxiv	IVProviderComment	VIEW	2
VHA	cdwwork_rxiv	IVSolution	VIEW	2
VHA	cdwwork_rxout	ActivityLog	VIEW	2
VHA	cdwwork_rxout	ActivityLogOtherComments	VIEW	2
VHA	cdwwork_rxout	eRxMedicationDispenseRequest	VIEW	2
VHA	cdwwork_rxout	eRxProcessingErrors	VIEW	2
VHA	cdwwork_rxout	eRxQuantityTiming	VIEW	2
VHA	cdwwork_rxout	eRxStatusHistory	VIEW	2
VHA	cdwwork_rxout	eRxStructuredSig	VIEW	2
VHA	cdwwork_rxout	eRxVADispenseInstructions	VIEW	2
VHA	cdwwork_rxout	eRxVAUnexpandedSig	VIEW	2
VHA	cdwwork_rxout	PendingRxOrder	VIEW	2
VHA	cdwwork_rxout	PharmacyInstructions	VIEW	2
VHA	cdwwork_rxout	ProviderComments	VIEW	2
VHA	cdwwork_rxout	RefillRequest	VIEW	2
VHA	cdwwork_rxout	RxOutpat	VIEW	2
VHA	cdwwork_rxout	RxOutpat_Recent	VIEW	2
VHA	cdwwork_rxout	RxOutpatExt	VIEW	2
VHA	cdwwork_rxout	RxOutpatFill	VIEW	2
VHA	cdwwork_rxout	RxOutpatFill_Recent	VIEW	2
VHA	cdwwork_rxout	RxOutpatMedInstructions	VIEW	2
VHA	cdwwork_rxout	RxOutpatSig	VIEW	2
VHA	cdwwork_rxout	RxOutpatSig_Recent	VIEW	2
VHA	cdwwork_rxout	VistaRefillRequest	VIEW	2
VHA	cdwwork_rxud	UDActivityLog	VIEW	2
VHA	cdwwork_rxud	UDDispenseDrug	VIEW	2
VHA	cdwwork_rxud	UDDispenseLog	VIEW	2
VHA	cdwwork_rxud	UDLastRenew	VIEW	2
VHA	cdwwork_rxud	UDPharmacyComment	VIEW	2
VHA	cdwwork_rxud	UDProviderComment	VIEW	2
VHA	cdwwork_rxud	UnitDose	VIEW	2
VHA	cdwwork_spatient	appointmentcomment	VIEW	2
VHA	cdwwork_spatient	BillClaimNode	VIEW	2
VHA	cdwwork_spatient	capritemplate	VIEW	2
VHA	cdwwork_spatient	CPAppointment	VIEW	2
VHA	cdwwork_spatient	CPExam	VIEW	2
VHA	cdwwork_spatient	CPExamCancellationComments	VIEW	2
VHA	cdwwork_spatient	CPExamRequest	VIEW	2
VHA	cdwwork_spatient	CPExamRequestClaimType	VIEW	2
VHA	cdwwork_spatient	CPExamRequestSpecialConsideration	VIEW	2
VHA	cdwwork_spatient	CPExamRequestWithClaimType	VIEW	1
VHA	cdwwork_spatient	CPExamText	VIEW	2
VHA	cdwwork_spatient	eRx2017PatientCommunication	VIEW	2
VHA	cdwwork_spatient	eRxPatient	VIEW	2
VHA	cdwwork_spatient	eRxPatientCommunication	VIEW	2
VHA	cdwwork_spatient	eRxPatientIdentification	VIEW	2
VHA	cdwwork_spatient	Form1010EZ	VIEW	2
VHA	cdwwork_spatient	HealthBenefitsRequest	VIEW	2
VHA	cdwwork_spatient	HealthBenefitsRequestRemarks	VIEW	2
VHA	cdwwork_spatient	ImplantedProsthesis	VIEW	2
VHA	cdwwork_spatient	InsuranceGroupPlan	VIEW	2
VHA	cdwwork_spatient	InsuranceGroupPlanComment	VIEW	2
VHA	cdwwork_spatient	LabReferralPatient	VIEW	2
VHA	cdwwork_spatient	LabResearchSubject	VIEW	2
VHA	cdwwork_spatient	MilitaryServiceEpisode	VIEW	2
VHA	cdwwork_spatient	MilitaryServiceEpisodeLegacy	VIEW	2
VHA	cdwwork_spatient	PatientRecordFlagAssignment	VIEW	2
VHA	cdwwork_spatient	PatientRecordFlagAssignmentDBRS	VIEW	2
VHA	cdwwork_spatient	PatientRecordFlagHistory	VIEW	2
VHA	cdwwork_spatient	PatientRecordFlagHistoryDBRS	VIEW	2
VHA	cdwwork_spatient	PatientViewAlert	VIEW	2
VHA	cdwwork_spatient	PDMPPatientQueryList	VIEW	2
VHA	cdwwork_spatient	PlaceOfBirth	VIEW	2
VHA	cdwwork_spatient	ReleaseOfInformation	VIEW	2
VHA	cdwwork_spatient	ReleaseOfInformationComment	VIEW	2
VHA	cdwwork_spatient	ReleaseOfInformationStatus	VIEW	2
VHA	cdwwork_spatient	ROINonRegisteredRequestor	VIEW	2
VHA	cdwwork_spatient	ROIRequestor	VIEW	2
VHA	cdwwork_spatient	ROIRequestorAddress	VIEW	2
VHA	cdwwork_spatient	SConsultActivityComment	VIEW	2
VHA	cdwwork_spatient	SConsultActivityComment_Recent	VIEW	2
VHA	cdwwork_spatient	SConsultReason	VIEW	2
VHA	cdwwork_spatient	SPatient	VIEW	2
VHA	cdwwork_spatient	SPatientAddress	VIEW	2
VHA	cdwwork_spatient	SPatientAlias	VIEW	2
VHA	cdwwork_spatient	SPatientBirthSex	VIEW	2
VHA	cdwwork_spatient	SPatientDisability	VIEW	2
VHA	cdwwork_spatient	SPatientGISAddress	VIEW	2
VHA	cdwwork_spatient	SPatientInsurance	VIEW	2
VHA	cdwwork_spatient	SPatientPhone	VIEW	2
VHA	cdwwork_spatient	SPatientViewAlert	VIEW	2
VHA	cdwwork_spatient	SVendor	VIEW	2
VHA	cdwwork_spatient	SViewAlertTracking	VIEW	2
VHA	cdwwork_spatient	SVSEAppointmentRequestComments	VIEW	2
VHA	cdwwork_spatient	ViewAlertTracking	VIEW	2
VHA	cdwwork_spatient	VISNPatient	VIEW	2
VHA	cdwwork_spatienttext	radiologyclinicalhistory	VIEW	2
VHA	cdwwork_spatienttext	radiologyimpressions	VIEW	2
VHA	cdwwork_spatienttext	radiologyorderholddescription	VIEW	2
VHA	cdwwork_spatienttext	radiologyreporttext	VIEW	2
VHA	cdwwork_spatienttext	rnmorderexamclinicalhistory	VIEW	2
VHA	cdwwork_sstaff	DEANumber	VIEW	2
VHA	cdwwork_sstaff	EngineeringEmployee	VIEW	2
VHA	cdwwork_sstaff	eRx2017PersonnelCommunication	VIEW	2
VHA	cdwwork_sstaff	eRxHoldingQueue	VIEW	2
VHA	cdwwork_sstaff	eRxPersonnel	VIEW	2
VHA	cdwwork_sstaff	eRxPersonnelCommunication	VIEW	2
VHA	cdwwork_sstaff	eRxPersonnelIdentification	VIEW	2
VHA	cdwwork_sstaff	FeeCHReportOfContact	VIEW	2
VHA	cdwwork_sstaff	FeeVendor	VIEW	2
VHA	cdwwork_sstaff	IBNonVAProvider	VIEW	2
VHA	cdwwork_sstaff	PrescribingProvider	VIEW	2
VHA	cdwwork_sstaff	PrescribingProviderDEANumber	VIEW	2
VHA	cdwwork_sstaff	RadiologyNuclearMedicineReport	VIEW	2
VHA	cdwwork_sstaff	SEngineeringEmployee	VIEW	2
VHA	cdwwork_sstaff	SeRxHoldingQueue	VIEW	2
VHA	cdwwork_sstaff	SFeeCHReportOfContact	VIEW	2
VHA	cdwwork_sstaff	SFeeServiceProvided	VIEW	2
VHA	cdwwork_sstaff	SFeeVendor	VIEW	2
VHA	cdwwork_sstaff	SMicroOrderedTest	VIEW	2
VHA	cdwwork_sstaff	SStaff	VIEW	2
VHA	cdwwork_staff	Staff	VIEW	2
VHA	cdwwork_staff	StaffChangeMod	VIEW	2
VHA	cdwwork_staffsub	CPRSTabPermission	VIEW	2
VHA	cdwwork_staffsub	ProviderTypeAssignment	VIEW	2
VHA	cdwwork_staffsub	SecondaryMenuOption	VIEW	2
VHA	cdwwork_staffsub	VistaDelegatedPermission	VIEW	2
VHA	cdwwork_staffsub	VistaPermission	VIEW	2
VHA	cdwwork_surg	AnesthesiaAgent	VIEW	2
VHA	cdwwork_surg	AnesthesiaBlockSite	VIEW	2
VHA	cdwwork_surg	AnesthesiaTechnique	VIEW	2
VHA	cdwwork_surg	AnesthesiaTestDose	VIEW	2
VHA	cdwwork_surg	operationsindication	VIEW	2
VHA	cdwwork_surg	ReferringPhysician	VIEW	2
VHA	cdwwork_surg	ReplacementFluidType	VIEW	2
VHA	cdwwork_surg	SurgeryAssistant	VIEW	2
VHA	cdwwork_surg	SurgeryAssistantOther	VIEW	2
VHA	cdwwork_surg	SurgeryDelay	VIEW	2
VHA	cdwwork_surg	SurgeryINTRA	VIEW	2
VHA	cdwwork_surg	SurgeryIrrigation	VIEW	2
VHA	cdwwork_surg	SurgeryMedication	VIEW	2
VHA	cdwwork_surg	SurgeryOccurrenceNonOp	VIEW	2
VHA	cdwwork_surg	SurgeryOtherPostOpDiagnosis	VIEW	2
VHA	cdwwork_surg	SurgeryOtherProcedure	VIEW	2
VHA	cdwwork_surg	SurgeryOtherProcedureCPTModifier	VIEW	2
VHA	cdwwork_surg	SurgeryOtherProcedureDiagnosis	VIEW	2
VHA	cdwwork_surg	SurgeryPOST	VIEW	2
VHA	cdwwork_surg	SurgeryPostOpDiagnosis	VIEW	2
VHA	cdwwork_surg	SurgeryPRE	VIEW	2
VHA	cdwwork_surg	SurgeryPreOpDiagnosis	VIEW	2
VHA	cdwwork_surg	SurgeryPrincipalAssociatedDiagnosis	VIEW	2
VHA	cdwwork_surg	SurgeryPrincipalAssociatedProcedure	VIEW	2
VHA	cdwwork_surg	SurgeryPrincipalCPTModifier	VIEW	2
VHA	cdwwork_surg	SurgeryPrincipalDiagnosis	VIEW	2
VHA	cdwwork_surg	SurgeryProcedureCPTModifier	VIEW	2
VHA	cdwwork_surg	SurgeryProcedureDiagnosisCode	VIEW	2
VHA	cdwwork_surg	SurgeryProcedureOccurrence	VIEW	2
VHA	cdwwork_surg	SurgeryRequiredBloodProducts	VIEW	2
VHA	cdwwork_surg	SurgeryReturnCase	VIEW	2
VHA	cdwwork_surg	SurgORCircSupport	VIEW	2
VHA	cdwwork_surg	SurgORCircSupportTime	VIEW	2
VHA	cdwwork_surg	SurgORScrubSupport	VIEW	2
VHA	cdwwork_surg	SurgORScrubSupportTime	VIEW	2
VHA	cdwwork_sveteranmvi	SMVIPerson	VIEW	2
VHA	cdwwork_sveteranmvi	SMVIPersonAlias	VIEW	2
VHA	cdwwork_sveteranmvi	SMVIPersonSiteAssociation	VIEW	2
VHA	cdwwork_tiu	TIUDocument	VIEW	2
VHA	cdwwork_tiu	TIUDocument_Recent	VIEW	2
VHA	cdwwork_tiu	TIUIncompleteRecord	VIEW	2
VHA	cdwwork_veteranadr	ADRPerson	VIEW	2
VHA	cdwwork_veteranadr	ADRPersonMerge	VIEW	2
VHA	cdwwork_veteranmvi	MVIPerson	VIEW	2
VHA	cdwwork_veteranmvi	MVIPersonPreferredPronoun	VIEW	2
VHA	cdwwork_veteranmvi	MVIPersonSexualOrientation	VIEW	2
VHA	cdwwork_veteranmvi	MVIPersonSiteAssociation	VIEW	2
VHA	cdwwork_veteranmvi	MVIPersonSiteAssocPreferredPronoun	VIEW	2
VHA	cdwwork_veteranmvi	MVIPersonSiteAssocSexualOrientation	VIEW	2
VHA	cdwwork_veteranmvi	MVIPersonType	VIEW	2
VHA	cdwwork_viewalert	SurrogateViewAlertAssignment	VIEW	2
VHA	cdwwork_viewalert	ViewAlert	VIEW	2
VHA	cdwwork_viewalert	ViewAlertParameterList	VIEW	2
VHA	cdwwork_viewalert	ViewAlertParameterListText	VIEW	2
VHA	cdwwork_viewalert	ViewAlertTrackingRecipient	VIEW	2
VHA	cdwwork_vistaerror	Inconsistency	VIEW	2
VHA	cdwwork_vistaerror	InconsistentData	VIEW	2
VHA	cdwwork_vital	VitalSign	VIEW	2
VHA	cdwwork_vital	VitalSign_Recent	VIEW	2
VHA	cdwwork_vital	VitalSignQualifier	VIEW	2
VHA	cdwwork_wh	WHLabTest	VIEW	2
VHA	cdwwork_wh	WHLactationStatus	VIEW	2
VHA	cdwwork_wh	WHLactationStatusErrorReason	VIEW	2
VHA	cdwwork_wh	WHNotification	VIEW	2
VHA	cdwwork_wh	WHPapRegimenLog	VIEW	2
VHA	cdwwork_wh	WHPregnancyLog	VIEW	2
VHA	cdwwork_wh	WHPregnancyLogContraception	VIEW	2
VHA	cdwwork_wh	WHPregnancyLogErrorReason	VIEW	2
VHA	cdwwork_wh	WHProcedure	VIEW	2
VHA	cdwwork_wh	WHProcedureAction	VIEW	2
VHA	cdwwork_wh	WHRefusal	VIEW	2
VHA	cdwwork2_allergymill	adversereaction	VIEW	2
VHA	cdwwork2_allergymill	AllergyReviewHistory	VIEW	2
VHA	cdwwork2_allergymill	personallergy	VIEW	2
VHA	cdwwork2_aoavmill	AOAVDiagnoses	VIEW	2
VHA	cdwwork2_aoavmill	AOAVEncLocationHistory	VIEW	2
VHA	cdwwork2_aoavmill	AOAVEncRiskHistory	VIEW	2
VHA	cdwwork2_aoavmill	AOAVHospitalOutcomes	VIEW	2
VHA	cdwwork2_aoavmill	AOAVICUOutcomes	VIEW	2
VHA	cdwwork2_aoavmill	AOAVICUStay	VIEW	2
VHA	cdwwork2_aoavmill	AOAVPersonEncounter	VIEW	2
VHA	cdwwork2_apmill	CaseReport	VIEW	2
VHA	cdwwork2_apmill	CaseSpecimen	VIEW	2
VHA	cdwwork2_apmill	CaseSynopticWorksheet	VIEW	2
VHA	cdwwork2_apmill	Cassette	VIEW	2
VHA	cdwwork2_apmill	CytoScreeningEvent	VIEW	2
VHA	cdwwork2_apmill	DiagCorrEvent	VIEW	2
VHA	cdwwork2_apmill	PathologyCase	VIEW	2
VHA	cdwwork2_apmill	PathSlide	VIEW	2
VHA	cdwwork2_apmill	PrefixDiagSummary	VIEW	2
VHA	cdwwork2_apmill	PrefixTask	VIEW	2
VHA	cdwwork2_apmill	ProcessingTask	VIEW	2
VHA	cdwwork2_apmill	QAInformation	VIEW	2
VHA	cdwwork2_apmill	SystemCorr	VIEW	2
VHA	cdwwork2_billingmill	Account	VIEW	2
VHA	cdwwork2_billingmill	AccountDebtor	VIEW	2
VHA	cdwwork2_billingmill	AccountTemplateRelation	VIEW	2
VHA	cdwwork2_billingmill	BatchTransaction	VIEW	2
VHA	cdwwork2_billingmill	BatchTransactionDetail	VIEW	2
VHA	cdwwork2_billingmill	BillActivity	VIEW	2
VHA	cdwwork2_billingmill	BillActivityAlias	VIEW	2
VHA	cdwwork2_billingmill	BillActivityClaim	VIEW	2
VHA	cdwwork2_billingmill	BillActivityCorsp	VIEW	2
VHA	cdwwork2_billingmill	BillActivityCorspRelation	VIEW	2
VHA	cdwwork2_billingmill	BillActivityDetail	VIEW	2
VHA	cdwwork2_billingmill	BillActivityItem	VIEW	2
VHA	cdwwork2_billingmill	BillActivityItemRelation	VIEW	2
VHA	cdwwork2_billingmill	BillActivityPayment	VIEW	2
VHA	cdwwork2_billingmill	BillActivityPendingClaim	VIEW	2
VHA	cdwwork2_billingmill	BillActivityRelation	VIEW	2
VHA	cdwwork2_billingmill	BillActivityTransaction	VIEW	2
VHA	cdwwork2_billingmill	BillBalance	VIEW	2
VHA	cdwwork2_billingmill	BillDailyBalance	VIEW	2
VHA	cdwwork2_billingmill	BilledCharge	VIEW	2
VHA	cdwwork2_billingmill	BilledChargeHealthPlan	VIEW	2
VHA	cdwwork2_billingmill	BillEncounter	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterCode	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterCollection	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterConditionCode	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterOccurrenceCode	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterStatus	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterTimeFrame	VIEW	2
VHA	cdwwork2_billingmill	BillEncounterValueCode	VIEW	2
VHA	cdwwork2_billingmill	BillHealthPlan	VIEW	2
VHA	cdwwork2_billingmill	BillProration	VIEW	2
VHA	cdwwork2_billingmill	BillRecordEditFailure	VIEW	2
VHA	cdwwork2_billingmill	billrecordeditfailuredetail	VIEW	2
VHA	cdwwork2_billingmill	BillWorkflowIssueEvent	VIEW	2
VHA	cdwwork2_billingmill	BillWorkflowQueue	VIEW	2
VHA	cdwwork2_billingmill	BillWorkflowQueueHistory	VIEW	2
VHA	cdwwork2_billingmill	ChargeActivity	VIEW	2
VHA	cdwwork2_billingmill	ChargeBatch	VIEW	2
VHA	cdwwork2_billingmill	ChargeBatchDetail	VIEW	2
VHA	cdwwork2_billingmill	ChargeEventActivity	VIEW	2
VHA	cdwwork2_billingmill	ChargeItem	VIEW	2
VHA	cdwwork2_billingmill	ChargeModification	VIEW	2
VHA	cdwwork2_billingmill	ClaimDenial	VIEW	2
VHA	cdwwork2_billingmill	ClaimDenialDetail	VIEW	2
VHA	cdwwork2_billingmill	ClaimTransaction	VIEW	2
VHA	cdwwork2_billingmill	ClaimTransactionRelation	VIEW	2
VHA	cdwwork2_billingmill	DailyBalance	VIEW	2
VHA	cdwwork2_billingmill	eligibilitytransaction	VIEW	2
VHA	cdwwork2_billingmill	GeneralLedger	VIEW	2
VHA	cdwwork2_billingmill	GLAliasAccountTypeRelation	VIEW	2
VHA	cdwwork2_billingmill	GLAliasFieldRelation	VIEW	2
VHA	cdwwork2_billingmill	GLAliasFieldResult	VIEW	2
VHA	cdwwork2_billingmill	GLBatch	VIEW	2
VHA	cdwwork2_billingmill	GLFieldMaster	VIEW	2
VHA	cdwwork2_billingmill	GLMaster	VIEW	2
VHA	cdwwork2_billingmill	GLMasterQual	VIEW	2
VHA	cdwwork2_billingmill	GLMonthEnd	VIEW	2
VHA	cdwwork2_billingmill	GLMonthSummary	VIEW	2
VHA	cdwwork2_billingmill	GLTransaction	VIEW	2
VHA	cdwwork2_billingmill	GLTransactionDetail	VIEW	2
VHA	cdwwork2_billingmill	InsurancePayor	VIEW	2
VHA	cdwwork2_billingmill	OutboundCharge	VIEW	2
VHA	cdwwork2_billingmill	PaymentPlan	VIEW	2
VHA	cdwwork2_billingmill	PaymentPlanEncounter	VIEW	2
VHA	cdwwork2_billingmill	PaymentPlanHistory	VIEW	2
VHA	cdwwork2_billingmill	PersonAccount	VIEW	2
VHA	cdwwork2_billingmill	PersonAccountRelation	VIEW	2
VHA	cdwwork2_billingmill	RevCycleDailyEncntrVisitSmry	VIEW	2
VHA	cdwwork2_billingmill	RevCycleMonthlyCensusSmry	VIEW	2
VHA	cdwwork2_billingmill	RevCycleMonthlyEncntrVisitSmry	VIEW	2
VHA	cdwwork2_billingmill	RevenueSummary	VIEW	2
VHA	cdwwork2_billingmill	sibatch	VIEW	2
VHA	cdwwork2_billingmill	sibatchevent	VIEW	2
VHA	cdwwork2_billingmill	statementschedule	VIEW	2
VHA	cdwwork2_bloodbankmill	AssignRelease	VIEW	2
VHA	cdwwork2_bloodbankmill	BBDevice	VIEW	2
VHA	cdwwork2_bloodbankmill	BBDeviceTransfer	VIEW	2
VHA	cdwwork2_bloodbankmill	BBInventoryDevice	VIEW	2
VHA	cdwwork2_bloodbankmill	BBProduct	VIEW	2
VHA	cdwwork2_bloodbankmill	BloodProduct	VIEW	2
VHA	cdwwork2_bloodbankmill	crossmatch	VIEW	2
VHA	cdwwork2_bloodbankmill	dispensereturn	VIEW	2
VHA	cdwwork2_bloodbankmill	HistoryProduct	VIEW	2
VHA	cdwwork2_bloodbankmill	HistProductEvent	VIEW	2
VHA	cdwwork2_bloodbankmill	HistSpecialTesting	VIEW	2
VHA	cdwwork2_bloodbankmill	InventoryDevice	VIEW	2
VHA	cdwwork2_bloodbankmill	InventoryTransfer	VIEW	2
VHA	cdwwork2_bloodbankmill	patientdispense	VIEW	2
VHA	cdwwork2_bloodbankmill	PersonAntibody	VIEW	2
VHA	cdwwork2_bloodbankmill	PersonAntigen	VIEW	2
VHA	cdwwork2_bloodbankmill	personbloodgroup	VIEW	2
VHA	cdwwork2_bloodbankmill	personbloodgroupresult	VIEW	2
VHA	cdwwork2_bloodbankmill	PersonRhPhenotype	VIEW	2
VHA	cdwwork2_bloodbankmill	PersonTransfusionRequirements	VIEW	2
VHA	cdwwork2_bloodbankmill	ProductAssign	VIEW	2
VHA	cdwwork2_bloodbankmill	productdestruction	VIEW	2
VHA	cdwwork2_bloodbankmill	ProductDisposition	VIEW	2
VHA	cdwwork2_bloodbankmill	ProductEvent	VIEW	2
VHA	cdwwork2_bloodbankmill	ProductModification	VIEW	2
VHA	cdwwork2_bloodbankmill	ProductNote	VIEW	2
VHA	cdwwork2_bloodbankmill	ProductReceipt	VIEW	2
VHA	cdwwork2_bloodbankmill	Quarantine	VIEW	2
VHA	cdwwork2_bloodbankmill	QuarantineRelease	VIEW	2
VHA	cdwwork2_bloodbankmill	SpecialTesting	VIEW	2
VHA	cdwwork2_bloodbankmill	Specimen	VIEW	2
VHA	cdwwork2_bloodbankmill	transfusion	VIEW	2
VHA	cdwwork2_cardiomill	CardiovascularCase	VIEW	2
VHA	cdwwork2_cardiomill	CardiovascularCaseProcedure	VIEW	2
VHA	cdwwork2_cardiomill	CardiovascularDevice	VIEW	2
VHA	cdwwork2_cardiomill	CardiovascularLesion	VIEW	2
VHA	cdwwork2_cardiomill	cvprocedure	VIEW	2
VHA	cdwwork2_cardiomill	CVProcedureAssay	VIEW	2
VHA	cdwwork2_cardiomill	cvprocedureassayschedule	VIEW	2
VHA	cdwwork2_cardiomill	cvprocedureassaystaff	VIEW	2
VHA	cdwwork2_carechartmill	clinicaldocactivity	VIEW	2
VHA	cdwwork2_carechartmill	ClinicalDocActivityConcept	VIEW	2
VHA	cdwwork2_carechartmill	ClinicalDocActivityDetail	VIEW	2
VHA	cdwwork2_carechartmill	ClinicalDocActivitySentence	VIEW	2
VHA	cdwwork2_carechartmill	ClinicalDocFacility	VIEW	2
VHA	cdwwork2_carechartmill	ClinicalDocTerm	VIEW	2
VHA	cdwwork2_carechartmill	ClinicalDocTermDetail	VIEW	2
VHA	cdwwork2_carechartmill	DCPEntityRelation	VIEW	2
VHA	cdwwork2_carechartmill	DocFormActivity	VIEW	2
VHA	cdwwork2_carechartmill	DocFormActivityStaff	VIEW	2
VHA	cdwwork2_carechartmill	ImmunizationModifier	VIEW	2
VHA	cdwwork2_carechartmill	PCAEncounterRelation	VIEW	2
VHA	cdwwork2_carechartmill	PowerChartViewPreference	VIEW	2
VHA	cdwwork2_carechartmill	SocialHistoryAction	VIEW	2
VHA	cdwwork2_carechartmill	socialhistoryactivity	VIEW	2
VHA	cdwwork2_carechartmill	SocialHistoryActivityResponse	VIEW	2
VHA	cdwwork2_carechartmill	socialhistoryassessmentcomment	VIEW	2
VHA	cdwwork2_carechartmill	SocialHistoryResponse	VIEW	2
VHA	cdwwork2_careplanmill	CarePathwayAction	VIEW	2
VHA	cdwwork2_careplanmill	CarePathwayActionDetail	VIEW	2
VHA	cdwwork2_careplanmill	CarePathwayGroupRelation	VIEW	2
VHA	cdwwork2_careplanmill	CarePathwayNode	VIEW	2
VHA	cdwwork2_careplanmill	pathway	VIEW	2
VHA	cdwwork2_careplanmill	PathwayAction	VIEW	2
VHA	cdwwork2_careplanmill	PathwayActivityComponent	VIEW	2
VHA	cdwwork2_careplanmill	pathwayvariance	VIEW	2
VHA	cdwwork2_clinicaleventmill	bmdiacquiredresult	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEAction	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEActionModifier	VIEW	2
VHA	cdwwork2_clinicaleventmill	cebloodbank	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEBloodBankAntigen	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEComment	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEComponent	VIEW	2
VHA	cdwwork2_clinicaleventmill	cedynamiclabel	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEImplant	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEIntakeOutput	VIEW	2
VHA	cdwwork2_clinicaleventmill	ceintakeoutputresult	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEInventory	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEInventoryItem	VIEW	2
VHA	cdwwork2_clinicaleventmill	CELabInterpretation	VIEW	2
VHA	cdwwork2_clinicaleventmill	CELabSpecimen	VIEW	2
VHA	cdwwork2_clinicaleventmill	CELabSpecimenTransfer	VIEW	2
VHA	cdwwork2_clinicaleventmill	cemicrobiology	VIEW	2
VHA	cdwwork2_clinicaleventmill	cemicrosusceptibility	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEMicroSusceptibilityComment	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEMicroSusceptibilityRelation	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEPharmacy	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEPharmacyDetail	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEPharmacyIdentifier	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEQueue	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEReference	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEReferenceDetail	VIEW	2
VHA	cdwwork2_clinicaleventmill	ceresult	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEResultBlob	VIEW	2
VHA	cdwwork2_clinicaleventmill	ceresultcalculation	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEResultCode	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEResultDate	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEResultGroup	VIEW	2
VHA	cdwwork2_clinicaleventmill	CEStaff	VIEW	2
VHA	cdwwork2_clinicaleventmill	ClinicalEvent	VIEW	2
VHA	cdwwork2_clinicaleventmill	EventTrack	VIEW	2
VHA	cdwwork2_clinicaleventmill	EventTrackDetail	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICCriteria	VIEW	2
VHA	cdwwork2_clinicaleventmill	icevent	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICEventLocation	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICEventLTD	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICEventTrack	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICEventTrackDetail	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICLabDetail	VIEW	2
VHA	cdwwork2_clinicaleventmill	icmedadminevent	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICMicro	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICMicroAnti	VIEW	2
VHA	cdwwork2_clinicaleventmill	icmicroevent	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICMicroOrg	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICRiskFactor	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICSpecificEvent	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICSurgeryDetail	VIEW	2
VHA	cdwwork2_clinicaleventmill	ICWoundDetail	VIEW	2
VHA	cdwwork2_clinicaltrialmill	AmendmentAlias	VIEW	2
VHA	cdwwork2_clinicaltrialmill	AmendmentDocument	VIEW	2
VHA	cdwwork2_clinicaltrialmill	AmendmentMilestone	VIEW	2
VHA	cdwwork2_clinicaltrialmill	AmendmentRevision	VIEW	2
VHA	cdwwork2_clinicaltrialmill	InvestigationAgentDevice	VIEW	2
VHA	cdwwork2_clinicaltrialmill	InvestigationDevice	VIEW	2
VHA	cdwwork2_clinicaltrialmill	InvestigationNewDrug	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientAmendmentAssign	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientBatchEnrollment	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientConsent	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientEligibilityTracking	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientPreScreenSetting	VIEW	2
VHA	cdwwork2_clinicaltrialmill	patientprotocolprescreen	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientProtocolRegistration	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientRegistrationConsent	VIEW	2
VHA	cdwwork2_clinicaltrialmill	PatientRegistrationEligibility	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolAlias	VIEW	2
VHA	cdwwork2_clinicaltrialmill	protocolamendment	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolArm	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolCohort	VIEW	2
VHA	cdwwork2_clinicaltrialmill	protocolmaster	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolMilestone	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolRegulatory	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolRoleAssign	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolStratum	VIEW	2
VHA	cdwwork2_clinicaltrialmill	ProtocolSuspension	VIEW	2
VHA	cdwwork2_ehrmlargetextmill	RVCComment	VIEW	2
VHA	cdwwork2_encmill	AbstractCodeRelation	VIEW	2
VHA	cdwwork2_encmill	AbstractRelation	VIEW	2
VHA	cdwwork2_encmill	AccidentEncounter	VIEW	2
VHA	cdwwork2_encmill	CareClarification	VIEW	2
VHA	cdwwork2_encmill	CareDocumentReview	VIEW	2
VHA	cdwwork2_encmill	CareManagementWorkflow	VIEW	2
VHA	cdwwork2_encmill	codinghistory	VIEW	2
VHA	cdwwork2_encmill	CombinedEncounter	VIEW	2
VHA	cdwwork2_encmill	CombinedEncounterDetail	VIEW	2
VHA	cdwwork2_encmill	DischargeFacilityOrganization	VIEW	2
VHA	cdwwork2_encmill	DischargeFacilityPlacement	VIEW	2
VHA	cdwwork2_encmill	DischargeFacilityRelatedFacilityType	VIEW	2
VHA	cdwwork2_encmill	DischargeFacilityService	VIEW	2
VHA	cdwwork2_encmill	DischargeFacilityServiceRelation	VIEW	2
VHA	cdwwork2_encmill	Encounter	VIEW	2
VHA	cdwwork2_encmill	EncounterAlias	VIEW	2
VHA	cdwwork2_encmill	encounterappeal	VIEW	2
VHA	cdwwork2_encmill	EncounterAssociatedPerson	VIEW	2
VHA	cdwwork2_encmill	EncounterAvoidableDay	VIEW	2
VHA	cdwwork2_encmill	EncounterCareCommunication	VIEW	2
VHA	cdwwork2_encmill	EncounterCareCommunicationRelation	VIEW	2
VHA	cdwwork2_encmill	EncounterCareManagement	VIEW	2
VHA	cdwwork2_encmill	EncounterCarePeriod	VIEW	2
VHA	cdwwork2_encmill	EncounterCarePeriodActivity	VIEW	2
VHA	cdwwork2_encmill	EncounterCarePeriodType	VIEW	2
VHA	cdwwork2_encmill	EncounterCaseManagement	VIEW	2
VHA	cdwwork2_encmill	EncounterCaseManagementProgram	VIEW	2
VHA	cdwwork2_encmill	EncounterCaseManagementRisk	VIEW	2
VHA	cdwwork2_encmill	EncounterClinicalReview	VIEW	2
VHA	cdwwork2_encmill	EncounterClinicalReviewAddendum	VIEW	2
VHA	cdwwork2_encmill	EncounterClinicalReviewResult	VIEW	2
VHA	cdwwork2_encmill	EncounterClinicalReviewSecondary	VIEW	2
VHA	cdwwork2_encmill	encountercode	VIEW	2
VHA	cdwwork2_encmill	EncounterDeniedDays	VIEW	2
VHA	cdwwork2_encmill	encounterdetail	VIEW	2
VHA	cdwwork2_encmill	EncounterDiagnosis	VIEW	2
VHA	cdwwork2_encmill	EncounterDiagnosisAction	VIEW	2
VHA	cdwwork2_encmill	encounterdrg	VIEW	2
VHA	cdwwork2_encmill	encounterdrgextension	VIEW	2
VHA	cdwwork2_encmill	EncounterEpisode	VIEW	2
VHA	cdwwork2_encmill	EncounterEpisodeActivity	VIEW	2
VHA	cdwwork2_encmill	EncounterFinancial	VIEW	2
VHA	cdwwork2_encmill	EncounterGrouping	VIEW	2
VHA	cdwwork2_encmill	EncounterHistory	VIEW	2
VHA	cdwwork2_encmill	encounterhpauthorization	VIEW	2
VHA	cdwwork2_encmill	EncounterHPBenefit	VIEW	2
VHA	cdwwork2_encmill	EncounterHPBenefitRange	VIEW	2
VHA	cdwwork2_encmill	EncounterHPCoorBenefit	VIEW	2
VHA	cdwwork2_encmill	EncounterHPEligibility	VIEW	2
VHA	cdwwork2_encmill	EncounterHPEligibilityBenefit	VIEW	2
VHA	cdwwork2_encmill	EncounterInformation	VIEW	2
VHA	cdwwork2_encmill	EncounterLeaveDays	VIEW	2
VHA	cdwwork2_encmill	EncounterLocationHistory	VIEW	2
VHA	cdwwork2_encmill	EncounterMediaRelation	VIEW	2
VHA	cdwwork2_encmill	EncounterMotherChild	VIEW	2
VHA	cdwwork2_encmill	EncounterNomenclature	VIEW	2
VHA	cdwwork2_encmill	EncounterOffer	VIEW	2
VHA	cdwwork2_encmill	encounterofferhistory	VIEW	2
VHA	cdwwork2_encmill	EncounterOrganization	VIEW	2
VHA	cdwwork2_encmill	EncounterOrganizationPostAcute	VIEW	2
VHA	cdwwork2_encmill	EncounterOrganizationRelation	VIEW	2
VHA	cdwwork2_encmill	EncounterPersonStaffGroup	VIEW	2
VHA	cdwwork2_encmill	EncounterProcedure	VIEW	2
VHA	cdwwork2_encmill	encounterproceduredetail	VIEW	2
VHA	cdwwork2_encmill	encounterproceduremodifier	VIEW	2
VHA	cdwwork2_encmill	EncounterReadmitAssess	VIEW	2
VHA	cdwwork2_encmill	EncounterRelation	VIEW	2
VHA	cdwwork2_encmill	encounterreport	VIEW	2
VHA	cdwwork2_encmill	EncounterReportTemplate	VIEW	2
VHA	cdwwork2_encmill	EncounterServiceCategoryHistory	VIEW	2
VHA	cdwwork2_encmill	EncounterStaff	VIEW	2
VHA	cdwwork2_encmill	EncounterWaitList	VIEW	2
VHA	cdwwork2_encmill	EncounterWaitListStatus	VIEW	2
VHA	cdwwork2_encmill	KioskProfile	VIEW	2
VHA	cdwwork2_encmill	MessageCenterCommunication	VIEW	2
VHA	cdwwork2_encmill	MessageCenterCommunicationRelation	VIEW	2
VHA	cdwwork2_encmill	PatEdDocument	VIEW	2
VHA	cdwwork2_encmill	PatEdDocumentActivity	VIEW	2
VHA	cdwwork2_encmill	PatEdDocumentFollowup	VIEW	2
VHA	cdwwork2_encmill	pateddocumentrelation	VIEW	2
VHA	cdwwork2_encmill	PendingEncounter	VIEW	2
VHA	cdwwork2_encmill	ProcedureAction	VIEW	2
VHA	cdwwork2_encmill	procedurestaffrelation	VIEW	2
VHA	cdwwork2_encmill	recordcompliance	VIEW	2
VHA	cdwwork2_encmill	RelatedEncounterAppeal	VIEW	2
VHA	cdwwork2_encmill	RelatedEncounterEpisode	VIEW	2
VHA	cdwwork2_encmill	TrackEventOrder	VIEW	2
VHA	cdwwork2_encmill	trackingcheckin	VIEW	2
VHA	cdwwork2_encmill	TrackingEvent	VIEW	2
VHA	cdwwork2_encmill	TrackingGroup	VIEW	2
VHA	cdwwork2_encmill	TrackingItem	VIEW	2
VHA	cdwwork2_encmill	trackinglocator	VIEW	2
VHA	cdwwork2_encmill	TrackingPreArrival	VIEW	2
VHA	cdwwork2_encmill	TrackingPreArrivalDetail	VIEW	2
VHA	cdwwork2_encmill	TrackingStaff	VIEW	2
VHA	cdwwork2_encmill	TrackingStaffDetail	VIEW	2
VHA	cdwwork2_hmmill	expectationchange	VIEW	2
VHA	cdwwork2_hmmill	ExpectationRecommendation	VIEW	2
VHA	cdwwork2_hmmill	ExpectationRecommendationAction	VIEW	2
VHA	cdwwork2_hmmill	ExpectationSeries	VIEW	2
VHA	cdwwork2_hmmill	InvitationFragment	VIEW	2
VHA	cdwwork2_hmmill	ProgramGroupRelation	VIEW	2
VHA	cdwwork2_invmill	InventoryLocationCost	VIEW	2
VHA	cdwwork2_invmill	InventoryObjectIdentifier	VIEW	2
VHA	cdwwork2_invmill	InventoryObjectIdentifierIndex	VIEW	2
VHA	cdwwork2_invmill	InventoryOnHand	VIEW	2
VHA	cdwwork2_invmill	inventoryrequisition	VIEW	2
VHA	cdwwork2_invmill	ParentItemOrganizationRelation	VIEW	2
VHA	cdwwork2_labmill	CollectionInfoQualifiers	VIEW	2
VHA	cdwwork2_labmill	ContainerEvent	VIEW	2
VHA	cdwwork2_labmill	EquationComponent	VIEW	2
VHA	cdwwork2_labmill	LabControlCheck	VIEW	2
VHA	cdwwork2_labmill	OrderLab	VIEW	2
VHA	cdwwork2_labmill	ProcedureSpecType	VIEW	2
VHA	cdwwork2_labmill	QCGroupControl	VIEW	2
VHA	cdwwork2_labmill	ResourceAccession	VIEW	2
VHA	cdwwork2_labmill	ResourceLot	VIEW	2
VHA	cdwwork2_labmill	resultcomment	VIEW	2
VHA	cdwwork2_labmill	ResultEquation	VIEW	2
VHA	cdwwork2_labmill	ResultEvent	VIEW	2
VHA	cdwwork2_labmill	ResultPerformed	VIEW	2
VHA	cdwwork2_labmill	ResultStatus	VIEW	2
VHA	cdwwork2_labmill	SpecContainer	VIEW	2
VHA	cdwwork2_labmill	SpecContainerVolume	VIEW	2
VHA	cdwwork2_largetextmill	LongBlob	VIEW	2
VHA	cdwwork2_largetextmill	LongText	VIEW	2
VHA	cdwwork2_maemill	medadministrationalert	VIEW	2
VHA	cdwwork2_maemill	medadministrationerror	VIEW	2
VHA	cdwwork2_maemill	MedAdministrationEvent	VIEW	2
VHA	cdwwork2_medordercheckmill	CustomDoseRangeCheck	VIEW	2
VHA	cdwwork2_medordercheckmill	DoseRange	VIEW	2
VHA	cdwwork2_medordercheckmill	DoseRangeCheck	VIEW	2
VHA	cdwwork2_medordercheckmill	DoseRangeCheckMedMap	VIEW	2
VHA	cdwwork2_medordercheckmill	DoseRangeCheckPremise	VIEW	2
VHA	cdwwork2_medordercheckmill	DoseRangeCheckPremiseList	VIEW	2
VHA	cdwwork2_medordercheckmill	DoseRangeCheckRelationship	VIEW	2
VHA	cdwwork2_micromill	ICOrder	VIEW	2
VHA	cdwwork2_micromill	MicrobiologyEvent	VIEW	2
VHA	cdwwork2_micromill	MicrobiologyOrder	VIEW	2
VHA	cdwwork2_micromill	microbiologyreport	VIEW	2
VHA	cdwwork2_micromill	microeventlog	VIEW	2
VHA	cdwwork2_micromill	microorganismobservation	VIEW	2
VHA	cdwwork2_micromill	SusceptibilityDetail	VIEW	2
VHA	cdwwork2_micromill	susceptibilityresult	VIEW	2
VHA	cdwwork2_micromill	tasklog	VIEW	2
VHA	cdwwork2_multummill	AllergyCategory	VIEW	2
VHA	cdwwork2_multummill	AllergyClass	VIEW	2
VHA	cdwwork2_multummill	AllergyConceptNameMap	VIEW	2
VHA	cdwwork2_multummill	AllergyDescription	VIEW	2
VHA	cdwwork2_multummill	AllergyMessage	VIEW	2
VHA	cdwwork2_multummill	AllergyText	VIEW	2
VHA	cdwwork2_multummill	ComboActiveIngredient	VIEW	2
VHA	cdwwork2_multummill	DoseForm	VIEW	2
VHA	cdwwork2_multummill	DRCGroupRelationship	VIEW	2
VHA	cdwwork2_multummill	DrugCategory	VIEW	2
VHA	cdwwork2_multummill	DrugInteraction	VIEW	2
VHA	cdwwork2_multummill	DrugInteractionSeverity	VIEW	2
VHA	cdwwork2_multummill	DuplicationDrugReference	VIEW	2
VHA	cdwwork2_multummill	DuplicationDrugSubReference	VIEW	2
VHA	cdwwork2_multummill	GenericDrug	VIEW	2
VHA	cdwwork2_multummill	InteractionDescription	VIEW	2
VHA	cdwwork2_multummill	InteractionSeverityMap	VIEW	2
VHA	cdwwork2_multummill	MainMultumDrug	VIEW	2
VHA	cdwwork2_multummill	MedBrandName	VIEW	2
VHA	cdwwork2_multummill	MedCategoryCrossReference	VIEW	2
VHA	cdwwork2_multummill	MedCrossReference	VIEW	2
VHA	cdwwork2_multummill	MedPrice	VIEW	2
VHA	cdwwork2_multummill	MedProductActiveIngredient	VIEW	2
VHA	cdwwork2_multummill	MedProductDescription	VIEW	2
VHA	cdwwork2_multummill	MedProductInnerDescription	VIEW	2
VHA	cdwwork2_multummill	MedProductRoute	VIEW	2
VHA	cdwwork2_multummill	MedProductStrength	VIEW	2
VHA	cdwwork2_multummill	MedUnit	VIEW	2
VHA	cdwwork2_multummill	MMDCSynonym	VIEW	2
VHA	cdwwork2_multummill	MorphineEquivalentDosage	VIEW	2
VHA	cdwwork2_multummill	MultumDictionary	VIEW	2
VHA	cdwwork2_multummill	MultumDrugName	VIEW	2
VHA	cdwwork2_multummill	MultumDrugNameMap	VIEW	2
VHA	cdwwork2_multummill	MultumGlobalType	VIEW	2
VHA	cdwwork2_multummill	MultumNDCOrangeBook	VIEW	2
VHA	cdwwork2_multummill	MultumNDCSource	VIEW	2
VHA	cdwwork2_multummill	MultumRxNormMap	VIEW	2
VHA	cdwwork2_multummill	NDCOrangeBook	VIEW	2
VHA	cdwwork2_multummill	NDCPackageMap	VIEW	2
VHA	cdwwork2_multummill	RxBuilderOrderCategory	VIEW	2
VHA	cdwwork2_multummill	RxBuilderOrderDoseRate	VIEW	2
VHA	cdwwork2_multummill	RxBuilderOrderTable	VIEW	2
VHA	cdwwork2_multummill	RxBuilderOrderType	VIEW	2
VHA	cdwwork2_multummill	RxBuilderRefillMap	VIEW	2
VHA	cdwwork2_multummill	TherapeuticDuplicationCategory	VIEW	2
VHA	cdwwork2_ndimmill	abstractfielddefinition	VIEW	2
VHA	cdwwork2_ndimmill	abstractfieldproperty	VIEW	2
VHA	cdwwork2_ndimmill	Address	VIEW	2
VHA	cdwwork2_ndimmill	agencyfacilityrelation	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaActionCategory	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaActionDetail	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaActionGroup	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaActionItem	VIEW	2
VHA	cdwwork2_ndimmill	anesthesiadiluent	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaFluidCategory	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaFluidDetail	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaItemDetail	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaMacroDetail	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaMedicationCategory	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaMedicationDetail	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaParameterCategory	VIEW	2
VHA	cdwwork2_ndimmill	AnesthesiaParameterDetail	VIEW	2
VHA	cdwwork2_ndimmill	aoavfacilitypreference	VIEW	2
VHA	cdwwork2_ndimmill	APCExtension	VIEW	2
VHA	cdwwork2_ndimmill	apdiagcorrdiscrepterm	VIEW	2
VHA	cdwwork2_ndimmill	apdiagcorrevalterm	VIEW	2
VHA	cdwwork2_ndimmill	apdiagcorrstudy	VIEW	2
VHA	cdwwork2_ndimmill	application	VIEW	2
VHA	cdwwork2_ndimmill	AppointmentLocation	VIEW	2
VHA	cdwwork2_ndimmill	appointmentoption	VIEW	2
VHA	cdwwork2_ndimmill	appointmentservicetype	VIEW	2
VHA	cdwwork2_ndimmill	AppointmentState	VIEW	2
VHA	cdwwork2_ndimmill	APPrefix	VIEW	2
VHA	cdwwork2_ndimmill	APPrefixGroup	VIEW	2
VHA	cdwwork2_ndimmill	APPrefixReport	VIEW	2
VHA	cdwwork2_ndimmill	APPrefixTagGroup	VIEW	2
VHA	cdwwork2_ndimmill	aptag	VIEW	2
VHA	cdwwork2_ndimmill	aptaggroup	VIEW	2
VHA	cdwwork2_ndimmill	AttributeLocationRelation	VIEW	2
VHA	cdwwork2_ndimmill	AttributeLocationRelationHistory	VIEW	2
VHA	cdwwork2_ndimmill	bbrhphenotype	VIEW	2
VHA	cdwwork2_ndimmill	BedrockDatamartCategory	VIEW	2
VHA	cdwwork2_ndimmill	benefit	VIEW	2
VHA	cdwwork2_ndimmill	billaccounttemplate	VIEW	2
VHA	cdwwork2_ndimmill	billdeliverysystem	VIEW	2
VHA	cdwwork2_ndimmill	BillDenialReason	VIEW	2
VHA	cdwwork2_ndimmill	BillFiscalPeriod	VIEW	2
VHA	cdwwork2_ndimmill	BillHoldCriteria	VIEW	2
VHA	cdwwork2_ndimmill	billholdreason	VIEW	2
VHA	cdwwork2_ndimmill	BillHPMedia	VIEW	2
VHA	cdwwork2_ndimmill	billinterface	VIEW	2
VHA	cdwwork2_ndimmill	billitem	VIEW	2
VHA	cdwwork2_ndimmill	BillItemModifier	VIEW	2
VHA	cdwwork2_ndimmill	billorganization	VIEW	2
VHA	cdwwork2_ndimmill	BillOrganizationAccount	VIEW	2
VHA	cdwwork2_ndimmill	billorganizationcollection	VIEW	2
VHA	cdwwork2_ndimmill	BillOrganizationDomain	VIEW	2
VHA	cdwwork2_ndimmill	billorganizationgroup	VIEW	2
VHA	cdwwork2_ndimmill	BillOrganizationRelation	VIEW	2
VHA	cdwwork2_ndimmill	billpaymentlocation	VIEW	2
VHA	cdwwork2_ndimmill	billqueueassign	VIEW	2
VHA	cdwwork2_ndimmill	BillRelativeValueUnit	VIEW	2
VHA	cdwwork2_ndimmill	billreporttemplate	VIEW	2
VHA	cdwwork2_ndimmill	billreporttemplateparameter	VIEW	2
VHA	cdwwork2_ndimmill	billstatementcycle	VIEW	2
VHA	cdwwork2_ndimmill	billstatementcyclemsg	VIEW	2
VHA	cdwwork2_ndimmill	billstatementcyclemsgdetail	VIEW	2
VHA	cdwwork2_ndimmill	BillStatementCycleRelation	VIEW	2
VHA	cdwwork2_ndimmill	BillStatus	VIEW	2
VHA	cdwwork2_ndimmill	billstatusreason	VIEW	2
VHA	cdwwork2_ndimmill	billtemplate	VIEW	2
VHA	cdwwork2_ndimmill	billtemplatedetail	VIEW	2
VHA	cdwwork2_ndimmill	billtransactionalias	VIEW	2
VHA	cdwwork2_ndimmill	billtransactiontypealias	VIEW	2
VHA	cdwwork2_ndimmill	billworkflowissue	VIEW	2
VHA	cdwwork2_ndimmill	billworkflowprocess	VIEW	2
VHA	cdwwork2_ndimmill	billworkloadcode	VIEW	2
VHA	cdwwork2_ndimmill	billworkloadrelation	VIEW	2
VHA	cdwwork2_ndimmill	billworkloadstandard	VIEW	2
VHA	cdwwork2_ndimmill	bookinginstruction	VIEW	2
VHA	cdwwork2_ndimmill	carecategory	VIEW	2
VHA	cdwwork2_ndimmill	CareChartDisplay	VIEW	2
VHA	cdwwork2_ndimmill	CareChartDisplayRelation	VIEW	2
VHA	cdwwork2_ndimmill	carechartdistribution	VIEW	2
VHA	cdwwork2_ndimmill	CareChartFormDefinition	VIEW	2
VHA	cdwwork2_ndimmill	CareChartFormReference	VIEW	2
VHA	cdwwork2_ndimmill	CareChartFormSection	VIEW	2
VHA	cdwwork2_ndimmill	CareChartNoteTypeList	VIEW	2
VHA	cdwwork2_ndimmill	CareChartOncCategory	VIEW	2
VHA	cdwwork2_ndimmill	CareChartOncDisease	VIEW	2
VHA	cdwwork2_ndimmill	CareChartSet	VIEW	2
VHA	cdwwork2_ndimmill	CareChartSetElement	VIEW	2
VHA	cdwwork2_ndimmill	CareChartSetSection	VIEW	2
VHA	cdwwork2_ndimmill	CareChartSetSectionRelation	VIEW	2
VHA	cdwwork2_ndimmill	carechartsettemplate	VIEW	2
VHA	cdwwork2_ndimmill	carepathway	VIEW	2
VHA	cdwwork2_ndimmill	carepathwaygroup	VIEW	2
VHA	cdwwork2_ndimmill	catalogitemrelationship	VIEW	2
VHA	cdwwork2_ndimmill	CDIACBatchClass	VIEW	2
VHA	cdwwork2_ndimmill	CDIDocumentSubtype	VIEW	2
VHA	cdwwork2_ndimmill	CDIDocumentType	VIEW	2
VHA	cdwwork2_ndimmill	CDIForm	VIEW	2
VHA	cdwwork2_ndimmill	CDIFormCriteria	VIEW	2
VHA	cdwwork2_ndimmill	cdiformfacility	VIEW	2
VHA	cdwwork2_ndimmill	cdiformfield	VIEW	2
VHA	cdwwork2_ndimmill	CDIFormFieldDetail	VIEW	2
VHA	cdwwork2_ndimmill	CDIFormRule	VIEW	2
VHA	cdwwork2_ndimmill	chartformat	VIEW	2
VHA	cdwwork2_ndimmill	ClinicalDocPattern	VIEW	2
VHA	cdwwork2_ndimmill	ClinicalNoteTemplate	VIEW	2
VHA	cdwwork2_ndimmill	CMTConcept	VIEW	2
VHA	cdwwork2_ndimmill	CMTConceptExplode	VIEW	2
VHA	cdwwork2_ndimmill	CMTConceptExtension	VIEW	2
VHA	cdwwork2_ndimmill	CMTConceptHistory	VIEW	2
VHA	cdwwork2_ndimmill	CMTConceptRelation	VIEW	2
VHA	cdwwork2_ndimmill	CMTCrossMap	VIEW	2
VHA	cdwwork2_ndimmill	CMTICD10Normalize	VIEW	2
VHA	cdwwork2_ndimmill	CMTSubset	VIEW	2
VHA	cdwwork2_ndimmill	CMTSubsetMember	VIEW	2
VHA	cdwwork2_ndimmill	CMTTermMap	VIEW	2
VHA	cdwwork2_ndimmill	CodeCDFExtension	VIEW	2
VHA	cdwwork2_ndimmill	CodeSetExtension	VIEW	2
VHA	cdwwork2_ndimmill	codevalue	VIEW	2
VHA	cdwwork2_ndimmill	codevaluealias	VIEW	2
VHA	cdwwork2_ndimmill	codevaluedomainrelation	VIEW	2
VHA	cdwwork2_ndimmill	codevalueeventrelation	VIEW	2
VHA	cdwwork2_ndimmill	codevalueextension	VIEW	2
VHA	cdwwork2_ndimmill	codevaluegroup	VIEW	2
VHA	cdwwork2_ndimmill	CodeValueNode	VIEW	2
VHA	cdwwork2_ndimmill	codevalueoutbound	VIEW	2
VHA	cdwwork2_ndimmill	codevalueset	VIEW	2
VHA	cdwwork2_ndimmill	codingaudittrigger	VIEW	2
VHA	cdwwork2_ndimmill	ComChannel	VIEW	2
VHA	cdwwork2_ndimmill	CommonDataFoundation	VIEW	2
VHA	cdwwork2_ndimmill	concept	VIEW	2
VHA	cdwwork2_ndimmill	CondExpression	VIEW	2
VHA	cdwwork2_ndimmill	CondExpressionComp	VIEW	2
VHA	cdwwork2_ndimmill	ConditionalDTA	VIEW	2
VHA	cdwwork2_ndimmill	ConsentPolicy	VIEW	2
VHA	cdwwork2_ndimmill	contract	VIEW	2
VHA	cdwwork2_ndimmill	contractline	VIEW	2
VHA	cdwwork2_ndimmill	Conversation	VIEW	2
VHA	cdwwork2_ndimmill	CVDeviceLocation	VIEW	2
VHA	cdwwork2_ndimmill	CVDeviceLocationDetail	VIEW	2
VHA	cdwwork2_ndimmill	CytoStandardReport	VIEW	2
VHA	cdwwork2_ndimmill	DataManagementFlags	VIEW	2
VHA	cdwwork2_ndimmill	DCPFormsActivityComp	VIEW	2
VHA	cdwwork2_ndimmill	DCPFormsRefInstance	VIEW	2
VHA	cdwwork2_ndimmill	defaultschedule	VIEW	2
VHA	cdwwork2_ndimmill	defaultscheduleslot	VIEW	2
VHA	cdwwork2_ndimmill	DeliveryClassQueue	VIEW	2
VHA	cdwwork2_ndimmill	discerneksrule	VIEW	2
VHA	cdwwork2_ndimmill	dischargefacility	VIEW	2
VHA	cdwwork2_ndimmill	dischargefacilityaccount	VIEW	2
VHA	cdwwork2_ndimmill	DischargeFacilityType	VIEW	2
VHA	cdwwork2_ndimmill	domainowner	VIEW	2
VHA	cdwwork2_ndimmill	drgextension	VIEW	2
VHA	cdwwork2_ndimmill	dynamicdocumentreferencetemplate	VIEW	2
VHA	cdwwork2_ndimmill	encounterplanauthorization	VIEW	2
VHA	cdwwork2_ndimmill	eventcode	VIEW	2
VHA	cdwwork2_ndimmill	eventset	VIEW	2
VHA	cdwwork2_ndimmill	EventSetCode	VIEW	2
VHA	cdwwork2_ndimmill	EventSetCodeRelation	VIEW	2
VHA	cdwwork2_ndimmill	expectationsatisfier	VIEW	2
VHA	cdwwork2_ndimmill	ExpectationSchedule	VIEW	2
VHA	cdwwork2_ndimmill	expectationstep	VIEW	2
VHA	cdwwork2_ndimmill	facility	VIEW	2
VHA	cdwwork2_ndimmill	facilityaddress	VIEW	2
VHA	cdwwork2_ndimmill	FacilityLocation	VIEW	2
VHA	cdwwork2_ndimmill	FacilityRelation	VIEW	2
VHA	cdwwork2_ndimmill	FacilitySiteType	VIEW	2
VHA	cdwwork2_ndimmill	facilitysynonymlist	VIEW	2
VHA	cdwwork2_ndimmill	FamilyHistory	VIEW	2
VHA	cdwwork2_ndimmill	FormBuilder	VIEW	2
VHA	cdwwork2_ndimmill	formbuilderbehavior	VIEW	2
VHA	cdwwork2_ndimmill	formbuildercondition	VIEW	2
VHA	cdwwork2_ndimmill	formbuilderdefinition	VIEW	2
VHA	cdwwork2_ndimmill	formbuildergroup	VIEW	2
VHA	cdwwork2_ndimmill	formbuildergroupdefinition	VIEW	2
VHA	cdwwork2_ndimmill	formbuilderitem	VIEW	2
VHA	cdwwork2_ndimmill	frequencyepoch	VIEW	2
VHA	cdwwork2_ndimmill	frequencyschedule	VIEW	2
VHA	cdwwork2_ndimmill	healthexpectation	VIEW	2
VHA	cdwwork2_ndimmill	healthplan	VIEW	2
VHA	cdwwork2_ndimmill	healthplanalias	VIEW	2
VHA	cdwwork2_ndimmill	healthplanfinancial	VIEW	2
VHA	cdwwork2_ndimmill	healthplaninformation	VIEW	2
VHA	cdwwork2_ndimmill	HIMEventExtension	VIEW	2
VHA	cdwwork2_ndimmill	HIMSystemParameter	VIEW	2
VHA	cdwwork2_ndimmill	ICCodeMap	VIEW	2
VHA	cdwwork2_ndimmill	icd10extension	VIEW	2
VHA	cdwwork2_ndimmill	icd9cmextension	VIEW	2
VHA	cdwwork2_ndimmill	ICLocationMap	VIEW	2
VHA	cdwwork2_ndimmill	InformationHistory	VIEW	2
VHA	cdwwork2_ndimmill	InventoryClassGroup	VIEW	2
VHA	cdwwork2_ndimmill	InventoryItemSource	VIEW	2
VHA	cdwwork2_ndimmill	InventoryLocator	VIEW	2
VHA	cdwwork2_ndimmill	InvitationProgram	VIEW	2
VHA	cdwwork2_ndimmill	invitationprogramgroup	VIEW	2
VHA	cdwwork2_ndimmill	InvitationWorkflow	VIEW	2
VHA	cdwwork2_ndimmill	itemclassnode	VIEW	2
VHA	cdwwork2_ndimmill	labcollectionpriority	VIEW	2
VHA	cdwwork2_ndimmill	labcontrollot	VIEW	2
VHA	cdwwork2_ndimmill	LabControlMaterial	VIEW	2
VHA	cdwwork2_ndimmill	labspecimencontainer	VIEW	2
VHA	cdwwork2_ndimmill	logicaldomaingroup	VIEW	2
VHA	cdwwork2_ndimmill	masteritem	VIEW	2
VHA	cdwwork2_ndimmill	MeasureUnits	VIEW	2
VHA	cdwwork2_ndimmill	medcompatibility	VIEW	2
VHA	cdwwork2_ndimmill	MedDispenseCategory	VIEW	2
VHA	cdwwork2_ndimmill	medfrequencyday	VIEW	2
VHA	cdwwork2_ndimmill	MedFrequencyTime	VIEW	2
VHA	cdwwork2_ndimmill	MediaType	VIEW	2
VHA	cdwwork2_ndimmill	medication	VIEW	2
VHA	cdwwork2_ndimmill	MedIngredientSet	VIEW	2
VHA	cdwwork2_ndimmill	medorderdefault	VIEW	2
VHA	cdwwork2_ndimmill	MedProductInfo	VIEW	2
VHA	cdwwork2_ndimmill	MedProductType	VIEW	2
VHA	cdwwork2_ndimmill	MedSynonymDefinition	VIEW	2
VHA	cdwwork2_ndimmill	microbiologyorganismdata	VIEW	2
VHA	cdwwork2_ndimmill	MicrobiologyResponse	VIEW	2
VHA	cdwwork2_ndimmill	MicrobiologyTask	VIEW	2
VHA	cdwwork2_ndimmill	MicrobiologyTaskDetail	VIEW	2
VHA	cdwwork2_ndimmill	MicrobiologyTaskRelation	VIEW	2
VHA	cdwwork2_ndimmill	microsusceptibilityconceptidentifier	VIEW	2
VHA	cdwwork2_ndimmill	MsgCategory	VIEW	2
VHA	cdwwork2_ndimmill	MsgColumnGroup	VIEW	2
VHA	cdwwork2_ndimmill	MsgConfigure	VIEW	2
VHA	cdwwork2_ndimmill	MsgConfigureCategory	VIEW	2
VHA	cdwwork2_ndimmill	MsgConfigureOrders	VIEW	2
VHA	cdwwork2_ndimmill	MsgConfigureUserGroup	VIEW	2
VHA	cdwwork2_ndimmill	MsgEncounterGroup	VIEW	2
VHA	cdwwork2_ndimmill	MsgEventGroup	VIEW	2
VHA	cdwwork2_ndimmill	MsgTemplateType	VIEW	2
VHA	cdwwork2_ndimmill	multumloadordercatalog	VIEW	2
VHA	cdwwork2_ndimmill	NameValuePrefs	VIEW	2
VHA	cdwwork2_ndimmill	Nomenclature	VIEW	2
VHA	cdwwork2_ndimmill	NonformularyTemplate	VIEW	2
VHA	cdwwork2_ndimmill	OENContext	VIEW	2
VHA	cdwwork2_ndimmill	OENProperty	VIEW	2
VHA	cdwwork2_ndimmill	OENSubscription	VIEW	2
VHA	cdwwork2_ndimmill	OMFDate	VIEW	2
VHA	cdwwork2_ndimmill	OntologyCodeValue	VIEW	2
VHA	cdwwork2_ndimmill	OntologyNomenclature	VIEW	2
VHA	cdwwork2_ndimmill	OrderCatalog	VIEW	2
VHA	cdwwork2_ndimmill	OrderCatalogRouting	VIEW	2
VHA	cdwwork2_ndimmill	OrderCatalogSynonym	VIEW	2
VHA	cdwwork2_ndimmill	OrderCategoryRelation	VIEW	2
VHA	cdwwork2_ndimmill	ordercomponent	VIEW	2
VHA	cdwwork2_ndimmill	OrderEntryField	VIEW	2
VHA	cdwwork2_ndimmill	OrderEntryFieldDetail	VIEW	2
VHA	cdwwork2_ndimmill	OrderEntryFormatField	VIEW	2
VHA	cdwwork2_ndimmill	OrderEntryFormatParent	VIEW	2
VHA	cdwwork2_ndimmill	OrderFormatDetail	VIEW	2
VHA	cdwwork2_ndimmill	orderformatflex	VIEW	2
VHA	cdwwork2_ndimmill	OrderFormatLineDetail	VIEW	2
VHA	cdwwork2_ndimmill	OrderPotentialDiagnosis	VIEW	2
VHA	cdwwork2_ndimmill	orderpreferencecategory	VIEW	2
VHA	cdwwork2_ndimmill	orderpreferencelist	VIEW	2
VHA	cdwwork2_ndimmill	OrderRuleDiagnosis	VIEW	2
VHA	cdwwork2_ndimmill	OrderRuleDuplicate	VIEW	2
VHA	cdwwork2_ndimmill	OrderRulePriority	VIEW	2
VHA	cdwwork2_ndimmill	ordersentence	VIEW	2
VHA	cdwwork2_ndimmill	OrderTask	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationAlias	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationAliasRelation	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationAliasSet	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationBarcode	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationBarcodeFormat	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationHealthPlan	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationName	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationPersonStaff	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationRelation	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationResourceGroup	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationResourceType	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationService	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationServiceHistory	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSet	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSetRelation	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSetType	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSubSection	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSystem	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSystemExternalService	VIEW	2
VHA	cdwwork2_ndimmill	organizationsystemoid	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSystemParameter	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSystemRelation	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationSystemServiceRelation	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationTransIdentifier	VIEW	2
VHA	cdwwork2_ndimmill	OrganizationTypeRelation	VIEW	2
VHA	cdwwork2_ndimmill	OutcomeCatalog	VIEW	2
VHA	cdwwork2_ndimmill	OutcomeCatalogCriteria	VIEW	2
VHA	cdwwork2_ndimmill	OutcomeCatalogLocation	VIEW	2
VHA	cdwwork2_ndimmill	OutputDestination	VIEW	2
VHA	cdwwork2_ndimmill	ParentItem	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemClass	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemControl	VIEW	2
VHA	cdwwork2_ndimmill	parentitemdemand	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemEquipment	VIEW	2
VHA	cdwwork2_ndimmill	parentitemidentifier	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemInterface	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemManufacturer	VIEW	2
VHA	cdwwork2_ndimmill	parentitempackagetype	VIEW	2
VHA	cdwwork2_ndimmill	parentitemprice	VIEW	2
VHA	cdwwork2_ndimmill	parentitempricehistory	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemStorage	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemSummary	VIEW	2
VHA	cdwwork2_ndimmill	ParentItemVendor	VIEW	2
VHA	cdwwork2_ndimmill	pathcatalogservicedirectory	VIEW	2
VHA	cdwwork2_ndimmill	pathinterpdata	VIEW	2
VHA	cdwwork2_ndimmill	pathwaycatalog	VIEW	2
VHA	cdwwork2_ndimmill	pathwaycatalogdescription	VIEW	2
VHA	cdwwork2_ndimmill	PathwayCatalogRelation	VIEW	2
VHA	cdwwork2_ndimmill	PathwayCatalogSynonym	VIEW	2
VHA	cdwwork2_ndimmill	pathwaycomponent	VIEW	2
VHA	cdwwork2_ndimmill	PathwayComponentCategory	VIEW	2
VHA	cdwwork2_ndimmill	PathwayComponentGroup	VIEW	2
VHA	cdwwork2_ndimmill	PathwayComponentOrder	VIEW	2
VHA	cdwwork2_ndimmill	PathwayComponentRelation	VIEW	2
VHA	cdwwork2_ndimmill	pathwaycustomnotification	VIEW	2
VHA	cdwwork2_ndimmill	pathwaycustomplan	VIEW	2
VHA	cdwwork2_ndimmill	PathwayEvidence	VIEW	2
VHA	cdwwork2_ndimmill	pathwayrule	VIEW	2
VHA	cdwwork2_ndimmill	PatientStatusControl	VIEW	2
VHA	cdwwork2_ndimmill	PCAOutcome	VIEW	2
VHA	cdwwork2_ndimmill	PCAQualityMeasure	VIEW	2
VHA	cdwwork2_ndimmill	PCAQualityMeasureTopic	VIEW	2
VHA	cdwwork2_ndimmill	PCASource	VIEW	2
VHA	cdwwork2_ndimmill	PCNoteTemplateType	VIEW	2
VHA	cdwwork2_ndimmill	PCNoteType	VIEW	2
VHA	cdwwork2_ndimmill	PCPredefinedPreference	VIEW	2
VHA	cdwwork2_ndimmill	pcpreference	VIEW	2
VHA	cdwwork2_ndimmill	PCRegimenCatalog	VIEW	2
VHA	cdwwork2_ndimmill	PCRegimenCatalogSynonym	VIEW	2
VHA	cdwwork2_ndimmill	pcviewcomponent	VIEW	2
VHA	cdwwork2_ndimmill	pcviewpreference	VIEW	2
VHA	cdwwork2_ndimmill	PersonManagementQuestion	VIEW	2
VHA	cdwwork2_ndimmill	PersonManagementQuestionnaire	VIEW	2
VHA	cdwwork2_ndimmill	PersonManagementQuestionnaireChoice	VIEW	2
VHA	cdwwork2_ndimmill	Phone	VIEW	2
VHA	cdwwork2_ndimmill	PhoneMask	VIEW	2
VHA	cdwwork2_ndimmill	PositionRoleType	VIEW	2
VHA	cdwwork2_ndimmill	PostAcuteProvider	VIEW	2
VHA	cdwwork2_ndimmill	PriceInterval	VIEW	2
VHA	cdwwork2_ndimmill	PriceIntervalItem	VIEW	2
VHA	cdwwork2_ndimmill	PriceSchedule	VIEW	2
VHA	cdwwork2_ndimmill	PriceScheduleItem	VIEW	2
VHA	cdwwork2_ndimmill	pricetier	VIEW	2
VHA	cdwwork2_ndimmill	Privilege	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeDefinition	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeDefinitionException	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeGroup	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeGroupEntry	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeGroupRelation	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeGroupType	VIEW	2
VHA	cdwwork2_ndimmill	PrivilegeRelation	VIEW	2
VHA	cdwwork2_ndimmill	ProblemDiscipline	VIEW	2
VHA	cdwwork2_ndimmill	PromptDetail	VIEW	2
VHA	cdwwork2_ndimmill	ProtocolDepartment	VIEW	2
VHA	cdwwork2_ndimmill	ProtocolGrantSponsor	VIEW	2
VHA	cdwwork2_ndimmill	ProviderTaxonomy	VIEW	2
VHA	cdwwork2_ndimmill	RadFormat	VIEW	2
VHA	cdwwork2_ndimmill	RadFormatExam	VIEW	2
VHA	cdwwork2_ndimmill	RadFormatField	VIEW	2
VHA	cdwwork2_ndimmill	RadImageClassType	VIEW	2
VHA	cdwwork2_ndimmill	RadiologyDoseModality	VIEW	2
VHA	cdwwork2_ndimmill	RadiologyExamReason	VIEW	2
VHA	cdwwork2_ndimmill	RadiologyExamReasonCatalog	VIEW	2
VHA	cdwwork2_ndimmill	RadiologyFilmSpec	VIEW	2
VHA	cdwwork2_ndimmill	radiologysnomed	VIEW	2
VHA	cdwwork2_ndimmill	RadOrderImageCategory	VIEW	2
VHA	cdwwork2_ndimmill	ReferenceText	VIEW	2
VHA	cdwwork2_ndimmill	ReferenceTextRelation	VIEW	2
VHA	cdwwork2_ndimmill	ResearchAccount	VIEW	2
VHA	cdwwork2_ndimmill	ResultsReviewHierarchy	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleAccommodation	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleAdmitSource	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleAdmitType	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleCensusEvent	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleDischargeDisposition	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleEncounterTypeClass	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleFinancialClass	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleLocation	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleMedicalService	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleMonth	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleNewbornStatus	VIEW	2
VHA	cdwwork2_ndimmill	RevCyclePatientAge	VIEW	2
VHA	cdwwork2_ndimmill	RevCycleSex	VIEW	2
VHA	cdwwork2_ndimmill	RoleTypeRelation	VIEW	2
VHA	cdwwork2_ndimmill	SCDPhraseType	VIEW	2
VHA	cdwwork2_ndimmill	SchDisplayScheme	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleClinic	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleDateSet	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleDefaultResource	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleFlex	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleInstructionList	VIEW	2
VHA	cdwwork2_ndimmill	schedulelistresource	VIEW	2
VHA	cdwwork2_ndimmill	scheduleobject	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleOrganizationSecurity	VIEW	2
VHA	cdwwork2_ndimmill	SchedulePreference	VIEW	2
VHA	cdwwork2_ndimmill	schedulereport	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleSlotGroup	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleSlotType	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleSubText	VIEW	2
VHA	cdwwork2_ndimmill	scheduletemplate	VIEW	2
VHA	cdwwork2_ndimmill	ScheduleTextLink	VIEW	2
VHA	cdwwork2_ndimmill	SchReferenceFrequency	VIEW	2
VHA	cdwwork2_ndimmill	SchResource	VIEW	2
VHA	cdwwork2_ndimmill	schresourcegroup	VIEW	2
VHA	cdwwork2_ndimmill	schresourcelist	VIEW	2
VHA	cdwwork2_ndimmill	SchResourceRole	VIEW	2
VHA	cdwwork2_ndimmill	shcategory	VIEW	2
VHA	cdwwork2_ndimmill	SHCategoryComponent	VIEW	2
VHA	cdwwork2_ndimmill	SHCategoryDefinition	VIEW	2
VHA	cdwwork2_ndimmill	SigCode	VIEW	2
VHA	cdwwork2_ndimmill	StartModel	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalDocumentType	VIEW	2
VHA	cdwwork2_ndimmill	surgicalitem	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalPreferenceCard	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalPreferenceDefault	VIEW	2
VHA	cdwwork2_ndimmill	surgicalpreferencedetail	VIEW	2
VHA	cdwwork2_ndimmill	surgicalpreferencelist	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalPreferenceSegment	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalProcedureDetail	VIEW	2
VHA	cdwwork2_ndimmill	surgicalprocedureduration	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalProcedureList	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSegment	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSegmentGroup	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSegmentGroupSequence	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSupplyClass	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSupplyDefault	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSupplyField	VIEW	2
VHA	cdwwork2_ndimmill	SurgicalSupplySegment	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetAppPreference	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCaseTrackingField	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCaseTrackingPrompt	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCaseTrackingResponse	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCaseTrackingRow	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCaseTrackingRule	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCaseTrackingType	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetCategory	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetComment	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetDocumentReference	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetEventCode	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetParameter	VIEW	2
VHA	cdwwork2_ndimmill	surginetpreference	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetPreferName	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetPrivilege	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetPrivilegeType	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetReport	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetResourceStatus	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptEvent	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptEventDetail	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptField	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptFieldDetail	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptFieldSetting	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptFilter	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptFilterDetail	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptFilterGroup	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptGroup	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptGroupRelation	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptOutput	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptPreference	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptSection	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptSectionType	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetRptTemplate	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetStaffCost	VIEW	2
VHA	cdwwork2_ndimmill	SurgiNetSurgProcedure	VIEW	2
VHA	cdwwork2_ndimmill	SystemManagement	VIEW	2
VHA	cdwwork2_ndimmill	Term	VIEW	2
VHA	cdwwork2_ndimmill	TimeFrame	VIEW	2
VHA	cdwwork2_ndimmill	TimeSchemeWindow	VIEW	2
VHA	cdwwork2_ndimmill	TimeZone	VIEW	2
VHA	cdwwork2_ndimmill	Track	VIEW	2
VHA	cdwwork2_ndimmill	TrackEvent	VIEW	2
VHA	cdwwork2_ndimmill	trackprearrivalfield	VIEW	2
VHA	cdwwork2_ndimmill	TransmitParameter	VIEW	2
VHA	cdwwork2_ndimmill	UserDefinedDetail	VIEW	2
VHA	cdwwork2_ndimmill	VendorCustomerAccount	VIEW	2
VHA	cdwwork2_ndimmill	VendorParentItem	VIEW	2
VHA	cdwwork2_ndimmill	vendorpriceschedule	VIEW	2
VHA	cdwwork2_ndimmill	WardBed	VIEW	2
VHA	cdwwork2_ndimmill	WardRoom	VIEW	2
VHA	cdwwork2_ndimmill	WardUnit	VIEW	2
VHA	cdwwork2_ndimmill	workstation	VIEW	2
VHA	cdwwork2_ndimmill	WPTemplate	VIEW	2
VHA	cdwwork2_ndimmill	WVEventSet	VIEW	2
VHA	cdwwork2_ndimmill	WVEventSetItem	VIEW	2
VHA	cdwwork2_ndimmill	WVEventSetSection	VIEW	2
VHA	cdwwork2_next_clinicaleventmill	event_v003	VIEW	2
VHA	cdwwork2_next_ndimmill	carechartformsectionref_v003	VIEW	2
VHA	cdwwork2_next_ndimmill	dcpformsreference_v002	VIEW	2
VHA	cdwwork2_next_ndimmill	pathwayrule_v005	VIEW	2
VHA	cdwwork2_oncomill	OncologyFormActivity	VIEW	2
VHA	cdwwork2_ordermill	OrderActionDetail	VIEW	2
VHA	cdwwork2_ordermill	OrderComment	VIEW	2
VHA	cdwwork2_ordermill	OrderCompliance	VIEW	2
VHA	cdwwork2_ordermill	OrderComplianceDetail	VIEW	2
VHA	cdwwork2_ordermill	orderdetail	VIEW	2
VHA	cdwwork2_ordermill	OrderDiagnosis	VIEW	2
VHA	cdwwork2_ordermill	orderingredient	VIEW	2
VHA	cdwwork2_ordermill	OrderNotification	VIEW	2
VHA	cdwwork2_ordermill	OrderProposal	VIEW	2
VHA	cdwwork2_ordermill	OrderRecon	VIEW	2
VHA	cdwwork2_ordermill	OrderReconDetail	VIEW	2
VHA	cdwwork2_ordermill	OrderRelation	VIEW	2
VHA	cdwwork2_ordermill	OrderRouting	VIEW	2
VHA	cdwwork2_ordermill	OrderTaskAssay	VIEW	2
VHA	cdwwork2_ordermill	OrderTaskReference	VIEW	2
VHA	cdwwork2_ordermill	OrderTaskResponse	VIEW	2
VHA	cdwwork2_ordermill	OrderTaskStaffRole	VIEW	2
VHA	cdwwork2_ordermill	PersonOrder	VIEW	2
VHA	cdwwork2_ordermill	TaskActivity	VIEW	2
VHA	cdwwork2_ordermill	TaskActivityAssignment	VIEW	2
VHA	cdwwork2_ordermill	TaskActivityReference	VIEW	2
VHA	cdwwork2_ordermill	taskrelation	VIEW	2
VHA	cdwwork2_pathologymill	AccessionAssign	VIEW	2
VHA	cdwwork2_pathologymill	AccessionAssignPool	VIEW	2
VHA	cdwwork2_pathologymill	AccessionOrder	VIEW	2
VHA	cdwwork2_pathologymill	AccessionSetup	VIEW	2
VHA	cdwwork2_pathologymill	AdvancedDelta	VIEW	2
VHA	cdwwork2_pathologymill	AlphaResponseRule	VIEW	2
VHA	cdwwork2_pathologymill	AlphaResponses	VIEW	2
VHA	cdwwork2_pathologymill	AlphaResponsesCategory	VIEW	2
VHA	cdwwork2_pathologymill	assayprocessing	VIEW	2
VHA	cdwwork2_pathologymill	AssayResourceList	VIEW	2
VHA	cdwwork2_pathologymill	ConceptIdentifierData	VIEW	2
VHA	cdwwork2_pathologymill	DiscreteTaskAssay	VIEW	2
VHA	cdwwork2_pathologymill	OrderCatalogResourceList	VIEW	2
VHA	cdwwork2_pathologymill	OrderContainer	VIEW	2
VHA	cdwwork2_pathologymill	OrderServiceResourceContainer	VIEW	2
VHA	cdwwork2_pathologymill	PathologyAccession	VIEW	2
VHA	cdwwork2_pathologymill	ProfileTask	VIEW	2
VHA	cdwwork2_pathologymill	promptresult	VIEW	2
VHA	cdwwork2_pathologymill	RefRangeFactor	VIEW	2
VHA	cdwwork2_pathologymill	RefRangeFactorRule	VIEW	2
VHA	cdwwork2_pathologymill	RelatedAssay	VIEW	2
VHA	cdwwork2_pathologymill	UtilizationManagementSummary	VIEW	2
VHA	cdwwork2_pctmill	PatientCareTeam	VIEW	2
VHA	cdwwork2_pharmacymill	DispenseDetail	VIEW	2
VHA	cdwwork2_pharmacymill	DispenseHistory	VIEW	2
VHA	cdwwork2_pharmacymill	DispenseHistoryMed	VIEW	2
VHA	cdwwork2_pharmacymill	DispenseHistoryStatus	VIEW	2
VHA	cdwwork2_pharmacymill	FillBatch	VIEW	2
VHA	cdwwork2_pharmacymill	FillBatchHistory	VIEW	2
VHA	cdwwork2_pharmacymill	FillCycle	VIEW	2
VHA	cdwwork2_pharmacymill	FillCycleBatch	VIEW	2
VHA	cdwwork2_pharmacymill	medcosthistory	VIEW	2
VHA	cdwwork2_pharmacymill	MedDispense	VIEW	2
VHA	cdwwork2_pharmacymill	meddispenseflexmethod	VIEW	2
VHA	cdwwork2_pharmacymill	MedDispenseOrder	VIEW	2
VHA	cdwwork2_pharmacymill	MedFlexObject	VIEW	2
VHA	cdwwork2_pharmacymill	MedFormularyIdentifier	VIEW	2
VHA	cdwwork2_pharmacymill	MedOrderProduct	VIEW	2
VHA	cdwwork2_pharmacymill	OrderFormularyStatusRelation	VIEW	2
VHA	cdwwork2_pharmacymill	pharmacyfillrun	VIEW	2
VHA	cdwwork2_pharmacymill	PharmacyOrderInfoDispense	VIEW	2
VHA	cdwwork2_pharmacymill	pharmacyorderinfoinstruction	VIEW	2
VHA	cdwwork2_pharmacymill	pharmacyorderinfopatient	VIEW	2
VHA	cdwwork2_pharmacymill	PharmacyRange	VIEW	2
VHA	cdwwork2_pharmacymill	PrescriptionStatus	VIEW	2
VHA	cdwwork2_pharmacymill	RxClaim	VIEW	2
VHA	cdwwork2_pharmacymill	rxclaimresponse	VIEW	2
VHA	cdwwork2_pharmacymill	RxMedCopayTierHistory	VIEW	2
VHA	cdwwork2_pharmacymill	rxmedorderrequest	VIEW	2
VHA	cdwwork2_pharmacymill	RxMedProductDescription	VIEW	2
VHA	cdwwork2_pharmacymill	RxSuspendActLog	VIEW	2
VHA	cdwwork2_pharmacymill	RxSuspendActLogDetail	VIEW	2
VHA	cdwwork2_problemmill	problem	VIEW	2
VHA	cdwwork2_problemmill	ProblemAction	VIEW	2
VHA	cdwwork2_problemmill	ProblemEntity	VIEW	2
VHA	cdwwork2_problemmill	ProblemPersonStaff	VIEW	2
VHA	cdwwork2_radmill	MammoAssessmentRelation	VIEW	2
VHA	cdwwork2_radmill	MammoAssessmentSeries	VIEW	2
VHA	cdwwork2_radmill	MammoBreastPathology	VIEW	2
VHA	cdwwork2_radmill	MammoBreastPathologyDetail	VIEW	2
VHA	cdwwork2_radmill	MammoBreastResult	VIEW	2
VHA	cdwwork2_radmill	MammoExamDetail	VIEW	2
VHA	cdwwork2_radmill	MammoExamReason	VIEW	2
VHA	cdwwork2_radmill	MammoExamStaff	VIEW	2
VHA	cdwwork2_radmill	MammoExamSupplement	VIEW	2
VHA	cdwwork2_radmill	MammoFollowUp	VIEW	2
VHA	cdwwork2_radmill	Mammography	VIEW	2
VHA	cdwwork2_radmill	MammoLetter	VIEW	2
VHA	cdwwork2_radmill	MammoNotification	VIEW	2
VHA	cdwwork2_radmill	MammoRecommend	VIEW	2
VHA	cdwwork2_radmill	MammoRecommendSeries	VIEW	2
VHA	cdwwork2_radmill	MammoRiskFactor	VIEW	2
VHA	cdwwork2_radmill	procedureclassification	VIEW	2
VHA	cdwwork2_radmill	radexam	VIEW	2
VHA	cdwwork2_radmill	RadExamEncounter	VIEW	2
VHA	cdwwork2_radmill	radexamstaff	VIEW	2
VHA	cdwwork2_radmill	RadiologyBill	VIEW	2
VHA	cdwwork2_radmill	RadiologyDoseScan	VIEW	2
VHA	cdwwork2_radmill	RadiologyDoseScanOrder	VIEW	2
VHA	cdwwork2_radmill	RadiologyMedication	VIEW	2
VHA	cdwwork2_radmill	RadiologyMedicationDetail	VIEW	2
VHA	cdwwork2_radmill	RadiologyMedicationField	VIEW	2
VHA	cdwwork2_radmill	radiologyorder	VIEW	2
VHA	cdwwork2_radmill	RadiologyReport	VIEW	2
VHA	cdwwork2_radmill	RadiologyReportDetail	VIEW	2
VHA	cdwwork2_radmill	RadiologyReportStaff	VIEW	2
VHA	cdwwork2_radmill	RadiologyTechOrderComment	VIEW	2
VHA	cdwwork2_radmill	RadPullList	VIEW	2
VHA	cdwwork2_schedmill	AppointmentBook	VIEW	2
VHA	cdwwork2_schedmill	AppointmentBookList	VIEW	2
VHA	cdwwork2_schedmill	AppointmentDefinition	VIEW	2
VHA	cdwwork2_schedmill	AppointmentSchedule	VIEW	2
VHA	cdwwork2_schedmill	AppointmentTypeSynonym	VIEW	2
VHA	cdwwork2_schedmill	ResourceGroupList	VIEW	2
VHA	cdwwork2_schedmill	scheduleaction	VIEW	2
VHA	cdwwork2_schedmill	ScheduleApplicationList	VIEW	2
VHA	cdwwork2_schedmill	ScheduleAppointment	VIEW	2
VHA	cdwwork2_schedmill	ScheduleAppointmentOrder	VIEW	2
VHA	cdwwork2_schedmill	ScheduleAppointmentOrderCatalogSynonym	VIEW	2
VHA	cdwwork2_schedmill	ScheduleAssociation	VIEW	2
VHA	cdwwork2_schedmill	ScheduleBooking	VIEW	2
VHA	cdwwork2_schedmill	ScheduleDateComment	VIEW	2
VHA	cdwwork2_schedmill	ScheduleDefaultApplication	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEncounter	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEntry	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEvent	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEventAction	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEventAttachment	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEventComment	VIEW	2
VHA	cdwwork2_schedmill	ScheduleEventDetail	VIEW	2
VHA	cdwwork2_schedmill	ScheduleFrequency	VIEW	2
VHA	cdwwork2_schedmill	ScheduleListRole	VIEW	2
VHA	cdwwork2_schedmill	ScheduleListSlot	VIEW	2
VHA	cdwwork2_schedmill	ScheduleLocation	VIEW	2
VHA	cdwwork2_schedmill	ScheduleLock	VIEW	2
VHA	cdwwork2_schedmill	ScheduleOrderLocation	VIEW	2
VHA	cdwwork2_schedmill	ScheduleOrderRole	VIEW	2
VHA	cdwwork2_schedmill	SchedulePatientEvent	VIEW	2
VHA	cdwwork2_schedmill	ScheduleRecurrenceEvent	VIEW	2
VHA	cdwwork2_schedmill	ScheduleSecurity	VIEW	2
VHA	cdwwork2_schedmill	ScheduleSlotGroupList	VIEW	2
VHA	cdwwork2_schedmill	ScheduleSubList	VIEW	2
VHA	cdwwork2_sstaffmill	OrderAlias	VIEW	2
VHA	cdwwork2_sstaffmill	orderproposalnotification	VIEW	2
VHA	cdwwork2_sstaffmill	PharmacyOrderInfo	VIEW	2
VHA	cdwwork2_sstaffmill	PharmacyOrderInfoStaff	VIEW	2
VHA	cdwwork2_sstaffmill	RxConnection	VIEW	2
VHA	cdwwork2_sstaffmill	rxprescriptionmessage	VIEW	2
VHA	cdwwork2_sstaffmill	RxRefillHistory	VIEW	2
VHA	cdwwork2_sstaffmill	rxrefilltrackhistory	VIEW	2
VHA	cdwwork2_sstaffmill	RxRequest	VIEW	2
VHA	cdwwork2_sstaffmill	SPersonStaff	VIEW	2
VHA	cdwwork2_sstaffmill	SPersonStaffAlias	VIEW	2
VHA	cdwwork2_sstaffmill	SPersonStaffCredential	VIEW	2
VHA	cdwwork2_sstaffmill	SStaffTaskEmail	VIEW	2
VHA	cdwwork2_staffmill	OrganizationAttribute	VIEW	2
VHA	cdwwork2_staffmill	PersonStaff	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffDataChildRelation	VIEW	2
VHA	cdwwork2_staffmill	personstaffdatarelation	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffGroup	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffGroupOrganization	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffGroupPool	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffGroupRelation	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffGroupTeamRelation	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffInformation	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffOrganizationRelation	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffOrganizationType	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffRelation	VIEW	2
VHA	cdwwork2_staffmill	personstaffroletype	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffSpecialtyLocation	VIEW	2
VHA	cdwwork2_staffmill	PersonStaffSpecialtyRelation	VIEW	2
VHA	cdwwork2_staffmill	ProviderTaxonomyRelation	VIEW	2
VHA	cdwwork2_staffmill	Referral	VIEW	2
VHA	cdwwork2_staffmill	ReferralAction	VIEW	2
VHA	cdwwork2_staffmill	referralcustom	VIEW	2
VHA	cdwwork2_staffmill	ReferralDocument	VIEW	2
VHA	cdwwork2_staffmill	referralentityrelation	VIEW	2
VHA	cdwwork2_staffmill	ReferralHistory	VIEW	2
VHA	cdwwork2_staffmill	ReferralHPAuthorizationRelation	VIEW	2
VHA	cdwwork2_staffmill	referralmoniker	VIEW	2
VHA	cdwwork2_staffmill	ReferralPersonHPRelation	VIEW	2
VHA	cdwwork2_surgmill	anesthesiaaction	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaActionItemDetail	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaCaseAttribute	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaFluid	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaFluidAdministration	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaFluidAdminItem	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaItem	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaItemUsage	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaMacro	VIEW	2
VHA	cdwwork2_surgmill	anesthesiamedadministration	VIEW	2
VHA	cdwwork2_surgmill	anesthesiamedadminitem	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaMedication	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaParameter	VIEW	2
VHA	cdwwork2_surgmill	anesthesiaparametermonitor	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaParameterValue	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaRecord	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaRecordStatus	VIEW	2
VHA	cdwwork2_surgmill	AnesthesiaStaffActivity	VIEW	2
VHA	cdwwork2_surgmill	Perioperative	VIEW	2
VHA	cdwwork2_surgmill	PerioperativeHeader	VIEW	2
VHA	cdwwork2_surgmill	SurgeryImplant	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCase	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseAppointment	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseCart	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseCartList	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseCPTProcedure	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseResources	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseStaff	VIEW	2
VHA	cdwwork2_surgmill	SurgicalCaseTime	VIEW	2
VHA	cdwwork2_surgmill	SurgicalDelay	VIEW	2
VHA	cdwwork2_surgmill	SurgicalForm	VIEW	2
VHA	cdwwork2_surgmill	SurgicalReferenceGroupAction	VIEW	2
VHA	cdwwork2_surgmill	SurgicalSignature	VIEW	2
VHA	cdwwork2_surgmill	SurgicalStaff	VIEW	2
VHA	cdwwork2_surgmill	SurgicalStaffAvailability	VIEW	2
VHA	cdwwork2_surgmill	SurgicalTeam	VIEW	2
VHA	cdwwork2_surgmill	SurgProcedure	VIEW	2
VHA	cdwwork2_surgmill	SurgProcedureGroup	VIEW	2
VHA	cdwwork2_surgmill	SurgProcedureGroupDetail	VIEW	2
VHA	cdwwork2_surgmill	SurgProcedureModifier	VIEW	2
VHA	cdwwork2_surgmill	SurgProcedureSegment	VIEW	2
VHA	cdwwork2_sveteranmill	EncounterHealthPlan	VIEW	2
VHA	cdwwork2_sveteranmill	medadministrationpatienterror	VIEW	2
VHA	cdwwork2_sveteranmill	ROIRequester	VIEW	2
VHA	cdwwork2_sveteranmill	RxRequestDemographics	VIEW	2
VHA	cdwwork2_sveteranmill	SPerson	VIEW	2
VHA	cdwwork2_sveteranmill	SPersonAddress	VIEW	2
VHA	cdwwork2_sveteranmill	SPersonAlias	VIEW	2
VHA	cdwwork2_sveteranmill	SPersonAliasHistory	VIEW	2
VHA	cdwwork2_sveteranmill	spersonflexiblehistory	VIEW	2
VHA	cdwwork2_sveteranmill	SPersonHealthPlanRelation	VIEW	2
VHA	cdwwork2_sveteranmill	SPersonName	VIEW	2
VHA	cdwwork2_sveteranmill	SPersonPhone	VIEW	2
VHA	cdwwork2_sveteranmill	spersonrelation	VIEW	2
VHA	cdwwork2_sveteranmill	spersonstaffmemberrelation	VIEW	2
VHA	cdwwork2_sveteranmill	SPregnancyChild	VIEW	2
VHA	cdwwork2_systemmill	omfapplncontextdaysummary	VIEW	2
VHA	cdwwork2_veteranmill	ERMPostDocumentReference	VIEW	2
VHA	cdwwork2_veteranmill	HistoryTracking	VIEW	2
VHA	cdwwork2_veteranmill	Person	VIEW	2
VHA	cdwwork2_veteranmill	personalias	VIEW	2
VHA	cdwwork2_veteranmill	personcodevalue	VIEW	2
VHA	cdwwork2_veteranmill	PersonCombine	VIEW	2
VHA	cdwwork2_veteranmill	PersonCombineAudit	VIEW	2
VHA	cdwwork2_veteranmill	PersonConsent	VIEW	2
VHA	cdwwork2_veteranmill	PersonDesignation	VIEW	2
VHA	cdwwork2_veteranmill	persondesignationhistory	VIEW	2
VHA	cdwwork2_veteranmill	PersonGroupRelation	VIEW	2
VHA	cdwwork2_veteranmill	PersonHealthPlan	VIEW	2
VHA	cdwwork2_veteranmill	personhealthplanbenefit	VIEW	2
VHA	cdwwork2_veteranmill	personhealthplanprofilerelation	VIEW	2
VHA	cdwwork2_veteranmill	personhealthplanrelation	VIEW	2
VHA	cdwwork2_veteranmill	PersonHistoryInfo	VIEW	2
VHA	cdwwork2_veteranmill	PersonInformation	VIEW	2
VHA	cdwwork2_veteranmill	PersonMilitary	VIEW	2
VHA	cdwwork2_veteranmill	personorganization	VIEW	2
VHA	cdwwork2_veteranmill	personpatient	VIEW	2
VHA	cdwwork2_veteranmill	PersonRx	VIEW	2
VHA	cdwwork2_veteranmill	persontransaction	VIEW	2
VHA	cdwwork2_veteranmill	PersonUncollectedData	VIEW	2
VHA	cdwwork2_veteranmill	personveteran	VIEW	2
VHA	cdwwork2_veteranmill	personveteranhistory	VIEW	2
VHA	cdwwork2_veteranmill	UserDefinedHistory	VIEW	2
VHA	cdwwork2_whmill	MotherChildPreDocument	VIEW	2
VHA	cdwwork2_whmill	Pregnancy	VIEW	2
VHA	cdwwork2_whmill	PregnancyAction	VIEW	2
VHA	cdwwork2_whmill	PregnancyChildEntityRelation	VIEW	2
VHA	cdwwork2_whmill	PregnancyDetail	VIEW	2
VHA	cdwwork2_whmill	PregnancyEntityRelation	VIEW	2
VHA	cdwwork2_whmill	PregnancyEstimate	VIEW	2
VHA	cdwwork3_next_allergyehr	allergicreaction_ehr_v002	VIEW	2
VHA	cdwwork3_next_allergyehr	allergicreactionassessment_ehr_v001	VIEW	2
VHA	cdwwork3_next_allergyehr	allergy_ehr_v003	VIEW	2
VHA	cdwwork3_next_allergyehr	allergycomment_ehr_v001	VIEW	2
VHA	cdwwork3_next_allergyehr	allergydrugclass_ehr_v001	VIEW	2
VHA	cdwwork3_next_allergyehr	allergydrugingredient_ehr_v001	VIEW	2
VHA	cdwwork3_next_apptehr	appointment_ehr_v004	VIEW	4
VHA	cdwwork3_next_bcmaehr	bcmaadditive_ehr_v002	VIEW	2
VHA	cdwwork3_next_bcmaehr	bcmadispenseddrug_ehr_v002	VIEW	2
VHA	cdwwork3_next_bcmaehr	bcmamedicationlog_ehr_v004	VIEW	2
VHA	cdwwork3_next_bcmaehr	bcmasolution_ehr_v002	VIEW	2
VHA	cdwwork3_next_chemehr	labchem_ehr_v004	VIEW	2
VHA	cdwwork3_next_chemehr	labpanel_ehr_v002	VIEW	2
VHA	cdwwork3_next_chemehr	orderedlabpanel_ehr_v002	VIEW	2
VHA	cdwwork3_next_conehr	consult_ehr_v008	VIEW	2
VHA	cdwwork3_next_conehr	consultactivity_ehr_v008	VIEW	2
VHA	cdwwork3_next_conehr	consultfactor_ehr_v003	VIEW	2
VHA	cdwwork3_next_cprsorderehr	cprsorder_ehr_v004	VIEW	2
VHA	cdwwork3_next_cprsorderehr	orderaction_ehr_v002	VIEW	2
VHA	cdwwork3_next_cprsorderehr	ordereditem_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	activitytype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	admitsource_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	agency_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	appointmentstatus_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	appointmenttype_ehr_v004	VIEW	2
VHA	cdwwork3_next_dimehr	appointmenttypedescription_ehr_v004	VIEW	2
VHA	cdwwork3_next_dimehr	arcategory_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	artransactiontype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	asaclass_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	bedsection_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	branchofservice_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	cancellationreason_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	collectionsample_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	country_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	cpt_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	cptcategory_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	cptdescriptionversion_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	cptmodifier_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	dispenseunit_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	displaygroup_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	division_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	dosageform_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	drg_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	drgversioneddescription_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	drugclass_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	drugingredient_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	drugnamewithoutdose_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	drugunit_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ethnicity_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	facilitymovementtype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	facilitytype_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	healthfactortype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	healthfactortype_ehr_v009	VIEW	2
VHA	cdwwork3_next_dimehr	ibactiontype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ibbillformtype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ibinformationsource_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	ibinsurancepayer_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	ibplaceofservice_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ibprovideridtype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ibrevenuecode_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ibtypeofservice_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	icd_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	icdagehighversion_ehr_v005	VIEW	2
VHA	cdwwork3_next_dimehr	icdagelowversion_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	icddescriptionversion_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	icddiagnosisversion_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	icdprocedure_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	icdproceduredescriptionversion_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	icdsexversion_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	imagingtype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	immunizationadministrationroute_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	immunizationadministrationsite_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	immunizationinformationsource_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	immunizationname_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	institution_ehr_v013	VIEW	2
VHA	cdwwork3_next_dimehr	insurancecompany_ehr_v004	VIEW	2
VHA	cdwwork3_next_dimehr	insurancecoveragetype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	insurancefilingtimeframe_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	insuranceplan_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	insuranceplantype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ivadditiveingredient_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	ivsolutioningredient_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	labchemtest_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	labchemtesturgency_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	localdrug_ehr_v005	VIEW	2
VHA	cdwwork3_next_dimehr	localpatientrecordflag_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	localsurgicalspecialty_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	location_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	locationtype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	loinc_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	maritalstatus_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	mdc_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	medicationroute_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	nationaldrug_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	nationalpatientrecordflag_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	natureoforder_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	ncpdprelationshipcode_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	operatingroom_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	orderableitem_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	orderreason_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	orderstatus_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	periodofservice_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	pharmacyorderableitem_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	placeofdisposition_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	prcdfund_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	providerclass_ehr_v004	VIEW	2
VHA	cdwwork3_next_dimehr	providertype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	race_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	radiologydiagnosticcode_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	radiologyequipmentroom_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	radiologyexamstatus_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	radiologylocation_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	radiologyprocedure_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	reactant_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	reaction_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	religion_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	requestservice_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	revenuesourcecode_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	roombed_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	servicesection_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	sexualorientationtype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	skinintegrity_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	snomedprocedure_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	specialty_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	state_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	surgerycancelreason_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	surgerydelaycause_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	surgeryposition_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	surgerytransportdevice_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	surgicalspecialty_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	survey_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	tiudocumentdefinition_ehr_v003	VIEW	2
VHA	cdwwork3_next_dimehr	tiustandardtitle_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	tiustatus_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	topography_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	treatingspecialty_ehr_v004	VIEW	2
VHA	cdwwork3_next_dimehr	userclass_ehr_v001	VIEW	2
VHA	cdwwork3_next_dimehr	vendor_ehr_v004	VIEW	2
VHA	cdwwork3_next_dimehr	vitaltype_ehr_v002	VIEW	2
VHA	cdwwork3_next_dimehr	wardlocation_ehr_v003	VIEW	2
VHA	cdwwork3_next_hfehr	healthfactor_ehr_v005	VIEW	2
VHA	cdwwork3_next_hfehr	healthfactor_ehr_v008	VIEW	2
VHA	cdwwork3_next_immunehr	immunization_ehr_v002	VIEW	2
VHA	cdwwork3_next_inpatehr	inpatient_ehr_v003	VIEW	2
VHA	cdwwork3_next_inpatehr	inpatientcptprocedure_ehr_v003	VIEW	2
VHA	cdwwork3_next_inpatehr	inpatientdiagnosis_ehr_v003	VIEW	2
VHA	cdwwork3_next_inpatehr	inpatientdischargediagnosis_ehr_v005	VIEW	2
VHA	cdwwork3_next_inpatehr	inpatienticdprocedure_ehr_v003	VIEW	2
VHA	cdwwork3_next_inpatehr	inpatientsurgicalprocedure_ehr_v003	VIEW	2
VHA	cdwwork3_next_inpatehr	patienttransfer_ehr_v007	VIEW	2
VHA	cdwwork3_next_inpatehr	specialtytransfer_ehr_v006	VIEW	2
VHA	cdwwork3_next_mhehr	surveyresult_ehr_v001	VIEW	2
VHA	cdwwork3_next_ndimehr	parentinstitution_ehr_v005	VIEW	2
VHA	cdwwork3_next_nonvamedehr	nonvamed_ehr_v003	VIEW	2
VHA	cdwwork3_next_outpatehr	problemlist_ehr_v002	VIEW	2
VHA	cdwwork3_next_outpatehr	vdiagnosis_ehr_v002	VIEW	2
VHA	cdwwork3_next_outpatehr	visit_ehr_v008	VIEW	2
VHA	cdwwork3_next_outpatehr	vprocedure_ehr_v005	VIEW	2
VHA	cdwwork3_next_outpatehr	vprocedurecptmodifier_ehr_v002	VIEW	2
VHA	cdwwork3_next_outpatehr	vprovider_ehr_v002	VIEW	2
VHA	cdwwork3_next_pathologyehr	cytospecimen_ehr_v002	VIEW	2
VHA	cdwwork3_next_patientehr	enrollment_ehr_v001	VIEW	2
VHA	cdwwork3_next_patientehr	patient_ehr_v003	VIEW	2
VHA	cdwwork3_next_patientehr	patienticn_ehr_v002	VIEW	2
VHA	cdwwork3_next_patientehr	purpleheart_ehr_v002	VIEW	2
VHA	cdwwork3_next_patientehr	radiologypatient_ehr_v003	VIEW	2
VHA	cdwwork3_next_patientehr	sexualorientation_ehr_v002	VIEW	2
VHA	cdwwork3_next_patsubehr	militarysexualtrauma_ehr_v005	VIEW	2
VHA	cdwwork3_next_patsubehr	nosethroatradiumhst_ehr_v001	VIEW	2
VHA	cdwwork3_next_patsubehr	oefoifservice_ehr_v005	VIEW	2
VHA	cdwwork3_next_patsubehr	patientethnicity_ehr_v003	VIEW	2
VHA	cdwwork3_next_patsubehr	patientrace_ehr_v003	VIEW	2
VHA	cdwwork3_next_patsubehr	patientserviceperiod_ehr_v006	VIEW	2
VHA	cdwwork3_next_patsubehr	secondaryeligibility_ehr_v005	VIEW	2
VHA	cdwwork3_next_radehr	radiologyexam_ehr_v003	VIEW	2
VHA	cdwwork3_next_radehr	radiologyexamsecondarydiagnosticcode_ehr_v002	VIEW	2
VHA	cdwwork3_next_radehr	radiologyregisteredexam_ehr_v002	VIEW	2
VHA	cdwwork3_next_rxoutehr	rxoutpat_ehr_v004	VIEW	2
VHA	cdwwork3_next_rxoutehr	rxoutpatfill_ehr_v004	VIEW	2
VHA	cdwwork3_next_rxoutehr	rxoutpatsig_ehr_v002	VIEW	2
VHA	cdwwork3_next_spatientehr	insurancegroupplancomment_ehr_v002	VIEW	2
VHA	cdwwork3_next_spatientehr	militaryserviceepisode_ehr_v004	VIEW	2
VHA	cdwwork3_next_spatientehr	patientrecordflagassignment_ehr_v003	VIEW	2
VHA	cdwwork3_next_spatientehr	spatientaddress_ehr_v005	VIEW	2
VHA	cdwwork3_next_spatientehr	spatientdisability_ehr_v004	VIEW	2
VHA	cdwwork3_next_spatientehr	spatientphone_ehr_v002	VIEW	2
VHA	cdwwork3_next_sstaffehr	sstaff_ehr_v014	VIEW	2
VHA	cdwwork3_next_staffehr	staff_ehr_v013	VIEW	2
VHA	cdwwork3_next_surgehr	surgerydelay_ehr_v002	VIEW	2
VHA	cdwwork3_next_surgehr	surgeryintra_ehr_v002	VIEW	2
VHA	cdwwork3_next_surgehr	surgerypost_ehr_v002	VIEW	2
VHA	cdwwork3_next_surgehr	surgerypre_ehr_v005	VIEW	2
VHA	cdwwork3_next_surgehr	surgerypre_ehr_v007	VIEW	2
VHA	cdwwork3_next_surgehr	surgeryprincipalassociateddiagnosis_ehr_v008	VIEW	2
VHA	cdwwork3_next_surgehr	surgeryprincipalassociatedprocedure_ehr_v002	VIEW	2
VHA	cdwwork3_next_surgehr	surgeryprocedurediagnosiscode_ehr_v004	VIEW	2
VHA	cdwwork3_next_tiuehr	tiudocument_ehr_v005	VIEW	2
VHA	cdwwork3_next_vitalehr	vitalsign_ehr_v003	VIEW	2
VHA	cdwwork3_next_whehr	whprocedure_ehr_v002	VIEW	2


/*
----2. Just columns for key Health Equity tables (maybe 50-100 rows)

SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_SCHEMA = 'cdwwork_hf' AND TABLE_NAME = 'HealthFactor')
   OR (TABLE_SCHEMA = 'cdwwork_dim' AND TABLE_NAME IN ('Sta3n', 'HealthFactorType', 'Date'))
   OR (TABLE_SCHEMA = 'cdwwork_sstaff' AND TABLE_NAME = 'SSTaff')
   OR (TABLE_SCHEMA = 'cdwwork_spatient' AND TABLE_NAME IN ('SPatient', 'SPatientAddress'))
   OR (TABLE_SCHEMA = 'cdwwork_patsub' AND TABLE_NAME IN ('PatientRace', 'PatientEthnicity'))
ORDER BY TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION;

*/  
TABLE_SCHEMA	TABLE_NAME	COLUMN_NAME	DATA_TYPE
cdwwork_dim	date	DateSID	int
cdwwork_dim	date	Date	smalldatetime
cdwwork_dim	date	DateText	varchar
cdwwork_dim	date	DayName	varchar
cdwwork_dim	date	DayOfWeek	tinyint
cdwwork_dim	date	IsWeekend	char
cdwwork_dim	date	DayOfMonth	tinyint
cdwwork_dim	date	DaysLeftInYear	smallint
cdwwork_dim	date	DaysLeftInFiscalYear	smallint
cdwwork_dim	date	WeekOfYear	tinyint
cdwwork_dim	date	MonthName	varchar
cdwwork_dim	date	MonthOfYear	tinyint
cdwwork_dim	date	FiscalMonth	tinyint
cdwwork_dim	date	Quarter	tinyint
cdwwork_dim	date	FiscalQuarter	tinyint
cdwwork_dim	date	CalendarYear	smallint
cdwwork_dim	date	FiscalYear	smallint
cdwwork_dim	date	VistaRefDate	varchar
cdwwork_dim	date	FederalHolidayFlag	char
cdwwork_dim	date	FederalHoliday	varchar
cdwwork_dim	date	PayYear	smallint
cdwwork_dim	date	PayPeriod	smallint
cdwwork_dim	HealthFactorType	HealthFactorTypeSID	int
cdwwork_dim	HealthFactorType	HealthFactorTypeIEN	varchar
cdwwork_dim	HealthFactorType	Sta3n	smallint
cdwwork_dim	HealthFactorType	HealthFactorType	varchar
cdwwork_dim	HealthFactorType	CategoryHealthFactorTypeSID	int
cdwwork_dim	HealthFactorType	HealthFactorCategory	varchar
cdwwork_dim	HealthFactorType	GenderSpecific	char
cdwwork_dim	HealthFactorType	LowerAge	smallint
cdwwork_dim	HealthFactorType	UpperAge	smallint
cdwwork_dim	HealthFactorType	DisplayOnHealthSummaryFlag	char
cdwwork_dim	HealthFactorType	HealthFactorTypeSynonym	varchar
cdwwork_dim	HealthFactorType	EntryType	varchar
cdwwork_dim	HealthFactorType	InactiveFlag	char
cdwwork_dim	HealthFactorType	HealthFactorClass	varchar
cdwwork_dim	HealthFactorType	ReminderSponsorSID	int
cdwwork_dim	HealthFactorType	PrintName	varchar
cdwwork_dim	HealthFactorType	MinimumValue	decimal
cdwwork_dim	HealthFactorType	MaximumValue	decimal
cdwwork_dim	HealthFactorType	MaximumDecimal	smallint
cdwwork_dim	HealthFactorType	UCUMCodeSID	int
cdwwork_dim	HealthFactorType	UCUMDisplay	varchar
cdwwork_dim	HealthFactorType	HealthFactorDescription	varchar
cdwwork_dim	Sta3n	Sta3n	smallint
cdwwork_dim	Sta3n	Sta3nName	varchar
cdwwork_dim	Sta3n	VISNPreFY15	smallint
cdwwork_dim	Sta3n	VISNFY16	smallint
cdwwork_dim	Sta3n	VISNFY17	smallint
cdwwork_dim	Sta3n	Active	char
cdwwork_dim	Sta3n	NextSta3n	int
cdwwork_dim	Sta3n	TimeZone	varchar
cdwwork_dim	Sta3n	SiteCode	varchar
cdwwork_dim	Sta3n	RegionFY15	smallint
cdwwork_dim	Sta3n	DistrictNameFY16	varchar
cdwwork_dim	Sta3n	DistrictNumberFY16	varchar
cdwwork_dim	Sta3n	DistrictNameFY17	varchar
cdwwork_dim	Sta3n	DistrictNumberFY17	varchar
cdwwork_dim	Sta3n	City	varchar
cdwwork_dim	Sta3n	StateSID	int
cdwwork_hf	HealthFactor	HealthFactorSID	bigint
cdwwork_hf	HealthFactor	HealthFactorIEN	varchar
cdwwork_hf	HealthFactor	Sta3n	smallint
cdwwork_hf	HealthFactor	HealthFactorTypeSID	int
cdwwork_hf	HealthFactor	PatientSID	int
cdwwork_hf	HealthFactor	EventDateTime	datetime2
cdwwork_hf	HealthFactor	EventVistaErrorDate	varchar
cdwwork_hf	HealthFactor	EventDateTimeTransformSID	bigint
cdwwork_hf	HealthFactor	VisitDateTime	datetime2
cdwwork_hf	HealthFactor	VisitVistaErrorDate	varchar
cdwwork_hf	HealthFactor	VisitDateTimeTransformSID	bigint
cdwwork_hf	HealthFactor	HealthFactorDateTime	datetime2
cdwwork_hf	HealthFactor	HealthFactorDateSID	int
cdwwork_hf	HealthFactor	LevelSeverity	varchar
cdwwork_hf	HealthFactor	VisitSID	bigint
cdwwork_hf	HealthFactor	EncounterStaffSID	int
cdwwork_hf	HealthFactor	VerifiedStatus	varchar
cdwwork_hf	HealthFactor	Comments	varchar
cdwwork_hf	HealthFactor	Magnitude	varchar
cdwwork_hf	HealthFactor	UCUMCodeSID	int
cdwwork_hf	HealthFactor	AuditTrail	varchar
cdwwork_hf	HealthFactor	EditedFlag	char
cdwwork_hf	HealthFactor	PCEDataSourceSID	int
cdwwork_hf	HealthFactor	VistaPackageSID	int
cdwwork_hf	HealthFactor	OrderingStaffSID	int
cdwwork_patsub	PatientEthnicity	PatientEthnicitySID	int
cdwwork_patsub	PatientEthnicity	PatientIEN	varchar
cdwwork_patsub	PatientEthnicity	PatientEthnicityIEN	varchar
cdwwork_patsub	PatientEthnicity	Sta3n	smallint
cdwwork_patsub	PatientEthnicity	PatientSID	int
cdwwork_patsub	PatientEthnicity	EthnicitySID	int
cdwwork_patsub	PatientEthnicity	Ethnicity	varchar
cdwwork_patsub	PatientEthnicity	CollectionMethodSID	int
cdwwork_patsub	PatientEthnicity	CollectionMethod	varchar
cdwwork_patsub	PatientRace	PatientRaceSID	int
cdwwork_patsub	PatientRace	PatientIEN	varchar
cdwwork_patsub	PatientRace	PatientRaceIEN	varchar
cdwwork_patsub	PatientRace	Sta3n	smallint
cdwwork_patsub	PatientRace	PatientSID	int
cdwwork_patsub	PatientRace	RaceSID	int
cdwwork_patsub	PatientRace	Race	varchar
cdwwork_patsub	PatientRace	CollectionMethodSID	int
cdwwork_patsub	PatientRace	CollectionMethod	varchar
cdwwork_patsub	PatientRace	LegacyRaceSID	int
cdwwork_patsub	PatientRace	LegacyRace	varchar
cdwwork_spatient	SPatient	PatientSID	int
cdwwork_spatient	SPatient	PatientIEN	varchar
cdwwork_spatient	SPatient	Sta3n	smallint
cdwwork_spatient	SPatient	PatientName	varchar
cdwwork_spatient	SPatient	PatientLastName	varchar
cdwwork_spatient	SPatient	PatientFirstName	varchar
cdwwork_spatient	SPatient	TestPatientFlag	char
cdwwork_spatient	SPatient	CDWPossibleTestPatientFlag	char
cdwwork_spatient	SPatient	VeteranFlag	char
cdwwork_spatient	SPatient	PatientType	varchar
cdwwork_spatient	SPatient	PatientTypeSID	int
cdwwork_spatient	SPatient	PatientICN	varchar
cdwwork_spatient	SPatient	ScrSSN	varchar
cdwwork_spatient	SPatient	PatientSSN	varchar
cdwwork_spatient	SPatient	PseudoSSNReason	varchar
cdwwork_spatient	SPatient	SSNVerificationStatus	varchar
cdwwork_spatient	SPatient	GovernmentEmployeeFlag	char
cdwwork_spatient	SPatient	SensitiveFlag	char
cdwwork_spatient	SPatient	Age	numeric
cdwwork_spatient	SPatient	BirthDateTime	datetime2
cdwwork_spatient	SPatient	BirthVistaErrorDate	varchar
cdwwork_spatient	SPatient	BirthDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	DeceasedFlag	char
cdwwork_spatient	SPatient	DeathDateTime	datetime2
cdwwork_spatient	SPatient	DeathVistaErrorDate	varchar
cdwwork_spatient	SPatient	DeathDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	DeathEnteredByStaffSID	int
cdwwork_spatient	SPatient	DeathNotificationSource	varchar
cdwwork_spatient	SPatient	DeathDocumentationType	varchar
cdwwork_spatient	SPatient	DeathModifiedDateTime	datetime2
cdwwork_spatient	SPatient	DeathModifiedVistaErrorDate	varchar
cdwwork_spatient	SPatient	DeathModifiedDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	DeathLastUpdatedByStaffSID	int
cdwwork_spatient	SPatient	Gender	char
cdwwork_spatient	SPatient	SelfIdentifiedGender	varchar
cdwwork_spatient	SPatient	Religion	varchar
cdwwork_spatient	SPatient	ReligionSID	int
cdwwork_spatient	SPatient	MaritalStatus	varchar
cdwwork_spatient	SPatient	MaritalStatusSID	int
cdwwork_spatient	SPatient	CollateralSponsorPatientSID	int
cdwwork_spatient	SPatient	CurrentEnrollmentSID	bigint
cdwwork_spatient	SPatient	MeansTestStatus	varchar
cdwwork_spatient	SPatient	CurrentMeansTestStatusSID	int
cdwwork_spatient	SPatient	PeriodOfService	varchar
cdwwork_spatient	SPatient	PeriodOfServiceSID	int
cdwwork_spatient	SPatient	OperationDesertShieldRank	varchar
cdwwork_spatient	SPatient	ODSRankType	varchar
cdwwork_spatient	SPatient	ODSRecalledCode	varchar
cdwwork_spatient	SPatient	ODSTreatmentDateTime	datetime2
cdwwork_spatient	SPatient	ODSTreatmentVistaErrorDate	varchar
cdwwork_spatient	SPatient	ODSTreatmentDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	FederalAgencySID	int
cdwwork_spatient	SPatient	FilipinoVeteranCode	varchar
cdwwork_spatient	SPatient	ServiceConnectedFlag	char
cdwwork_spatient	SPatient	Eligibility	varchar
cdwwork_spatient	SPatient	EligibilityVACode	varchar
cdwwork_spatient	SPatient	EligibilitySID	int
cdwwork_spatient	SPatient	EligibilityStatus	varchar
cdwwork_spatient	SPatient	EligibilityStatusDateTime	datetime2
cdwwork_spatient	SPatient	EligibilityStatusVistaErrorDate	varchar
cdwwork_spatient	SPatient	EligibilityStatusDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	EligibilityVerificationSource	varchar
cdwwork_spatient	SPatient	EligibilityVerificationMethod	varchar
cdwwork_spatient	SPatient	EligibilityInterimDateTime	datetime2
cdwwork_spatient	SPatient	EligibilityInterimVistaErrorDate	varchar
cdwwork_spatient	SPatient	EligibilityInterimDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	EligibilityEnteredStaffSID	int
cdwwork_spatient	SPatient	IneligibleReason	varchar
cdwwork_spatient	SPatient	IneligibleVAROReason	varchar
cdwwork_spatient	SPatient	IneligibleCity	varchar
cdwwork_spatient	SPatient	IneligibleStateSID	int
cdwwork_spatient	SPatient	IneligibleDateTime	datetime2
cdwwork_spatient	SPatient	IneligibleVistaErrorDate	varchar
cdwwork_spatient	SPatient	IneligibleDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	IneligibleSource	varchar
cdwwork_spatient	SPatient	PatientMissingSource	varchar
cdwwork_spatient	SPatient	PatientMissingDateTime	datetime2
cdwwork_spatient	SPatient	PatientMissingVistaErrorDate	varchar
cdwwork_spatient	SPatient	PatientMissingDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	PatientMissingCity	varchar
cdwwork_spatient	SPatient	PatientMissingStateSID	int
cdwwork_spatient	SPatient	FugitiveFelonFlag	char
cdwwork_spatient	SPatient	FFFEnteredDateTime	datetime2
cdwwork_spatient	SPatient	FFFEnteredVistaErrorDate	varchar
cdwwork_spatient	SPatient	FFFEnteredDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	FFFEnteredStaffSID	int
cdwwork_spatient	SPatient	FFFRemovedReason	varchar
cdwwork_spatient	SPatient	FFFRemovedDateTime	datetime2
cdwwork_spatient	SPatient	FFFRemovedVistaErrorDate	varchar
cdwwork_spatient	SPatient	FFFRemovedDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	FFFRemovedStaffSID	int
cdwwork_spatient	SPatient	PatientEnteredByStaffSID	int
cdwwork_spatient	SPatient	PatientEnteredCode	varchar
cdwwork_spatient	SPatient	PatientEnteredRemark	varchar
cdwwork_spatient	SPatient	PatientEnteredDateTime	datetime2
cdwwork_spatient	SPatient	PatientEnteredVistaErrorDate	varchar
cdwwork_spatient	SPatient	PatientEnteredDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	DuplicateRecordStatus	varchar
cdwwork_spatient	SPatient	DestinationMergePatientSID	int
cdwwork_spatient	SPatient	PreferredInstitutionSID	int
cdwwork_spatient	SPatient	PreferredInstitutionSource	varchar
cdwwork_spatient	SPatient	EmergencyResponseIndicator	varchar
cdwwork_spatient	SPatient	InsuranceCoverageFlag	char
cdwwork_spatient	SPatient	MedicaidEligibleFlag	char
cdwwork_spatient	SPatient	MedicaidNumber	varchar
cdwwork_spatient	SPatient	MedicaidInquireDateTime	datetime2
cdwwork_spatient	SPatient	MedicaidInquireVistaErrorDate	varchar
cdwwork_spatient	SPatient	MedicaidInquireDateTimeTransformSID	bigint
cdwwork_spatient	SPatient	VeteranTransportationProgramFlag	char
cdwwork_spatient	SPatientAddress	SPatientAddressSID	int
cdwwork_spatient	SPatientAddress	PatientSID	int
cdwwork_spatient	SPatientAddress	PatientIEN	varchar
cdwwork_spatient	SPatientAddress	Sta3n	smallint
cdwwork_spatient	SPatientAddress	OrdinalNumber	smallint
cdwwork_spatient	SPatientAddress	AddressType	varchar
cdwwork_spatient	SPatientAddress	NameOfContact	varchar
cdwwork_spatient	SPatientAddress	RelationshipToPatient	varchar
cdwwork_spatient	SPatientAddress	BadAddressIndicator	varchar
cdwwork_spatient	SPatientAddress	StreetAddress1	varchar
cdwwork_spatient	SPatientAddress	StreetAddress2	varchar
cdwwork_spatient	SPatientAddress	StreetAddress3	varchar
cdwwork_spatient	SPatientAddress	City	varchar
cdwwork_spatient	SPatientAddress	County	varchar
cdwwork_spatient	SPatientAddress	State	varchar
cdwwork_spatient	SPatientAddress	StateSID	int
cdwwork_spatient	SPatientAddress	Zip	varchar
cdwwork_spatient	SPatientAddress	Zip4	varchar
cdwwork_spatient	SPatientAddress	Province	varchar
cdwwork_spatient	SPatientAddress	PostalCode	varchar
cdwwork_spatient	SPatientAddress	Country	varchar
cdwwork_spatient	SPatientAddress	CountrySID	int
cdwwork_spatient	SPatientAddress	EmploymentStatus	varchar
cdwwork_spatient	SPatientAddress	Occupation	varchar
cdwwork_spatient	SPatientAddress	RetirementDateTime	datetime2
cdwwork_spatient	SPatientAddress	RetirementVistaErrorDate	varchar
cdwwork_spatient	SPatientAddress	RetirementDateTimeTransformSID	bigint
cdwwork_spatient	SPatientAddress	AddressStartDateTime	datetime2
cdwwork_spatient	SPatientAddress	AddressStartVistaErrorDate	varchar
cdwwork_spatient	SPatientAddress	AddressStartDateTimeTransformSID	bigint
cdwwork_spatient	SPatientAddress	AddressEndDateTime	datetime2
cdwwork_spatient	SPatientAddress	AddressEndVistaErrorDate	varchar
cdwwork_spatient	SPatientAddress	AddressEndDateTimeTransformSID	bigint
cdwwork_spatient	SPatientAddress	AddressChangeStaffSID	int
cdwwork_spatient	SPatientAddress	AddressChangeInstitutionSID	int
cdwwork_spatient	SPatientAddress	AddressChangeDateTime	datetime2
cdwwork_spatient	SPatientAddress	AddressChangeVistaErrorDate	varchar
cdwwork_spatient	SPatientAddress	AddressChangeDateTimeTransformSID	bigint
cdwwork_spatient	SPatientAddress	AddressChangeSource	varchar
cdwwork_spatient	SPatientAddress	GISLocatorName	varchar
cdwwork_spatient	SPatientAddress	GISMatchStatusCode	varchar
cdwwork_spatient	SPatientAddress	GISMatchScore	int
cdwwork_spatient	SPatientAddress	GISMatchMethodCode	varchar
cdwwork_spatient	SPatientAddress	GISMatchedAddress	varchar
cdwwork_spatient	SPatientAddress	GISAddressType	varchar
cdwwork_spatient	SPatientAddress	GISStreetSide	varchar
cdwwork_spatient	SPatientAddress	GISPatientAddressLongitude	float
cdwwork_spatient	SPatientAddress	GISPatientAddressLatitude	float
cdwwork_spatient	SPatientAddress	GISAddressUpdatedDate	date
cdwwork_spatient	SPatientAddress	GISFIPSCode	varchar
cdwwork_spatient	SPatientAddress	GISMarket	varchar
cdwwork_spatient	SPatientAddress	GISSubmarket	varchar
cdwwork_spatient	SPatientAddress	GISSector	varchar
cdwwork_spatient	SPatientAddress	GISURH	char
cdwwork_spatient	SPatientAddress	GISCongressDistrict	varchar
cdwwork_sstaff	SStaff	StaffSID	int
cdwwork_sstaff	SStaff	StaffIEN	varchar
cdwwork_sstaff	SStaff	Sta3n	smallint
cdwwork_sstaff	SStaff	StaffName	varchar
cdwwork_sstaff	SStaff	LastName	varchar
cdwwork_sstaff	SStaff	FirstName	varchar
cdwwork_sstaff	SStaff	MiddleName	varchar
cdwwork_sstaff	SStaff	StaffNamePrefix	varchar
cdwwork_sstaff	SStaff	StaffNameSuffix	varchar
cdwwork_sstaff	SStaff	StaffSSN	varchar
cdwwork_sstaff	SStaff	NetworkUsername	varchar
cdwwork_sstaff	SStaff	DEA	varchar
cdwwork_sstaff	SStaff	VANumber	varchar
cdwwork_sstaff	SStaff	MailCode	varchar
cdwwork_sstaff	SStaff	StreetAddress1	varchar
cdwwork_sstaff	SStaff	StreetAddress2	varchar
cdwwork_sstaff	SStaff	StreetAddress3	varchar
cdwwork_sstaff	SStaff	City	varchar
cdwwork_sstaff	SStaff	StateName	varchar
cdwwork_sstaff	SStaff	ZipCode	varchar
cdwwork_sstaff	SStaff	TemporaryAddress1	varchar
cdwwork_sstaff	SStaff	TemporaryAddress2	varchar
cdwwork_sstaff	SStaff	TemporaryAddress3	varchar
cdwwork_sstaff	SStaff	TemporaryCity	varchar
cdwwork_sstaff	SStaff	TemporaryStateName	varchar
cdwwork_sstaff	SStaff	TemporaryZipCode	varchar
cdwwork_sstaff	SStaff	TemporaryAddressStartDateTime	datetime2
cdwwork_sstaff	SStaff	TemporaryAddressStartVistaErrorDate	varchar
cdwwork_sstaff	SStaff	TemporaryAddressStartDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	TemporaryAddressEndDateTime	datetime2
cdwwork_sstaff	SStaff	TemporaryAddressEndVistaErrorDate	varchar
cdwwork_sstaff	SStaff	TemporaryAddressEndDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	HomePhone	varchar
cdwwork_sstaff	SStaff	OfficePhone	varchar
cdwwork_sstaff	SStaff	Phone3	varchar
cdwwork_sstaff	SStaff	Phone4	varchar
cdwwork_sstaff	SStaff	CommercialPhone	varchar
cdwwork_sstaff	SStaff	FaxNumber	varchar
cdwwork_sstaff	SStaff	VoicePager	varchar
cdwwork_sstaff	SStaff	DigitalPager	varchar
cdwwork_sstaff	SStaff	Room	varchar
cdwwork_sstaff	SStaff	EmailAddress	varchar
cdwwork_sstaff	SStaff	NPIEntryStatusFlag	char
cdwwork_sstaff	SStaff	NPIAuthorizedReleaseFlag	char
cdwwork_sstaff	SStaff	NPI	varchar
cdwwork_sstaff	SStaff	SignatureBlockName	varchar
cdwwork_sstaff	SStaff	SignatureBlockTitle	varchar
cdwwork_sstaff	SStaff	TaxID	varchar
cdwwork_sstaff	SStaff	BirthDateTime	datetime2
cdwwork_sstaff	SStaff	BirthVistaErrorDate	varchar
cdwwork_sstaff	SStaff	BirthDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	Age	numeric
cdwwork_sstaff	SStaff	Gender	varchar
cdwwork_sstaff	SStaff	TerminationDateTime	datetime2
cdwwork_sstaff	SStaff	TerminationVistaErrorDate	varchar
cdwwork_sstaff	SStaff	TerminationDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	TerminationReason	varchar
cdwwork_sstaff	SStaff	PositionTitle	varchar
cdwwork_sstaff	SStaff	DeleteAllMailAccessFlag	char
cdwwork_sstaff	SStaff	DeleteKeysAtTerminationFlag	char
cdwwork_sstaff	SStaff	ProviderClassSID	int
cdwwork_sstaff	SStaff	ProviderClass	varchar
cdwwork_sstaff	SStaff	LastUsedTerminalType	varchar
cdwwork_sstaff	SStaff	ProviderScheduleType	varchar
cdwwork_sstaff	SStaff	Degree	varchar
cdwwork_sstaff	SStaff	PACFlag	char
cdwwork_sstaff	SStaff	HINQEmployeeNumberFlag	char
cdwwork_sstaff	SStaff	DelegateOfStaffSID	int
cdwwork_sstaff	SStaff	DelegationDateTime	datetime2
cdwwork_sstaff	SStaff	DelegationVistaErrorDate	varchar
cdwwork_sstaff	SStaff	DelegationDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	ServiceComputationDateTime	datetime2
cdwwork_sstaff	SStaff	ServiceComputationVistaErrorDate	varchar
cdwwork_sstaff	SStaff	ServiceComputationDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	DelegationLevel	decimal
cdwwork_sstaff	SStaff	ElectronicSignatureCodeFlag	char
cdwwork_sstaff	SStaff	AccessCodeFlag	char
cdwwork_sstaff	SStaff	VerifyCodeFlag	char
cdwwork_sstaff	SStaff	VerifyCodeLastChangedDateTime	datetime2
cdwwork_sstaff	SStaff	VerifyCodeLastChangedVistaErrorDate	varchar
cdwwork_sstaff	SStaff	VerifyCodeLastChangedDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	EnteredDateTime	datetime2
cdwwork_sstaff	SStaff	EnteredVistaErrorDate	varchar
cdwwork_sstaff	SStaff	EnteredDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	CreatedByStaffSID	int
cdwwork_sstaff	SStaff	MedOrdersAuthorizedFlag	char
cdwwork_sstaff	SStaff	ServiceSectionSID	int
cdwwork_sstaff	SStaff	ServiceSection	varchar
cdwwork_sstaff	SStaff	ServiceType	varchar
cdwwork_sstaff	SStaff	ParentServiceSectionSID	int
cdwwork_sstaff	SStaff	SocialWorkerFlag	char
cdwwork_sstaff	SStaff	SocialWorkerPositionTitle	varchar
cdwwork_sstaff	SStaff	SocialWorkerImmediateSupervisorStaffSID	int
cdwwork_sstaff	SStaff	SupplyEmployee	varchar
cdwwork_sstaff	SStaff	LastEditedDateTime	datetime2
cdwwork_sstaff	SStaff	LastEditedVistaErrorDate	varchar
cdwwork_sstaff	SStaff	LastEditedDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	InactivationDateTime	datetime2
cdwwork_sstaff	SStaff	InactivationVistaErrorDate	varchar
cdwwork_sstaff	SStaff	InactivationDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	DisUserFlag	char
cdwwork_sstaff	SStaff	XUSActiveUserFlag	char
cdwwork_sstaff	SStaff	PrimaryMenuOptionSID	int
cdwwork_sstaff	SStaff	RequiresCosignerFlag	char
cdwwork_sstaff	SStaff	UsualCosignerStaffSID	int
cdwwork_sstaff	SStaff	NonVAPrescriberFlag	char
cdwwork_sstaff	SStaff	ExclusionaryCheckFlag	char
cdwwork_sstaff	SStaff	ExclusionaryCheckDateTime	datetime2
cdwwork_sstaff	SStaff	ExclusionaryCheckVistaErrorDate	varchar
cdwwork_sstaff	SStaff	ExclusionaryCheckDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	ExclusionaryFlag	char
cdwwork_sstaff	SStaff	StaffReviewFlag	char
cdwwork_sstaff	SStaff	StaffRemarks	varchar
cdwwork_sstaff	SStaff	PostgraduateYear	int
cdwwork_sstaff	SStaff	AssignedPostgraduateDateTime	datetime2
cdwwork_sstaff	SStaff	AssignedPostgraduateVistaErrorDate	varchar
cdwwork_sstaff	SStaff	AssignedPostgraduateDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	DetoxificationIdentification	varchar
cdwwork_sstaff	SStaff	Schedule2NarcoticFlag	char
cdwwork_sstaff	SStaff	Schedule2NonNarcoticFlag	char
cdwwork_sstaff	SStaff	Schedule3NarcoticFlag	char
cdwwork_sstaff	SStaff	Schedule3NonNarcoticFlag	char
cdwwork_sstaff	SStaff	Schedule4SubstanceFlag	char
cdwwork_sstaff	SStaff	Schedule5SubstanceFlag	char
cdwwork_sstaff	SStaff	SecurityIdentification	varchar
cdwwork_sstaff	SStaff	SubjectOrganization	varchar
cdwwork_sstaff	SStaff	SubjectOrganizationIdentification	varchar
cdwwork_sstaff	SStaff	UniqueUserIdentification	varchar
cdwwork_sstaff	SStaff	ActiveDirectoryUserPrincipalName	varchar
cdwwork_sstaff	SStaff	DEAExpirationDateTime	datetime2
cdwwork_sstaff	SStaff	DEAExpirationVistaErrorDate	varchar
cdwwork_sstaff	SStaff	DEAExpirationDateTimeTransformSID	bigint
cdwwork_sstaff	SStaff	VAPersonIdentificationNumber	varchar
cdwwork_sstaff	SStaff	MultipleSignOnCode	varchar

/*--- 5. SAMPLE DATA FROM KEY TABLES ---*/
-- Add sample data from Sta3n, SStaff, HealthFactor, etc.

--SELECT TOP 3 * FROM VHA.Cdwwork_Dim.Sta3n;
528	(528) Upstate New York HCS	2	2	2	Y	NULL	Eastern Standard Time	ALN	4	North Atlantic	1	North Atlantic	1	 Albany	57
503	(503) Altoona, PA	4	4	4	Y	NULL	Eastern Standard Time	ALT	4	North Atlantic	1	North Atlantic	1	 Altoona	97
506	(506) Ann Arbor, MI	11	10	10	Y	NULL	Eastern Standard Time	ANN	3	Midwest	3	Midwest	3	 Ann Arbor	226

--SELECT TOP 3 * FROM VHA.Cdwwork_SStaff.SSTaff;
StaffSID	StaffIEN	Sta3n	StaffName	LastName	FirstName	MiddleName	StaffNamePrefix	StaffNameSuffix	StaffSSN	NetworkUsername	DEA	VANumber	MailCode	StreetAddress1	StreetAddress2	StreetAddress3	City	StateName	ZipCode	TemporaryAddress1	TemporaryAddress2	TemporaryAddress3	TemporaryCity	TemporaryStateName	TemporaryZipCode	TemporaryAddressStartDateTime	TemporaryAddressStartVistaErrorDate	TemporaryAddressStartDateTimeTransformSID	TemporaryAddressEndDateTime	TemporaryAddressEndVistaErrorDate	TemporaryAddressEndDateTimeTransformSID	HomePhone	OfficePhone	Phone3	Phone4	CommercialPhone	FaxNumber	VoicePager	DigitalPager	Room	EmailAddress	NPIEntryStatusFlag	NPIAuthorizedReleaseFlag	NPI	SignatureBlockName	SignatureBlockTitle	TaxID	BirthDateTime	BirthVistaErrorDate	BirthDateTimeTransformSID	Age	Gender	TerminationDateTime	TerminationVistaErrorDate	TerminationDateTimeTransformSID	TerminationReason	PositionTitle	DeleteAllMailAccessFlag	DeleteKeysAtTerminationFlag	ProviderClassSID	ProviderClass	LastUsedTerminalType	ProviderScheduleType	Degree	PACFlag	HINQEmployeeNumberFlag	DelegateOfStaffSID	DelegationDateTime	DelegationVistaErrorDate	DelegationDateTimeTransformSID	ServiceComputationDateTime	ServiceComputationVistaErrorDate	ServiceComputationDateTimeTransformSID	DelegationLevel	ElectronicSignatureCodeFlag	AccessCodeFlag	VerifyCodeFlag	VerifyCodeLastChangedDateTime	VerifyCodeLastChangedVistaErrorDate	VerifyCodeLastChangedDateTimeTransformSID	EnteredDateTime	EnteredVistaErrorDate	EnteredDateTimeTransformSID	CreatedByStaffSID	MedOrdersAuthorizedFlag	ServiceSectionSID	ServiceSection	ServiceType	ParentServiceSectionSID	SocialWorkerFlag	SocialWorkerPositionTitle	SocialWorkerImmediateSupervisorStaffSID	SupplyEmployee	LastEditedDateTime	LastEditedVistaErrorDate	LastEditedDateTimeTransformSID	InactivationDateTime	InactivationVistaErrorDate	InactivationDateTimeTransformSID	DisUserFlag	XUSActiveUserFlag	PrimaryMenuOptionSID	RequiresCosignerFlag	UsualCosignerStaffSID	NonVAPrescriberFlag	ExclusionaryCheckFlag	ExclusionaryCheckDateTime	ExclusionaryCheckVistaErrorDate	ExclusionaryCheckDateTimeTransformSID	ExclusionaryFlag	StaffReviewFlag	StaffRemarks	PostgraduateYear	AssignedPostgraduateDateTime	AssignedPostgraduateVistaErrorDate	AssignedPostgraduateDateTimeTransformSID	DetoxificationIdentification	Schedule2NarcoticFlag	Schedule2NonNarcoticFlag	Schedule3NarcoticFlag	Schedule3NonNarcoticFlag	Schedule4SubstanceFlag	Schedule5SubstanceFlag	SecurityIdentification	SubjectOrganization	SubjectOrganizationIdentification	UniqueUserIdentification	ActiveDirectoryUserPrincipalName	DEAExpirationDateTime	DEAExpirationVistaErrorDate	DEAExpirationDateTimeTransformSID	VAPersonIdentificationNumber	MultipleSignOnCode
1002861324	282750	520	MINNICK,MATTHEW J	MINNICK	MATTHEW	J	NULL	NULL	509981737	VHAKANMINNIM	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	MATTHEW J MINNICK	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	-1	NULL	NULL	NULL	NULL	N	N	-1	NULL	NULL	NULL	NULL	NULL	NULL	NULL	N	N	N	NULL	NULL	NULL	2014-10-23 00:00:00.0000000	3141023	NULL	1000022448	NULL	-1	NULL	NULL	-1	NULL	NULL	-1	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	N	-1	NULL	-1	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL