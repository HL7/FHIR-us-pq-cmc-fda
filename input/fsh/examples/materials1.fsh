Instance: 49438799-e286-432c-b8d8-68ac77e7f519
InstanceOf: CodedOrganization
Title: "CodedOrganization J. Jones Research"
Description: "Example of a Sponsor type of Organization"
Usage: #example
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "143265625"
* identifier[DUNSNumber].system = $DUNS
* name = "J. Jones Research"
* contact.address
  * type = #postal
* contact.address.line[0] = "123 Broad Way"
* contact.address.state = "NY"
* contact.address.city = "New York"
* contact.address.country = "USA"   //* contact.address.country = "United States""
* contact.address.postalCode = "00062"
* contact.address.text = "J. Jones Research, 123 Broad Way, New York, NY, United States"

Instance: 4b565cf3-5353-48af-8cd6-5ccf4e9fd579
InstanceOf: CodedOrganization
Title: "Manufacturing Site (J. Jones Research)"
Description: "Manufacturing site instance of an Organization Example. There will be a type code in future"
Usage: #example
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "783452221"
* identifier[DUNSNumber].system = $DUNS
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6913973"
* identifier[FEINumber].system = $FEINumber
* name = "Manufacturing Site (J. Jones Research)"
* contact.address
  * type = #postal
* contact.address.line[0] = "444 Grant Street"
* contact.address.city = "Bedford"
* contact.address.state = "NY"
* contact.address.country = "USA"   //* contact.address.country = "United States""
* contact.address.postalCode = "15600"
* contact.address.text = "Manufacturing Site (J. Jones Research), 444 Grant Street, Bedford, NY, United States"

Instance: e99bddfa-c1b5-435b-bbe8-24816b4e23e5
InstanceOf: CodedOrganization
Title: "Vidinaid"
Description: "Manufacturing site (Vidinaid) instance with second address line"
Usage: #example
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
* identifier[FEINumber].system = $FEINumber
* name = "Vidinaid"
* contact.address
  * type = #postal
* contact.address.line[0] = "100 Stillwater Avenue"
* contact.address.line[1] = "Building #2"
* contact.address.city = "Bangor"
* contact.address.country = "USA"   //* contact.address.country = "United States""
* contact.address.postalCode = "04401"
* contact.address.text = "Vidinaid, 100 Stillwater Avenue, Building #2, Bangor, ME, USA"
* contact.address.state = "ME"

Instance: 0efb1188-04f0-44ba-bfe7-ca6169ca8703
InstanceOf: ExcipientRaw
Title: "Example SubstanceDefinition for Carrageenan"
Description: "Identification of the subject of the specification which is a sourced plant based raw materials. It contains the sourceMaterial backbone elements."
Usage: #example
* identifier.value = "carrageenan"
* classification = $NCIT#C3641132 "Structurally Diverse Substance"
* grade = $NCIT#C134009 "Company Standard"
* manufacturer = Reference(urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579)
* code[unii].code = $UNII#5C69YCD2YJ
* name[gsrs].name = "Carrageenan"
* name[gsrs].preferred = true
* sourceMaterial.type = $NCIT#C14258 "Plant"
* sourceMaterial.genus.text = "palmaria"
* sourceMaterial.species.text = "palmata"
* sourceMaterial.countryOfOrigin =  $Country#USA "United States of America" 

Instance: fd84a8b5-9e96-451c-a5c6-097c943eb38a
InstanceOf: ExcipientRaw
Title: "Example SubstanceDefinition for anhydrous citric acid"
Description: "Identification of the subject of the specification. It is commonly used in the pharmaceutical industry as a stabilizer and preservative."
Usage: #example
* identifier.value = "Citric acid"
* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C134009 "Company Standard"
* manufacturer = Reference(urn:uuid:e99bddfa-c1b5-435b-bbe8-24816b4e23e5)
* supplier = Reference(urn:uuid:d9e7c2f7-0f59-4645-bb6d-5a8dd2425049)
* code[unii].code = $UNII#XF417D3PSL
* name[gsrs].name = "ANHYDROUS CITRIC ACID"
* name[gsrs].preferred = true
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: cd84a8b5-4e96-551c-15c6-c97c943eb38a
InstanceOf: SubstanceDefinitionHandle
Title: "Example SubstanceDefinitionHandle for Asprin"
Description: "Identification of the Drug Substance of the raw materials whose specifications are for Aspirin."
Usage: #example
* identifier.value = "salicylate"
* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C134006 "USP-NF"
* manufacturer = Reference(urn:uuid:e99bddfa-c1b5-435b-bbe8-24816b4e23e5)
* code[unii].code = $UNII#R16CO5Y76E
* name[sub].name =  "ACETYLSALICYLIC ACID"
* name[gsrs].name = "ASPIRIN"
* name[gsrs].preferred = true


Instance: d3a11b25-e160-4688-b807-6383364096fd
InstanceOf: ExcipientRaw
Title: "Example SubstanceDefinition for water"
Description: "Identification of the subject of the specification"
Usage: #example
* identifier.value = "water"
* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C176793 "BP"
* manufacturer = Reference(urn:uuid:e99bddfa-c1b5-435b-bbe8-24816b4e23e5)
* supplier = Reference(urn:uuid:d9e7c2f7-0f59-4645-bb6d-5a8dd2425049)
* code[unii].code = $UNII#059QF0KO0R
* name[gsrs].name = "WATER"
* name[gsrs].preferred = true
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: ab241f8c-d21e-4382-a70a-52190dbdf07e
InstanceOf: QualitySpecification
Title: "Carrageenan specification Example"
Description: "Example raw material (Carrageenan) specification for CTD 3.2.S.2.3.  Raw matrials and Excipients share the same profile but are in different bundles."
Usage: #example

* extension[ApprovalStatus].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* identifier.value = "RawCitricacid"
* version = "1.0"
* title = "Raw Material (Carrageenan) Specification Example"
* type.coding[SpecType] = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents" 
* status = #active
* subjectReference = Reference(urn:uuid:0efb1188-04f0-44ba-bfe7-ca6169ca8703)
* date = 2023-11-28
* goal[+]
  * id = "e512320e-0ffb-47d9-922a-5415aaa4cb30"
  * description.text = "Viscous upon cooling"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Viscous upon cooling"
* goal[+]
  * id = "2c6e465b-4dec-4a09-9dc5-58c480009d27"
  * description.text = "Kappa, iota or lambda"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Kappa, iota or Lambda"
* goal[+]
  * id = "c233a5f7-37e2-4b2b-9f04-cf1b25534865"
  * description.text = "Blue, stringy precipitate forms"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Blue stringy precipitate forms"
* goal[+]
  * id = "c759888d-1eac-4a12-aa9b-403f395f2c18"
  * description.text = "FTIR matches standard"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "FTIR matches standard"
* goal[+]
  * id = "66d4035c-633a-49b1-b974-e3171911f44a"
  * description.text = "max 200 cfu/g"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 200 $UCUM#[CFU] "colony forming unit"
      * comparator = #<=
* goal[+]
  * id = "95bf9d43-f337-4905-9c50-788b69d00843"
  * description.text = "Negative"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Negative"
* goal[+]
  * id = "4e475e2c-c235-4433-b1e4-201a17e45796"
  * description.text = "Negative"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "Negative"
* goal[+]
  * id = "af4ec6c3-4590-43f7-92e0-c8dae0e76e1f"
  * description.text = "As Reported"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "As Reported"
* goal[+]
  * id = "b00cb099-5fd8-4ef4-b05b-c1c7c4cd4c73"
  * description.text = "As Reported"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "As Reported"
* goal[+]
  * id = "464f3063-0a4b-4408-9f4a-d6c0b8170097"
  * description.text = "<= 3 ppm"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 3 $UCUM#[ppm] "part per million"
      * comparator = #<=
* goal[+]
  * id = "03fbc16c-d4d4-40ac-8689-448bda831dac"
  * description.text = "<= 10 ppm"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 10 $UCUM#[ppm] "part per million"
      * comparator = #<=
* goal[+]
  * id = "28aba010-126e-4c47-8611-367cdacdd87e"
  * description.text = "As Reported"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "As Reported"
* goal[+]
  * id = "4b3aa353-3bc7-463f-b4c2-defd041da2c7"
  * description.text = "<= 2.0%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 2 $UCUM#% "percent"
      * comparator = #<=
* goal[+]
  * id = "8125f603-96e7-4f3e-8b13-c15c5870e6e6"
  * description.text = "<30ml H2O @ 25C"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 30 $UCUM#mL "milliliter"
      * comparator = #<=
  * target[+]
    * detailQuantity = 25 $UCUM#Cel "degree Celsius"
      * comparator = #<=
* action[+]
  * id = "428fa917-a7d3-4515-9b48-c9366acd673a"
  * prefix = "Single Stage"
  * title = "Identification"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C138993 "Identification"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-001"
  * action[+]
    * title = "Identification A"
    * goalId[+] = "e512320e-0ffb-47d9-922a-5415aaa4cb30"
  * action[+]
    * title = "Identification B"
    * goalId[+] = "2c6e465b-4dec-4a09-9dc5-58c480009d27"
  * action[+]
    * title = "Identification C"
    * goalId[+] = "c233a5f7-37e2-4b2b-9f04-cf1b25534865"
  * action[+]
    * title = "Identification D"
    * goalId[+] = "c759888d-1eac-4a12-aa9b-403f395f2c18"
* action[+]
  * id = "f7cbb73f-4220-4987-b498-c049230091ea"
  * prefix = "Single Stage"
  * title = "Microbial Limits"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C134256 "Microbial Limits"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-002"
  * action[+]
    * title = "Total Bacterial Count"
    * goalId[+] = "66d4035c-633a-49b1-b974-e3171911f44a"
  * action[+]
    * title = "Salmonella"
    * goalId[+] = "95bf9d43-f337-4905-9c50-788b69d00843"
  * action[+]
    * title = "Escherichia Coli"
    * goalId[+] = "4e475e2c-c235-4433-b1e4-201a17e45796"
* action[+]
  * id = "f5f8221c-f9ec-4b47-8ec7-90ff44f7388c"
  * prefix = "Single Stage"
  * title = "Elemental Impurities"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "UV"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C204971 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $NCIT#C205014 "Elemental Impurity"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-003"
  * action[+]
    * title = "Cadmium (Cd)"
    * goalId[+] = "af4ec6c3-4590-43f7-92e0-c8dae0e76e1f"
  * action[+]
    * title = "Mercury (Hg)"
    * goalId[+] = "b00cb099-5fd8-4ef4-b05b-c1c7c4cd4c73"
  * action[+]
    * title = "Arsenic (As)"
    * goalId[+] = "464f3063-0a4b-4408-9f4a-d6c0b8170097"
  * action[+]
    * title = "Lead (Pb)"
    * goalId[+] = "03fbc16c-d4d4-40ac-8689-448bda831dac"
* action[+]
  * id = "37b44e91-529a-4d87-843b-ec3dd172c09f"
  * prefix = "Single Stage"
  * title = "Residual Solvents"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C204971 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $NCIT#C134002 "Residual Solvent"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-004"
  * goalId[+] = "28aba010-126e-4c47-8611-367cdacdd87e"
* action[+]
  * id = "25a64081-a0c2-4d72-8a48-538f81fcc35f"
  * prefix = "Single Stage"
  * title = "Impurity: Insoluble Matter"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C204971 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-005"
  * goalId[+] = "4b3aa353-3bc7-463f-b4c2-defd041da2c7"
* action[+]
  * id = "055a79d2-3f6b-49ec-a129-6feac5c33812"
  * prefix = "Single Stage"
  * title = "Solubility in H2O"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C60821 "Solubility"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-006"
  * goalId[+] = "8125f603-96e7-4f3e-8b13-c15c5870e6e6"

Instance: a2cba634-a481-4b07-9bd4-62c7ada31e1b
InstanceOf: QualitySpecification
Title: "Citric acid specification Example"
Description: "Example raw material (Citric acid) specification for CTD 3.2.S.2.3"
Usage: #example

* extension[ApprovalStatus].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* identifier.value = "CitricAcidSpecification"
* version = "1.0"
* title = "Citric acid specification Example"
* type.coding[SpecType] = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents" 
* status = #active
* subjectReference = Reference(urn:uuid:fd84a8b5-9e96-451c-a5c6-097c943eb38a)
* date = 2023-12-01
* goal[+]
  * id = "9bc2bfdf-c9b1-440a-bafe-89f2674341d4"
  * description.text = "White Solid"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "White solid"
* goal[+]
  * id = "59e2c94a-d383-4776-9b00-3b97b0741c9a"
  * description.text = "IR spectrum conforms to reference standard"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailString = "IR spectrum conforms to reference standard"
* goal[+]
  * id = "a2ed2d13-e96a-4d7b-b825-c69afd334cf7"
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
  * id = "e046aab8-b10f-4e13-89e6-bfa869a90b38"
  * description.text = "residue <= 0.21%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity = 0.21 $UCUM#% "percent"
      * comparator = #<=
* action[+]
  * id = "fdf5e37f-ae97-48c1-9809-33aebff37199"
  * prefix = "Single Stage"
  * title = "Appearance"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C205026 "Organoleptic"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $NCIT#C138990 "Description/Appearance"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-101"
  * goalId[+] = "9bc2bfdf-c9b1-440a-bafe-89f2674341d4"
* action[+]
  * id = "f6da4e9e-4954-4fd1-a78a-b297fea64a6f"
  * prefix = "Single Stage"
  * title = "Identification"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "FTIR"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C138993 "Identification"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-102"
  * goalId[+] = "59e2c94a-d383-4776-9b00-3b97b0741c9a"
* action[+]
  * id = "a5beeff6-dcc1-4b42-8ea1-76dea4b0da1d"
  * prefix = "Single Stage"
  * title = "[pH]"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C205029 "pH"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-103"
  * goalId[+] = "a2ed2d13-e96a-4d7b-b825-c69afd334cf7"
* action[+]
  * id = "aad4c3ce-985d-45ab-9d00-c2c01ca3813f"
  * prefix = "Single Stage"
  * title = "Residue on Ignition"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C134276 "Residue on Ignition"
  * documentation.type = #documentation
  * documentation.label = "USP <281>"
  * goalId[+] = "e046aab8-b10f-4e13-89e6-bfa869a90b38"

Instance: 5819b223-d3d2-419f-b617-b3a9a3625b89
InstanceOf: QualitySpecification
Title: "Water Specification Example"
Description: "Example raw material (water) specification for CTD 3.2.S.2.3"
Usage: #example

* extension[ApprovalStatus].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* identifier.value = "WaterSpecification"
* version = "1.0"
* title = "Water Specification Example"
* type.coding[SpecType] = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents" 
* status = #active
* subjectReference = Reference(urn:uuid:d3a11b25-e160-4688-b807-6383364096fd)
* date = 2023-12-01
* goal[+]
  * id = "1779ee35-8725-4322-ae82-89ed499f6864"
  * description.text = "<=12 deg"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailQuantity = 12 $UCUM#deg "degree"
      * comparator = #<=
* goal[+]
  * id = "2897e150-8465-48c7-9269-1cda86dc3075"
  * description.text = "Conforms to reference standard"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailString = "Conforms to reference standard"
* goal[+]
  * id = "9c86ccba-a210-4ce5-9a23-b145d9f123c6"
  * description.text = "Odorless"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailString = "Odorless"
* goal[+]
  * id = "de0f0d85-5617-4b07-98fc-9976b2dbf216"
  * description.text = "<= 395mg/L"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailQuantity = 395 $UCUM#mg "milligram"
      * comparator = #<=
* action[+]
  * id = "3668eb6f-797c-4325-8f41-160c951b4adc"
  * prefix = "Single Stage"
  * title = "Color degree"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Colorimetry"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C205026 "Organoleptic"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $NCIT#C134262 "Color of Solution"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-201"
  * goalId[+] = "1779ee35-8725-4322-ae82-89ed499f6864"
* action[+]
  * id = "42cf5de4-2c64-48fc-a4d8-9e74066c36a3"
  * prefix = "Single Stage"
  * title = "Turbidity"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Spectrophotometer"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C74723 "Turbidity"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-202"
  * goalId[+] = "2897e150-8465-48c7-9269-1cda86dc3075"
* action[+]
  * id = "c552eee7-4dca-4a01-b291-5044d5132cc9"
  * prefix = "Single Stage"
  * title = "Smell and taste"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Smell"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C205026 "Organoleptic"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $NCIT#C139027 "Odor"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-203"
  * goalId[+] = "9c86ccba-a210-4ce5-9a23-b145d9f123c6"
* action[+]
  * id = "b33b402a-0dc7-4953-a7b8-aa2efeb8434f"
  * prefix = "Single Stage"
  * title = "Total hardness"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Titration"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#C134264  "Hardness"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-204"
  * goalId[+] = "de0f0d85-5617-4b07-98fc-9976b2dbf216"

Instance: 5c0d341e-6e4f-457c-811d-cfaf3eb62ecd
InstanceOf: EctdComposition32S23
Title: "Example Composition for CTD 3.2.S.2.3"
Description: "This composition contains one section with reference to each raw material specification for the drug substance."
Usage: #example
* identifier.value = "materials1"
* status = #final
* subject = Reference(urn:uuid:cd84a8b5-4e96-551c-15c6-c97c943eb38a)
* author = Reference(urn:uuid:49438799-e286-432c-b8d8-68ac77e7f519)
* date = 2023-12-05T01:34:39.502Z
* title = """Control of Materials Example"""
* section[+]
  * code = $SectionTypes#32S231 "Raw Material Specification"
  * entry = Reference(urn:uuid:ab241f8c-d21e-4382-a70a-52190dbdf07e)
* section[+]
  * code = $SectionTypes#32S231 "Raw Material Specification"
  * entry = Reference(urn:uuid:a2cba634-a481-4b07-9bd4-62c7ada31e1b)
* section[+]
  * code = $SectionTypes#32S231 "Raw Material Specification"
  * entry = Reference(urn:uuid:5819b223-d3d2-419f-b617-b3a9a3625b89)


Instance: 7ce2088d-d281-4e2f-9a25-120a1f9805d1
InstanceOf: CMCeCTDDocument32S23
Title: "eCTD Document for 32S23"
Description: "This is an example of the Substance Control of Materials bundle profile. It is to submit Module 3 of CTD 3.2.S.2.3 folder content to the FDA."
Usage: #example
* identifier.system = $IDsys
* identifier.value = "urn:uuid:7ce2088d-d281-4e2f-9a25-120a1f9805d1"
* timestamp = 2023-12-05T01:34:39.503Z
* entry[0].resource = 5c0d341e-6e4f-457c-811d-cfaf3eb62ecd
* entry[=].fullUrl = "urn:uuid:5c0d341e-6e4f-457c-811d-cfaf3eb62ecd"
* entry[+].resource = cd84a8b5-4e96-551c-15c6-c97c943eb38a
* entry[=].fullUrl = "urn:uuid:cd84a8b5-4e96-551c-15c6-c97c943eb38a"
* entry[+].resource = 4b565cf3-5353-48af-8cd6-5ccf4e9fd579
* entry[=].fullUrl = "urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579"
* entry[+].resource = e99bddfa-c1b5-435b-bbe8-24816b4e23e5
* entry[=].fullUrl = "urn:uuid:e99bddfa-c1b5-435b-bbe8-24816b4e23e5"
* entry[+].resource = d9e7c2f7-0f59-4645-bb6d-5a8dd2425049
* entry[=].fullUrl = "urn:uuid:d9e7c2f7-0f59-4645-bb6d-5a8dd2425049"
* entry[+].resource = 0efb1188-04f0-44ba-bfe7-ca6169ca8703
* entry[=].fullUrl = "urn:uuid:0efb1188-04f0-44ba-bfe7-ca6169ca8703"
* entry[+].resource = fd84a8b5-9e96-451c-a5c6-097c943eb38a
* entry[=].fullUrl = "urn:uuid:fd84a8b5-9e96-451c-a5c6-097c943eb38a"
* entry[+].resource = d3a11b25-e160-4688-b807-6383364096fd
* entry[=].fullUrl = "urn:uuid:d3a11b25-e160-4688-b807-6383364096fd"
* entry[+].resource = ab241f8c-d21e-4382-a70a-52190dbdf07e
* entry[=].fullUrl = "urn:uuid:ab241f8c-d21e-4382-a70a-52190dbdf07e"
* entry[+].resource = a2cba634-a481-4b07-9bd4-62c7ada31e1b
* entry[=].fullUrl = "urn:uuid:a2cba634-a481-4b07-9bd4-62c7ada31e1b"
* entry[+].resource = 5819b223-d3d2-419f-b617-b3a9a3625b89
* entry[=].fullUrl = "urn:uuid:5819b223-d3d2-419f-b617-b3a9a3625b89"
* entry[+].resource = 49438799-e286-432c-b8d8-68ac77e7f519  
* entry[=].fullUrl = "urn:uuid:49438799-e286-432c-b8d8-68ac77e7f519"