Instance: 278736ef-2ddf-49e4-895c-3a9f34db36cf
InstanceOf: ExcipientRaw
Description: "The Excipient Raw representing Cochineal"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"
* identifier.value = "Cochineal"
* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C134009 "Company Standard"
// * manufacturer = Reference(urn:uuid:310aa241-52ff-4e7b-b956-7642f75fc18b)
// * supplier = Reference(urn:uuid:fa889ced-1b1d-4467-a37b-112dc354a59e)
* code[unii].code = $UNII#TZ8Z31B35M
* name[gsrs].name = "Cochineal"
* name[gsrs].preferred = true
* sourceMaterial.type = $NCIT#C48807 "Chemical"
* sourceMaterial.genus.text = "Dactylopius"
* sourceMaterial.species.text = "cochineal"
* sourceMaterial.countryOfOrigin =  $Country#TUR "Turkey" 

Instance: 37bf5cc0-33bf-478b-b84e-ccb35143ef6e
InstanceOf: QualitySpecification
Description: "Quality Specification for Cochineal"
Usage: #inline

* extension[ApprovalStatus].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* identifier.value = "CochinealSpecification"
* version = "1.0"
* title = "Cochineal specification Example"
* type.coding[SpecType] = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents"
* status = #active
* subjectReference = Reference(urn:uuid:278736ef-2ddf-49e4-895c-3a9f34db36cf)
* date = 2023-12-01
* goal[+]
  * id = "e900181a-876c-4ed6-ac96-d5a73c3d6767"
  * description.text = "White Solid"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "White solid"
* goal[+]
  * id = "21c69fab-2cb3-46dc-8c56-d1c64d5ddf5c"
  * description.text = "IR spectrum conforms to reference standard"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "IR spectrum conforms to reference standard"
* goal[+]
  * id = "1f476689-f440-4a77-9e9c-0615af3571eb"
  * description.text = "pH 3.4-4.3"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * modifierExtension[targetRange]
      * extension[low]
        * valueQuantity = 3.4 $UCUM#[pH] "[pH]"
          * comparator = #>=
      * extension[high]
        * valueQuantity = 4.3 $UCUM#[pH] "[pH]"
          * comparator = #<=
* goal[+]
  * id = "9c0d2619-4505-4e6b-a801-bc30f84bc3e2"
  * description.text = "residue <= 0.21%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.21 $UCUM#% "percent"
      * comparator = #<=
* goal[+]
  * id = "fc230a97-fd1a-4017-8603-822c5430a217"
  * description.text = "Formaldehyde NMT 1.5%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 1.5 $UCUM#% "percent"
      * comparator = #<=
* goal[+]
  * id = "8d6688e0-7412-4d64-afe8-b73d8aec596e"
  * description.text = "Impurity C NMT 2%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 2 $UCUM#% "percent"
      * comparator = #<=
* goal[+]
  * id = "f8e8343d-a37d-4b91-916b-f58d6947dc9c"
  * description.text = "Unspecified Impurity NMT 0.10 % w/w"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.10 $UCUM#%{WeightToWeight} "percent WeightToWeight" 
      * comparator = #<=
* goal[+]
  * id = "be7abaa1-0769-4560-af76-326e07d1df9a"
  * description.text = "Total Impurities"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.7 $UCUM#% "percent"
      * comparator = #<=
* goal[+]
  * id = "cfdd469d-020b-4047-946f-f513d58f007f"
  * description.text = "Total Unidentified Impurities NMT 0.3%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.3 $UCUM#% "percent"
      * comparator = #<=
* goal[+]
  * id = "c5eea380-416f-4d19-a21e-c021f3c7c543"
  * description.text = "RRT 2.2 NMT 0.10% w/w"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.10 $UCUM#%{WeightToWeight} "percent WeightToWeight"
      * comparator = #<=
* goal[+]
  * id = "41e19fa2-f568-443e-8bc1-6b0a6dca9d0c"
  * description.text = "RRT 2.4 NMT 0.10% w/w"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.10 $UCUM#%{WeightToWeight} "percent WeightToWeight"
      * comparator = #<=
* goal[+]
  * id = "e493cb3d-45b6-4463-b9b6-e588c51e032c"
  * description.text = "RRT 3.41 NMT 0.10% w/w"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.20 $UCUM#%{WeightToWeight} "percent WeightToWeight"
      * comparator = #<=
* action[+]
  * linkId = "b9359ce8-73f3-45c5-9674-98d850053aa2"
  * prefix = "Single Stage"
  * title = "Appearance"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valuePositiveInt = 1
  * reason[=].coding = $NCIT#C205026 "Organoleptic"
  * reason[+].extension[categoryLevel].valuePositiveInt = 2
  * reason[=].coding = $NCIT#C138990 "Description/Appearance"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-101"
  * goalId[+] = "e900181a-876c-4ed6-ac96-d5a73c3d6767"
* action[+]
  * linkId = "443ed163-7a7b-4d48-9462-be5532158411"
  * prefix = "Single Stage"
  * title = "Identification"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "FTIR"
  * reason[+].extension[categoryLevel].valuePositiveInt = 1
  * reason[=].coding = $NCIT#C138993 "Identification"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-102"
  * goalId[+] = "21c69fab-2cb3-46dc-8c56-d1c64d5ddf5c"
* action[+]
  * linkId = "058193ee-dd86-4c63-9f47-7b0608abbca4"
  * prefix = "Single Stage"
  * title = "pH"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valuePositiveInt = 1
  * reason[=].coding = $NCIT#C205029 "pH"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-103"
  * goalId[+] = "1f476689-f440-4a77-9e9c-0615af3571eb"
* action[+]
  * linkId = "940c8db4-9ed1-416e-84ec-9f9e143be8ab"
  * prefix = "Single Stage"
  * title = "Residue on Ignition"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valuePositiveInt = 1
  * reason[=].coding = $NCIT#C134276 "Residue on Ignition"
  * documentation.type = #documentation
  * documentation.label = "USP <281>"
  * goalId[+] = "9c0d2619-4505-4e6b-a801-bc30f84bc3e2"
* action[+]
  * linkId = "9fca0a37-6d10-4273-a966-c026ab6eb07d"
  * prefix = "Single Stage"
  * title = "Impurities"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "FTIR"
  * reason[+].extension[categoryLevel].valuePositiveInt = 1
  * reason[=].coding = $NCIT#C204971 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-104"
  * goalId[+] = "fc230a97-fd1a-4017-8603-822c5430a217"
  * goalId[+] = "8d6688e0-7412-4d64-afe8-b73d8aec596e"
  * goalId[+] = "f8e8343d-a37d-4b91-916b-f58d6947dc9c"
  * goalId[+] = "be7abaa1-0769-4560-af76-326e07d1df9a"
  * goalId[+] = "cfdd469d-020b-4047-946f-f513d58f007f"
  * action[+]
    * title = "Unidentified Impurities"
    * action[+]
      * title = "2.2"
      * prefix = "RRT"
      * goalId[+] = "c5eea380-416f-4d19-a21e-c021f3c7c543"
    * action[+]
      * title = "2.4"
      * prefix = "RRT"
      * goalId[+] = "41e19fa2-f568-443e-8bc1-6b0a6dca9d0c"
    * action[+]
      * title = "3.41"
      * prefix = "RRT"
      * goalId[+] = "e493cb3d-45b6-4463-b9b6-e588c51e032c"
Instance: 4bd1ed57-852b-42be-a9b0-355f8a2aa7d4
InstanceOf: EctdCompositionSP4151
Description: "Composition SP4151 implementing eCTD 3.2.P.4.0"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/ectd-composition-sp4151"
* identifier.value = "CochinealSpecificationComposition"
* status = #final
* type.coding = $SectionTypes#ich_3.2.p.4 "Control of Excipients"
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* date = 2024-01-01T19:42:35.254Z
* title = """Cochineal specification Composition Example"""
* section
  * title = "32P40"
  * entry = Reference(urn:uuid:37bf5cc0-33bf-478b-b84e-ccb35143ef6e)
Instance: 7cdbb042-9275-4599-a1fe-08877846bf94
InstanceOf: CMCeCTDDocumentSP4151
Description: "FHIR document bundle with the CMC eCTD SP4151 profile for an Excipient"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:813b4312-8b6d-42cc-9b8c-8bb6463388cc"
* timestamp = 2024-01-01T19:42:35.255Z
* entry[0].resource = 4bd1ed57-852b-42be-a9b0-355f8a2aa7d4
* entry[=].fullUrl = "urn:uuid:4bd1ed57-852b-42be-a9b0-355f8a2aa7d4"
* entry[+].resource = 37bf5cc0-33bf-478b-b84e-ccb35143ef6e
* entry[=].fullUrl = "urn:uuid:37bf5cc0-33bf-478b-b84e-ccb35143ef6e"
* entry[+].resource = 278736ef-2ddf-49e4-895c-3a9f34db36cf
* entry[=].fullUrl = "urn:uuid:278736ef-2ddf-49e4-895c-3a9f34db36cf"
* entry[+].resource = 4f3e9af1-306b-4fad-bf04-7881400b266a
* entry[=].fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"
