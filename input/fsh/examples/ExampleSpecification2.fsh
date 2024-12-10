Instance: d9e7c2f7-0f59-4645-bb6d-5a8dd2425049
InstanceOf: CodedOrganization
Title: "Example of a Supplier Organization"
Description: "This example if for a Supplier Organization"
Usage: #inline
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "173265332"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* name = "Mega Chem Supply"
* contact.address
  * type = #postal
* contact.address.line[0] = "350 W Main Street"
* contact.address.state = "NY"
* contact.address.city = "Rochester"
* contact.address.country = "USA"   //* contact.address.country = "United States""
* contact.address.postalCode = "14608"
* contact.address.text = "Mega Chem Supply, 350 W Main Street, Rochester, NY, United States"

Instance: 580c28ac-1a2c-49fa-9be3-de997da5edcf
InstanceOf: SubstanceDefinitionHandle
Title: "Example SubstanceDefinitionHandle - IBUPROFEN"
Description: "Provides sufficient information to identify a drug substance"
Usage: #inline
* identifier.value = "P-Isobutylhydratropic Acid" 
* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C134006 "USP-NF"
* manufacturer = Reference(urn:uuid:e99bddfa-c1b5-435b-bbe8-24816b4e23e5)
* supplier = Reference(urn:uuid:d9e7c2f7-0f59-4645-bb6d-5a8dd2425049)
* code[unii].code = $UNII#WK2XYI10QM
* name[gsrs].name = "IBUPROFENPIRIN"
* name[gsrs].preferred = true

Instance: cc82a0ce-b72f-4d58-8ea0-6f323e2a9a93
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug substance"
Description: "A quality specification is for an API "
Usage: #inline

* extension[ApprovalStatus].valueCodeableConcept = $NCIT#C134010 "Tentatively Approved" 
* extension[spec-additional-info].valueMarkdown = "This API is is currently characterized through a standard battery of physicochemical characterzation tests."
* identifier.value = "ExampleSpecification2"
* version = "1.0"
* title = "Quality Specification for an API"
* type.coding[SpecType] = $NCIT#C134022 "Drug Substance"
* status = #active
* subjectReference = Reference(urn:uuid:580c28ac-1a2c-49fa-9be3-de997da5edcf)
* date = 2022-12-08 
* approvalDate = 2022-12-08
* goal[+]
  * id = "b304ed45-5295-4082-9827-f20e1ff0d1d3"
  * description.text = "Negative"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Negative"
* goal[+]
  * id = "d4e38c52-30f6-4bb7-ab84-99439a7266ce"
  * description.text = "Negative"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Negative"
* goal[+]
  * id = "2abf1f19-e1b1-42e4-b943-79f5fa1642fe"
  * description.text = "Negative"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Negative"
* goal[+]
  * id = "c0ed4a79-8f40-4d26-8845-4cea166fb627"
  * description.text = "NMT 10 colony-forming units"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 10 $UCUM#[CFU] "colony forming unit"
      * comparator = #<=
* goal[+]
  * id = "442983b5-bbc3-4534-9f1b-5ae5e4c531c1"
  * description.text = "NMT 100 colony-forming units"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 100 $UCUM#[CFU] "colony forming unit"
      * comparator = #<=
* action[+]
  * id = "997a8ec6-eabf-41a3-b166-ddc3dfb35c27"
  * title = "Microbiological Examination of Nonsterile Products"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valuePositiveInt = 1
  * reason[=].coding = $NCIT#C134256 "Microbial Limits"
  * documentation.type = #documentation
  * documentation.label = "USP <61>"
  * action[+]
    * linkId = "997a8ec6-eabf-41a3-b166-ddc3dfb35c27"
    * prefix = "Stage 1"
    * title = "Staphylococcus aureus"
    * goalId[+] = "b304ed45-5295-4082-9827-f20e1ff0d1d3"
  * action[+]
    * linkId = "997a8ec6-eabf-41a3-b166-ddc3dfb35c27"
    * prefix = "Stage 2"
    * title = "Pseudomonas aeruginosa"
    * goalId[+] = "d4e38c52-30f6-4bb7-ab84-99439a7266ce"
  * action[+]
    * linkId = "997a8ec6-eabf-41a3-b166-ddc3dfb35c27"
    * prefix = "Stage 3"
    * title = "Bacillus subtilis"
    * goalId[+] = "2abf1f19-e1b1-42e4-b943-79f5fa1642fe"
  * action[+]
    * linkId = "997a8ec6-eabf-41a3-b166-ddc3dfb35c27"
    * prefix = "Stage 4"
    * title = "Total Aerobic Microbial Count (TAMC)"
    * goalId[+] = "c0ed4a79-8f40-4d26-8845-4cea166fb627"
  * action[+]
    * linkId = "997a8ec6-eabf-41a3-b166-ddc3dfb35c27"
    * prefix = "Stage 5"
    * title = "Total Yeasts and Molds Count (TYMC)"
    * goalId[+] = "442983b5-bbc3-4534-9f1b-5ae5e4c531c1"

Instance: 55d92f43-e328-4011-bbcf-744e3afd954f
InstanceOf: EctdCompositionSP4151
Title: "eCTD Drug Substance Specification Composition SP4151"
Description: "Composition SP4151 implementing eCTD 3.2.S.4.1."
Usage: #inline

* identifier.value = "ExampleSpecification2"
* status = #final
* type.coding = $SectionTypes#ich_3.2.s.4.1 "Specification"
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* date = 2023-12-15T22:36:51.299Z
* title = """Quality Specification for an API"""
* section
  * title = "32S41"
  * entry = Reference(urn:uuid:cc82a0ce-b72f-4d58-8ea0-6f323e2a9a93)

Instance: 6004e36e-7df9-469d-9b29-8e9f9bd7e95f
InstanceOf: CMCeCTDDocumentSP4151
Title: "FHIR Document example of 3.2.S.4.1."
Description: "FHIR document bundle with the CMC eCTD SP4151 profile for a Drug Substance"
Usage: #example
* identifier.system = $IDsys
* identifier.value = "urn:uuid:3e9cc7a1-e157-4b46-980a-33a8e50dcf65"
* timestamp = 2023-12-15T22:36:51.299Z
* entry[0].resource = 55d92f43-e328-4011-bbcf-744e3afd954f
* entry[=].fullUrl = "urn:uuid:55d92f43-e328-4011-bbcf-744e3afd954f"
* entry[+].resource = cc82a0ce-b72f-4d58-8ea0-6f323e2a9a93
* entry[=].fullUrl = "urn:uuid:cc82a0ce-b72f-4d58-8ea0-6f323e2a9a93"
* entry[+].resource = 580c28ac-1a2c-49fa-9be3-de997da5edcf
* entry[=].fullUrl = "urn:uuid:580c28ac-1a2c-49fa-9be3-de997da5edcf"
* entry[+].resource = 4f3e9af1-306b-4fad-bf04-7881400b266a
* entry[=].fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"
* entry[+].resource = e99bddfa-c1b5-435b-bbe8-24816b4e23e5
* entry[=].fullUrl = "urn:uuid:e99bddfa-c1b5-435b-bbe8-24816b4e23e5"
* entry[+].resource = d9e7c2f7-0f59-4645-bb6d-5a8dd2425049
* entry[=].fullUrl = "urn:uuid:d9e7c2f7-0f59-4645-bb6d-5a8dd2425049"
