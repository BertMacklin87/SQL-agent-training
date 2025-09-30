# CDW Table Columns Cheat Sheet
**Tables Documented:** SPatient, SStaff, Location, LocalDrug, BCMAMedicationLog, BCMADispensedDrug, BCMAAdditive

---

## VHA.CDWWork_SPatient.SPatient
```
PatientSID, PatientIEN, Sta3n, PatientName, PatientLastName, PatientFirstName, TestPatientFlag, CDWPossibleTestPatientFlag, VeteranFlag, PatientType, PatientTypeSID, PatientICN, ScrSSN, PatientSSN, PseudoSSNReason, SSNVerificationStatus, GovernmentEmployeeFlag, SensitiveFlag, Age, BirthDateTime, BirthVistaErrorDate, BirthDateTimeTransformSID, DeceasedFlag, DeathDateTime, DeathVistaErrorDate, DeathDateTimeTransformSID, DeathEnteredByStaffSID, DeathNotificationSource, DeathDocumentationType, DeathModifiedDateTime, DeathModifiedVistaErrorDate, DeathModifiedDateTimeTransformSID, DeathLastUpdatedByStaffSID, Gender, SelfIdentifiedGender, Religion, ReligionSID, MaritalStatus, MaritalStatusSID, CollateralSponsorPatientSID, CurrentEnrollmentSID, MeansTestStatus, CurrentMeansTestStatusSID, PeriodOfService, PeriodOfServiceSID, OperationDesertShieldRank, ODSRankType, ODSRecalledCode, ODSTreatmentDateTime, ODSTreatmentVistaErrorDate, ODSTreatmentDateTimeTransformSID, FederalAgencySID, FilipinoVeteranCode, ServiceConnectedFlag, Eligibility, EligibilityVACode, EligibilitySID, EligibilityStatus, EligibilityStatusDateTime, EligibilityStatusVistaErrorDate, EligibilityStatusDateTimeTransformSID, EligibilityVerificationSource, EligibilityVerificationMethod, EligibilityInterimDateTime, EligibilityInterimVistaErrorDate, EligibilityInterimDateTimeTransformSID, EligibilityEnteredStaffSID, IneligibleReason, IneligibleVAROReason, IneligibleCity, IneligibleStateSID, IneligibleDateTime, IneligibleVistaErrorDate, IneligibleDateTimeTransformSID, IneligibleSource, PatientMissingSource, PatientMissingDateTime, PatientMissingVistaErrorDate, PatientMissingDateTimeTransformSID, PatientMissingCity, PatientMissingStateSID, FugitiveFelonFlag, FFFEnteredDateTime, FFFEnteredVistaErrorDate, FFFEnteredDateTimeTransformSID, FFFEnteredStaffSID, FFFRemovedReason, FFFRemovedDateTime, FFFRemovedVistaErrorDate, FFFRemovedDateTimeTransformSID, FFFRemovedStaffSID, PatientEnteredByStaffSID, PatientEnteredCode, PatientEnteredRemark, PatientEnteredDateTime, PatientEnteredVistaErrorDate, PatientEnteredDateTimeTransformSID, DuplicateRecordStatus, DestinationMergePatientSID, PreferredInstitutionSID, PreferredInstitutionSource, EmergencyResponseIndicator, InsuranceCoverageFlag, MedicaidEligibleFlag, MedicaidNumber, MedicaidInquireDateTime, MedicaidInquireVistaErrorDate, MedicaidInquireDateTimeTransformSID, VeteranTransportationProgramFlag
```

---

## VHA.CDWWork_SStaff.SStaff
```
StaffSID, StaffIEN, Sta3n, StaffName, LastName, FirstName, MiddleName, StaffNamePrefix, StaffNameSuffix, StaffSSN, NetworkUsername, DEA, VANumber, MailCode, StreetAddress1, StreetAddress2, StreetAddress3, City, StateName, ZipCode, TemporaryAddress1, TemporaryAddress2, TemporaryAddress3, TemporaryCity, TemporaryStateName, TemporaryZipCode, TemporaryAddressStartDateTime, TemporaryAddressStartVistaErrorDate, TemporaryAddressStartDateTimeTransformSID, TemporaryAddressEndDateTime, TemporaryAddressEndVistaErrorDate, TemporaryAddressEndDateTimeTransformSID, HomePhone, OfficePhone, Phone3, Phone4, CommercialPhone, FaxNumber, VoicePager, DigitalPager, Room, EmailAddress, NPIEntryStatusFlag, NPIAuthorizedReleaseFlag, NPI, SignatureBlockName, SignatureBlockTitle, TaxID, BirthDateTime, BirthVistaErrorDate, BirthDateTimeTransformSID, Age, Gender, TerminationDateTime, TerminationVistaErrorDate, TerminationDateTimeTransformSID, TerminationReason, PositionTitle, DeleteAllMailAccessFlag, DeleteKeysAtTerminationFlag, ProviderClassSID, ProviderClass, LastUsedTerminalType, ProviderScheduleType, Degree, PACFlag, HINQEmployeeNumberFlag, DelegateOfStaffSID, DelegationDateTime, DelegationVistaErrorDate, DelegationDateTimeTransformSID, ServiceComputationDateTime, ServiceComputationVistaErrorDate, ServiceComputationDateTimeTransformSID, DelegationLevel, ElectronicSignatureCodeFlag, AccessCodeFlag, VerifyCodeFlag, VerifyCodeLastChangedDateTime, VerifyCodeLastChangedVistaErrorDate, VerifyCodeLastChangedDateTimeTransformSID, EnteredDateTime, EnteredVistaErrorDate, EnteredDateTimeTransformSID, CreatedByStaffSID, MedOrdersAuthorizedFlag, ServiceSectionSID, ServiceSection, ServiceType, ParentServiceSectionSID, SocialWorkerFlag, SocialWorkerPositionTitle, SocialWorkerImmediateSupervisorStaffSID, SupplyEmployee, LastEditedDateTime, LastEditedVistaErrorDate, LastEditedDateTimeTransformSID, InactivationDateTime, InactivationVistaErrorDate, InactivationDateTimeTransformSID, DisUserFlag, XUSActiveUserFlag, PrimaryMenuOptionSID, RequiresCosignerFlag, UsualCosignerStaffSID, NonVAPrescriberFlag, ExclusionaryCheckFlag, ExclusionaryCheckDateTime, ExclusionaryCheckVistaErrorDate, ExclusionaryCheckDateTimeTransformSID, ExclusionaryFlag, StaffReviewFlag, StaffRemarks, PostgraduateYear, AssignedPostgraduateDateTime, AssignedPostgraduateVistaErrorDate, AssignedPostgraduateDateTimeTransformSID, DetoxificationIdentification, Schedule2NarcoticFlag, Schedule2NonNarcoticFlag, Schedule3NarcoticFlag, Schedule3NonNarcoticFlag, Schedule4SubstanceFlag, Schedule5SubstanceFlag, SecurityIdentification, SubjectOrganization, SubjectOrganizationIdentification, UniqueUserIdentification, ActiveDirectoryUserPrincipalName, DEAExpirationDateTime, DEAExpirationVistaErrorDate, DEAExpirationDateTimeTransformSID, VAPersonIdentificationNumber, MultipleSignOnCode
```

---

## VHA.CDWWork_Dim.Location
```
LocationSID, LocationIEN, Sta3n, LocationName, LocationAbbreviation, LocationType, PhoneNumber, PhoneNumberExtension, CollateralVisitFlag, ProhibitedAccessFlag, ClinicAtInstitutionFlag, ExtensionLocationTypeSID, ClinicGroupSID, VisitLocation, PrimaryStopCodeSID, SecondaryStopCodeSID, MedicalService, TreatingSpecialtySID, PhysicalLocation, SpecialAMISStop, CategoryOfVisit, DefaultProviderSID, AgencySID, WardLocationSID, AppointmentLength, NoncountClinicFlag, InactivationDateTime, InactivationVistaErrorDate, InactivationDateTimeTransformSID, ReactivationDateTime, ReactivationVistaErrorDate, ReactivationDateTimeTransformSID, DivisionSID, InstitutionSID, PrincipalLocationSID, PharmacySiteSID, PharmacyActionProfileFlag, InpatientMedAdministrationFlag, VariableAppointmentLengthFlag, HolidayFlag, OccasionOfServiceClinicFlag, OccasionOfServiceVistaPackageSID, DefaultAppointmentTypeSID, CountWorkloadValidationFlag, PatientFriendlyLocationName, DirectPatientSchedulingFlag, DisplayAppointmentFlag, ClinicStartHour, SchedulingSlotHoldDays, MaximumOverbooksPerDay, AllowableConsecutiveNoShowAppointment, FutureBookingMaximumDays, AutoRebookStartHour, AutoRebookMaximumDays, DisplayIncrementsPerHour, XRayFilmRequiredFlag, AskForCheckInOutTimeFlag, PreviousYearCreditStopCodeSID, NoShowLetterSID, PreAppointmentLetterSID, ClinicCancellationLetterSID, AppointmentCancellationLetterSID, DefaultToPrimaryCarePractitionerFlag, PreviousYearStopCodeSID, ECheckinAllowedFlag, PreCheckinAllowedFlag
```

---

## VHA.CDWWork_Dim.LocalDrug
```
LocalDrugSID, LocalDrugIEN, Sta3n, LocalDrugNameWithDose, VAProductName, NonFormularyFlag, NationalFormularyFlag, InactivationDateTime, InactivationVistaErrorDate, InactivationDateTimeTransformSID, LocalDrugMessage, QuantityDispensedMessage, WarningLabel, WarningMessageList, StandardSig, DEAHandling, MaxDosePerDay, MaxDosePerDayNumeric, OrderUnitIEN, OrderUnitSID, PricePerOrderUnit, DispenseUnit, DispenseUnitsPerOrderUnit, DispenseUnitsPerOrderUnitNumeric, PricePerDispenseUnit, CMOPDispenseFlag, CMOPID, VAClassification, BestDrugClass, NationalDrugIEN, NationalDrugSID, DrugClassIEN, DrugClassSID, DrugNameWithoutDoseIEN, DrugNameWithoutDoseSID, DayOrDoseLimit, AssociatedLabChemTestIEN, AssociatedLabChemTestSID, TopographyIEN, TopographySID, FederalStockNumber, SourceOfSupply, ApplicationPackageUse, UnitDoseScheduleType, UnitDoseSchedule, NDC, PharmacyOrderableItemIEN, PharmacyOrderableItemSID, UnitDoseMedicationRouteIEN, UnitDoseMedicationRouteSID, CorrespondingInpatientLocalDrugIEN, CorrespondingInpatientLocalDrugSID, CorrespondingOutpatientLocalDrugIEN, CorrespondingOutpatientLocalDrugSID, NCPDPDispenseUnit, NCPDPQuantityMultiplier, DAW, DrugUnitIEN, DrugUnitSID, Strength, LabMonitorFlag, MonitorMaxDays, ATCMnemonic, SensitiveDiagnosisDrugFlag, CHAMPVAEbillableFlag, TricareEbillableFlag, EbillableFlag, GenderSpecificLabelFlag, OutpatientExternalDispenseFlag, VISNNonFormularyFlag, InpatientPharmacyLocation, CurrentInventory, UseRestrictions, ReorderLevel, NormalOrderAmount, PackageSizeIEN, PackageSizeSID, PackageTypeIEN, PackageTypeSID, ExpirationDateTime, ExpirationVistaErrorDate, ExpirationDateTimeTransformSID, DeprecatedPrimaryDrugSID, MaximumDaysSupply, OutpatientActionProfileMessage, ServiceCode
```

**Injectable Long-Acting Antipsychotics Found:**
- 600470: zFLUPHENAZINE DECANOATE 25MG/ML 5ML (inactive)
- 609571: HALOPERIDOL DECANOATE 100MG/ML INJ 1ML (CN709)
- 601568: zHALOPERIDOL DECANOATE 50MG/ML 5ML INJ (inactive)  
- 609559: FLUPHENAZINE DECANOATE 25MG/ML INJ 5ML (CN701)
- 602941: zHALOPERIDOL DECANOATE 100MG/ML 5ML VIAL (inactive)

---

## VHA.CDWWork_BCMA.BCMAMedicationLog
```
BCMAMedicationLogSID, BCMAMedicationLogIEN, Sta3n, PatientSID, PatientLocation, InstitutionSID, EnteredDateTime, EnteredVistaErrorDate, EnteredDateTimeTransformSID, EnteredByStaffSID, ActionDateTime, ActionVistaErrorDate, ActionDateTimeTransformSID, ActionByStaffSID, PharmacyOrderableItemSID, ActionStatus, OrderReferenceNumber, OrderSchedule, ScheduledAdministrationDateTime, OrderAdministrationVariance, OrderDosage, InjectionSite, PRNReason, PRNEffectiveness, PRNEffectivenessEnteredByStaffSID, PRNEffectivenessEnteredDateTime, PRNEffectivenessMinutes, IVUniqueID, PRNReasonNumber, InfusionRate, WitnessStaffSID, WitnessComments, WitnessFlag, WitnessDateTime, WitnessVistaErrorDate, WitnessDateTimeTransformSID, WitnessHighRiskAlertStatus, BCMAMedicationLogComment
```

**Key Fields:**
- Primary Key: `BCMAMedicationLogSID`
- Patient: `PatientSID`
- Administration Date: `ActionDateTime`
- Administering Staff: `ActionByStaffSID`
- Injection Site: `InjectionSite`

---

## VHA.CDWWork_BCMA.BCMADispensedDrug
```
BCMADispensedDrugSID, BCMAMedicationLogSID, BCMAMedicationLogIEN, BCMADispensedDrugIEN, Sta3n, PatientSID, ActionDateTime, ActionVistaErrorDate, ActionDateTimeTransformSID, LocalDrugSID, DosesOrdered, DosesGiven, UnitOfAdministration, HighRiskHighAlertMedication
```

**Key Fields:**
- Links to MedicationLog: `BCMAMedicationLogSID`
- Medication: `LocalDrugSID`
- Dosing: `DosesOrdered`, `DosesGiven`

---

## VHA.CDWWork_BCMA.BCMAAdditive
```
BCMAAdditiveSID, BCMAMedicationLogSID, BCMAMedicationLogIEN, BCMAAdditiveIEN, Sta3n, ActionDateTime, ActionVistaDate, ActionDateSID, IVAdditiveIngredientSID, DoseOrdered, DoseGiven, UnitOfAdministration
```

---