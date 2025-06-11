// Example instance of the EctdCompositionSP7181 profile

Instance: 0a47185b-397c-4a92-891b-f585a46d303f
InstanceOf: EctdCompositionSP7181
Usage: #inline
* id = "example-stability-summary"
* date = 2025-06-01T00:00:00Z
* title = "3.2.S.7.1 Stability Summary and Conclusions for Example Substance"
* author = Reference(urn:uuid:98effc99-db2b-428d-89aa-0ce426e02788)
* section[StudySubject]
  * entry = Reference(urn:uuid:f8d2d350-97dd-4433-995e-a9f7899073bf)
* section[StudyDesign].title = "Study Design"
* section[StudyDesign].entry = Reference(urn:uuid:1c46a65c-01d3-4544-9632-83cd3f4061ae)
// */ * section[StudyDesign].text = """
// Batches Tested:
// - DS-001 (Pilot scale, 100 kg)
// - DS-002 (Pilot scale, 100 kg)
// - DS-003 (Commercial scale, 500 kg)

// Storage Conditions:
// - Long-term: 25 °C ± 2 °C / 60 % RH ± 5 % RH for 24 months
// - Accelerated: 40 °C ± 2 °C / 75 % RH ± 5 % RH for 6 months

// Container/Closure:
// Double-layer polyethylene bags inside polycarbonate drums.
// """
* section[TestParameters].title = "Test Parameters & Acceptance Criteria"
* section[TestParameters].entry = Reference(urn:uuid:ae37dc7b-4f45-4a77-ae4f-46a7f2563603)
* section[LongTerm]
  * title = "Tabulated Results (Long-term)"
 // * text = "Assay and Total Impurities over 24 months for batches DS-001, DS-002, DS-003"
  * entry[resultSummary][+] = Reference(urn:uuid:e77591f1-324a-4ca3-a43f-e11ce7298dce)
  * entry[resultSummary][+] = Reference(urn:uuid:3901b9ac-d269-4347-a4dc-cecad8fedc1b)
  * entry[resultSummary][+] = Reference(urn:uuid:66f10285-98b0-4521-9a5b-efc3dfbf81f2)
  * entry[markdownDescription] = Reference(urn:uuid:9e5fbc1c-0a0b-45aa-821e-febe14b73c5b)
* section[Accelerated]
  * title = "Tabulated Results (Accelerated)"
  // * text = "Assay and Total Impurities over 6 months for batches DS-001, DS-002, DS-003"
  * entry[resultSummary][+] = Reference(urn:uuid:2eeb9482-3b6c-440a-939e-203d9de83d60)
  * entry[resultSummary][+] = Reference(urn:uuid:50aa5c04-b187-4f04-b995-6f05a278090e)
  * entry[resultSummary][+] = Reference(urn:uuid:24f62b44-d9d9-4a9f-9af9-025bb890c00f)
  * entry[markdownDescription] = Reference(urn:uuid:fd7fa516-31df-4bd0-8ac3-5216a448ea1f)
* section[TrendAnalysis].title = "Trend Analysis"
* section[TrendAnalysis].entry = Reference(urn:uuid:cbe4f761-4cfd-42fd-b6d4-94ee3ecd26bf)
// * section[TrendAnalysis].text = """
// Under long-term conditions, assay decreased by < 1 % over 24 months; total impurities remained below 1.0 % for all batches.

// Under accelerated conditions, a gradual increase in impurities (up to 1.85 % at 6 months) corresponded to a slight assay decrease to 98.5 %. No new degradation peaks were observed.
// """
* section[Conclusion].title = "Conclusion"
* section[Conclusion].entry = Reference(urn:uuid:28d86939-4e85-48b6-b29c-a39aa8b3add1)
// * section[Conclusion].text = "All stability-indicating parameters remain within acceptance criteria through 24 months at 25 °C/60 % RH. Based on the absence of significant degradation, a retest period of 24 months when stored in double-layer polyethylene bags at 2-8 °C is justified."
* section[StorageStatement].title = "Storage Statement"
* section[StorageStatement].entry = Reference(urn:uuid:aab233b1-6c9b-4b3e-aad8-3d8bc7abf542)
// * section[StorageStatement].text  = "Store Drug Substance at 2-8 °C; protect from moisture."

Instance: f8d2d350-97dd-4433-995e-a9f7899073bf
InstanceOf: SubstanceDefinitionHandle
Usage: #inline
Title: "Substance Definition Handle for Stability Summary Example"
Description: "an example Substance Definition Handle instance for the Stability Summary Example"
* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C134006 "USP-NF"
* manufacturer = Reference(urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579)
* code.code = $UNII#R16CO5Y76E
* name[gsrs]	
  * name = "ASPIRIN"
  * preferred = true
* name[sub].name = "Acetiylsalicylic Acid"	


Instance: ae37dc7b-4f45-4a77-ae4f-46a7f2563603
InstanceOf: StabilitySpecSummary
Usage: #inline
Title: "Stability Spec Summary Example"
Description: "an example Stability Spec Summary instance for the Stability Summary Example"
* status = #active
* identifier.value = "SpecSum001"
* subjectReference = Reference(urn:uuid:f8d2d350-97dd-4433-995e-a9f7899073bf)
* goal[+]
  * id = "3c20460a-e082-424b-a40b-4e1c55cf8656"
  * description.text = "98.0 - 102.0%"
* goal[+]
  * id = "8e4b1c64-af7a-4aa1-afec-a4dfca634e78"
  * description.text = "Each <= 0.5%; Total <= 2.0%"
* goal[+]
  * id = "a69618c3-4b93-4eff-8246-34c1bc02d081"
  * description.text = "<= 1.5%"
* goal[+]
  * id = "df12e247-f1ce-478d-92ce-db1e4c177a01"
  * description.text = "Each <= 500 ppm; Total <= 3000 ppm"
* goal[+]
  * id = "3c0bb990-5a37-42fc-bdf5-e23ef4b8ab9b"
  * description.text = "White to Off-white crystalline"
* goal[+]
  * id = "61bce85b-051b-4dca-b9fe-7a4bf5940bf5"
  * description.text = "5.0 - 7.0"
* action[+]
  * title = "Assay (% Label Claim)"
  * code.text = "HPLC"
  * reason = $NCIT#C60819 "Assay"
  * goalId = "3c20460a-e082-424b-a40b-4e1c55cf8656"
* action[+]
  * title = "Associated Impurities (%)"
  * code.text = "HPLC (RODP)"
  * reason = $NCIT#C204971 "Impurity"
  * goalId = "8e4b1c64-af7a-4aa1-afec-a4dfca634e78"
* action[+]
  * title = "Water Content (% w/w)"
  * code.text = "Karl Fischer"
  * reason = $NCIT#C134002 "Residual Solvent"
  * goalId = "a69618c3-4b93-4eff-8246-34c1bc02d081"
* action[+]
  * title = "Residual Solvents (Class 2)"
  * code.text = "GC"
  * reason = $NCIT#C134002 "Residual Solvent"
  * goalId = "df12e247-f1ce-478d-92ce-db1e4c177a01"
* action[+]
  * title = "Description (Powder Color)"
  * code.text = "Visual"
  * reason = $NCIT#C205026 "Organoleptic"
  * goalId = "3c0bb990-5a37-42fc-bdf5-e23ef4b8ab9b"
* action[+]
  * title = "pH (aq. solution)"
  * code.text = "pH Meter"
  * reason = $NCIT#C205029 "pH"
  * goalId = "61bce85b-051b-4dca-b9fe-7a4bf5940bf5"


Instance: e77591f1-324a-4ca3-a43f-e11ce7298dce
InstanceOf: ResultSummary
Usage: #inline
Title: "Result Summary Long Term for DS-001"
Description: "an example Result Summary instance for the Stability Summary example"
* status = #final
* identifier.value = "Single Stage"
* category = $NCIT#C134014 "25 +/- 2 degrees C/60% +/- 5%RH"
* code = $NCIT#C86043 "Upright"
* subject = Reference(urn:uuid:06d2d91f-cf33-491f-926c-94f82dd71393)
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.5 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.20 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.10 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.40 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.2 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.21 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.11 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.42 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.0 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.22 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.12 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.45 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.8 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.25 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.15 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.50 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.6 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.30 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.18 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.60 '%' "percent"

Instance: 3901b9ac-d269-4347-a4dc-cecad8fedc1b
InstanceOf: ResultSummary
Usage: #inline
Title: "Result Summary Long Term for  DS-002"
Description: "an example Result Summary instance for the Stability Summary example"
* status = #final
* identifier.value = "Single Stage"
* category = $NCIT#C134014 "25 +/- 2 degrees C/60% +/- 5%RH"
* code = $NCIT#C86043 "Upright"
* subject = Reference(urn:uuid:21b64af0-e924-4cc7-a222-3e07e7adf30f)
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.6 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.19 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.11 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.40 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.4 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.25 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.13 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.47 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.9 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.20 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.11 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.40 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.7 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.30 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.20 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.60 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.0 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.22 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.18 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.40 '%' "percent"

Instance: 66f10285-98b0-4521-9a5b-efc3dfbf81f2
InstanceOf: ResultSummary
Usage: #inline
Title: "Result Summary Long Term for  DS-002"
Description: "an example Result Summary instance for the Stability Summary example"
* status = #final
* identifier.value = "Single Stage"
* category = $NCIT#C134014 "25 +/- 2 degrees C/60% +/- 5%RH"
* code = $NCIT#C86043 "Upright"
* subject = Reference(urn:uuid:3a23fc7d-970b-415f-a0cd-4795c69f3043)
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.0 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.25 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.10 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.37 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.0 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.40 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.20 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.64 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.2 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.22 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.15 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 12 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.42 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.5 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.10 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.23 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 18 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.42 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.5 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.12 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.13 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 24 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.31 '%' "percent"

Instance: 2eeb9482-3b6c-440a-939e-203d9de83d60
InstanceOf: ResultSummary
Usage: #inline
Title: "Result Summary Accelerated"
Description: "an example Result Summary instance for the Stability Summary example"
* status = #final
* identifier.value = "Single Stage"
* category = $NCIT#C134016 "40 +/- 2 degrees C/75% +/- 5%RH"
* code = $NCIT#C86043 "Upright"
* subject = Reference(urn:uuid:06d2d91f-cf33-491f-926c-94f82dd71393)
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.5 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.40 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 3 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.2 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 3 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 1.20 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 98.5 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 1.85 '%' "percent"

Instance: 50aa5c04-b187-4f04-b995-6f05a278090e
InstanceOf: ResultSummary
Usage: #inline
Title: "Result Summary Accelerated"
Description: "an example Result Summary instance for the Stability Summary example"
* status = #final
* identifier.value = "Single Stage"
* category = $NCIT#C134016 "40 +/- 2 degrees C/75% +/- 5%RH"
* code = $NCIT#C86043 "Upright"
* subject = Reference(urn:uuid:21b64af0-e924-4cc7-a222-3e07e7adf30f)
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.6 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.45 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 3 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.0 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 3 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 1.31 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 98.3 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 2.01 '%' "percent"

Instance: 24f62b44-d9d9-4a9f-9af9-025bb890c00f
InstanceOf: ResultSummary
Usage: #inline
Title: "Result Summary Accelerated"
Description: "an example Result Summary instance for the Stability Summary example"
* status = #final
* identifier.value = "Single Stage"
* category = $NCIT#C134016 "40 +/- 2 degrees C/75% +/- 5%RH"
* code = $NCIT#C86043 "Upright"
* subject = Reference(urn:uuid:3a23fc7d-970b-415f-a0cd-4795c69f3043)
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 100.4 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 0 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 0.46 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 3 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 99.0 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 3 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 1.20 '%' "percent"

* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C60819 "Assay"
  * valueQuantity = 97.8 '%' "percent"
* component[+]
  * extension[studyInterval]
    * extension[timePoint].valueQuantity = 6 'mo' "month"
    * extension[timePointDescription].valueCoding = $NCIT#C96150 "Immediate Testing"
  * code = $NCIT#C204971 "Impurity"
  * valueQuantity = 1.90 '%' "percent"

Instance: 06d2d91f-cf33-491f-926c-94f82dd71393
InstanceOf: DrugSubstanceBatch
Usage: #inline
Title: "DS-001"
Description: "an example Drug Substance Batch instance for the Stability Summary example"
* identifier.value = "GlycerolMonostearate01"
* extension[api-batch]
  * extension[manufacturingDate].valueDateTime = 2022-05-05
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "batch mixing start date"
  * extension[assignedManufacturer].valueReference = Reference(urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579)
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
  * extension[batchUtilization].valueCodeableConcept =  $NCIT#C185328 "Stability Study"
  * extension[batchQuantity].valueQuantity = 100 'kg' "kilograms"
  * extension[container]
    * extension[lotNumber].valueString = "000001"
    * extension[type].valueCodeableConcept = $NCIT#C43193	"DRUM"
    * extension[closureSystemDescription].valueString = "a metal drum lined with plastic"
    * extension[closureType].valueCodeableConcept = $NCIT#C96115	"Continuous Thread, Metal"
    * extension[quantity].valueRatio
      * numerator = 100 'kg' "kilograms"
      * denominator = 1 '1' "drum"
* instance = true
* code.reference = Reference(urn:uuid:f8d2d350-97dd-4433-995e-a9f7899073bf)

Instance: 21b64af0-e924-4cc7-a222-3e07e7adf30f
InstanceOf: DrugSubstanceBatch
Usage: #inline
Title: "DS-002"
Description: "an example Drug Substance Batch instance for the Stability Summary example"
* identifier.value = "GlycerolMonostearate01"
* extension[api-batch]
  * extension[manufacturingDate].valueDateTime = 2022-05-06
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "batch mixing start date"
  * extension[assignedManufacturer].valueReference = Reference(urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579)
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
  * extension[batchUtilization].valueCodeableConcept =  $NCIT#C185328 "Stability Study"
  * extension[batchQuantity].valueQuantity = 100 'kg' "kilograms"
  * extension[container]
    * extension[lotNumber].valueString = "000001"
    * extension[type].valueCodeableConcept = $NCIT#C43193	"DRUM"
    * extension[closureSystemDescription].valueString = "a metal drum lined with plastic"
    * extension[closureType].valueCodeableConcept = $NCIT#C96115	"Continuous Thread, Metal"
    * extension[quantity].valueRatio
      * numerator = 100 'kg' "kilograms"
      * denominator = 1 '1' "drum"
* instance = true
* code.reference = Reference(urn:uuid:f8d2d350-97dd-4433-995e-a9f7899073bf)

Instance: 3a23fc7d-970b-415f-a0cd-4795c69f3043
InstanceOf: DrugSubstanceBatch
Usage: #inline
Title: "DS-003"
Description: "an example Drug Substance Batch instance for the Stability Summary example"
* identifier.value = "GlycerolMonostearate01"
* extension[api-batch]
  * extension[manufacturingDate].valueDateTime = 2022-05-07
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "batch mixing start date"
  * extension[assignedManufacturer].valueReference = Reference(urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579)
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
  * extension[batchUtilization].valueCodeableConcept =  $NCIT#C185328 "Stability Study"
  * extension[batchQuantity].valueQuantity = 100 'kg' "kilograms"
  * extension[container]
    * extension[lotNumber].valueString = "000001"
    * extension[type].valueCodeableConcept = $NCIT#C43193	"DRUM"
    * extension[closureSystemDescription].valueString = "a metal drum lined with plastic"
    * extension[closureType].valueCodeableConcept = $NCIT#C96115	"Continuous Thread, Metal"
    * extension[quantity].valueRatio
      * numerator = 100 'kg' "kilograms"
      * denominator = 1 '1' "drum"
* instance = true
* code.reference = Reference(urn:uuid:f8d2d350-97dd-4433-995e-a9f7899073bf)

Instance: StabilitySummaryBundleWIP
InstanceOf: CMCeCTDDocumentSP7181
Title: "SP7181 Bundle (WIP)"
Description: "Product Characterisation of Impurities bundle"
Usage: #example
* identifier.system = $IDsys
* identifier.value = "urn:uuid:cc61acdf-f0e9-4d35-a9d4-02ca9040b5a8"
* timestamp = 2025-06-10T01:12:07.108Z
* entry[+]
  * resource = 0a47185b-397c-4a92-891b-f585a46d303f
  * fullUrl = "urn:uuid:0a47185b-397c-4a92-891b-f585a46d303f"
* entry[+]
  * resource = 98effc99-db2b-428d-89aa-0ce426e02788
  * fullUrl = "urn:uuid:98effc99-db2b-428d-89aa-0ce426e02788"
* entry[+]
  * resource = f8d2d350-97dd-4433-995e-a9f7899073bf
  * fullUrl = "urn:uuid:f8d2d350-97dd-4433-995e-a9f7899073bf"
* entry[+]
  * resource = ae37dc7b-4f45-4a77-ae4f-46a7f2563603
  * fullUrl = "urn:uuid:ae37dc7b-4f45-4a77-ae4f-46a7f2563603"
* entry[+]
  * resource = e77591f1-324a-4ca3-a43f-e11ce7298dce
  * fullUrl = "urn:uuid:e77591f1-324a-4ca3-a43f-e11ce7298dce"
* entry[+]
  * resource = 3901b9ac-d269-4347-a4dc-cecad8fedc1b
  * fullUrl = "urn:uuid:3901b9ac-d269-4347-a4dc-cecad8fedc1b"
* entry[+]
  * resource = 66f10285-98b0-4521-9a5b-efc3dfbf81f2
  * fullUrl = "urn:uuid:66f10285-98b0-4521-9a5b-efc3dfbf81f2"
* entry[+]
  * resource = 2eeb9482-3b6c-440a-939e-203d9de83d60
  * fullUrl = "urn:uuid:2eeb9482-3b6c-440a-939e-203d9de83d60"
* entry[+]
  * resource = 50aa5c04-b187-4f04-b995-6f05a278090e
  * fullUrl = "urn:uuid:50aa5c04-b187-4f04-b995-6f05a278090e"
* entry[+]
  * resource = 24f62b44-d9d9-4a9f-9af9-025bb890c00f
  * fullUrl = "urn:uuid:24f62b44-d9d9-4a9f-9af9-025bb890c00f"
* entry[+]
  * resource = 06d2d91f-cf33-491f-926c-94f82dd71393
  * fullUrl = "urn:uuid:06d2d91f-cf33-491f-926c-94f82dd71393"
* entry[+]
  * resource = 21b64af0-e924-4cc7-a222-3e07e7adf30f
  * fullUrl = "urn:uuid:21b64af0-e924-4cc7-a222-3e07e7adf30f"
* entry[+]
  * resource = 3a23fc7d-970b-415f-a0cd-4795c69f3043
  * fullUrl = "urn:uuid:3a23fc7d-970b-415f-a0cd-4795c69f3043"
* entry[+]
  * resource = 4b565cf3-5353-48af-8cd6-5ccf4e9fd579
  * fullUrl = "urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579"
* entry[+]
  * resource = 1c46a65c-01d3-4544-9632-83cd3f4061ae
  * fullUrl = "urn:uuid:1c46a65c-01d3-4544-9632-83cd3f4061ae"
* entry[+]
  * resource = 9e5fbc1c-0a0b-45aa-821e-febe14b73c5b
  * fullUrl = "urn:uuid:9e5fbc1c-0a0b-45aa-821e-febe14b73c5b"
* entry[+]
  * resource = fd7fa516-31df-4bd0-8ac3-5216a448ea1f
  * fullUrl = "urn:uuid:fd7fa516-31df-4bd0-8ac3-5216a448ea1f"
* entry[+]
  * resource = cbe4f761-4cfd-42fd-b6d4-94ee3ecd26bf
  * fullUrl = "urn:uuid:cbe4f761-4cfd-42fd-b6d4-94ee3ecd26bf"
* entry[+]
  * resource = 28d86939-4e85-48b6-b29c-a39aa8b3add1
  * fullUrl = "urn:uuid:28d86939-4e85-48b6-b29c-a39aa8b3add1"
* entry[+]
  * resource = aab233b1-6c9b-4b3e-aad8-3d8bc7abf542
  * fullUrl = "urn:uuid:aab233b1-6c9b-4b3e-aad8-3d8bc7abf542"

Instance: 1c46a65c-01d3-4544-9632-83cd3f4061ae
InstanceOf: MarkdownReference
Usage: #inline
Title: "Study Design Markdown"
Description: "an example MarkdownReference instance for the Stability Summary example"
* content.attachment.data = "QmF0Y2hlcyBUZXN0ZWQ6Ci0gRFMtMDAxIChQaWxvdCBzY2FsZSwgMTAwIGtnKQotIERTLTAwMiAoUGlsb3Qgc2NhbGUsIDEwMCBrZykKLSBEUy0wMDMgKENvbW1lcmNpYWwgc2NhbGUsIDUwMCBrZykKClN0b3JhZ2UgQ29uZGl0aW9uczoKLSBMb25nLXRlcm06IDI1IMKwQyDCsSAyIMKwQyAvIDYwICUgUkggwrEgNSAlIFJIIGZvciAyNCBtb250aHMKLSBBY2NlbGVyYXRlZDogNDAgwrBDIMKxIDIgwrBDIC8gNzUgJSBSSCDCsSA1ICUgUkggZm9yIDYgbW9udGhzCgpDb250YWluZXIvQ2xvc3VyZToKRG91YmxlLWxheWVyIHBvbHlldGh5bGVuZSBiYWdzIGluc2lkZSBwb2x5Y2FyYm9uYXRlIGRydW1zLg=="

Instance: 9e5fbc1c-0a0b-45aa-821e-febe14b73c5b
InstanceOf: MarkdownReference
Usage: #inline
Title: "Long Term Markdown"
Description: "an example MarkdownReference instance for the Stability Summary example"
* content.attachment.data = "QXNzYXkgYW5kIFRvdGFsIEltcHVyaXRpZXMgb3ZlciAyNCBtb250aHMgZm9yIGJhdGNoZXMgRFMtMDAxLCBEUy0wMDIsIERTLTAwMw=="

Instance: fd7fa516-31df-4bd0-8ac3-5216a448ea1f
InstanceOf: MarkdownReference
Usage: #inline
Title: "Accelerated Markdown"
Description: "an example MarkdownReference instance for the Stability Summary example"
* content.attachment.data = "QXNzYXkgYW5kIFRvdGFsIEltcHVyaXRpZXMgb3ZlciA2IG1vbnRocyBmb3IgYmF0Y2hlcyBEUy0wMDEsIERTLTAwMiwgRFMtMDAz"

Instance: cbe4f761-4cfd-42fd-b6d4-94ee3ecd26bf
InstanceOf: MarkdownReference
Usage: #inline
Title: "Trend Analysis Markdown"
Description: "an example MarkdownReference instance for the Stability Summary example"
* content.attachment.data = "VW5kZXIgbG9uZy10ZXJtIGNvbmRpdGlvbnMsIGFzc2F5IGRlY3JlYXNlZCBieSA8IDEgJSBvdmVyIDI0IG1vbnRoczsgdG90YWwgaW1wdXJpdGllcyByZW1haW5lZCBiZWxvdyAxLjAgJSBmb3IgYWxsIGJhdGNoZXMuCgpVbmRlciBhY2NlbGVyYXRlZCBjb25kaXRpb25zLCBhIGdyYWR1YWwgaW5jcmVhc2UgaW4gaW1wdXJpdGllcyAodXAgdG8gMS44NSAlIGF0IDYgbW9udGhzKSBjb3JyZXNwb25kZWQgdG8gYSBzbGlnaHQgYXNzYXkgZGVjcmVhc2UgdG8gOTguNSAlLiBObyBuZXcgZGVncmFkYXRpb24gcGVha3Mgd2VyZSBvYnNlcnZlZC4="

Instance: 28d86939-4e85-48b6-b29c-a39aa8b3add1
InstanceOf: MarkdownReference
Usage: #inline
Title: "Conclusion Markdown"
Description: "an example MarkdownReference instance for the Stability Summary example" 
* content.attachment.data = "QWxsIHN0YWJpbGl0eS1pbmRpY2F0aW5nIHBhcmFtZXRlcnMgcmVtYWluIHdpdGhpbiBhY2NlcHRhbmNlIGNyaXRlcmlhIHRocm91Z2ggMjQgbW9udGhzIGF0IDI1IMKwQy82MCAlIFJILiBCYXNlZCBvbiB0aGUgYWJzZW5jZSBvZiBzaWduaWZpY2FudCBkZWdyYWRhdGlvbiwgYSByZXRlc3QgcGVyaW9kIG9mIDI0IG1vbnRocyB3aGVuIHN0b3JlZCBpbiBkb3VibGUtbGF5ZXIgcG9seWV0aHlsZW5lIGJhZ3MgYXQgMi04IMKwQyBpcyBqdXN0aWZpZWQu"

Instance: aab233b1-6c9b-4b3e-aad8-3d8bc7abf542
InstanceOf: MarkdownReference
Usage: #inline
Title: "Storage Statement Markdown"
Description: "an example MarkdownReference instance for the Stability Summary example"
* content.attachment.data = "U3RvcmUgRHJ1ZyBTdWJzdGFuY2UgYXQgMi04IMKwQzsgcHJvdGVjdCBmcm9tIG1vaXN0dXJlLg=="