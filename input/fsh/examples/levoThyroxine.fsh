Instance: b69435a0-45c6-4d44-9fde-b354e17408d7
InstanceOf: CodedOrganization
Title: "Sponsor of API"
Description: "CodedOrganization - Large Life"
Usage: #example 

* name = "Large Life"
* contact.address.line[0] = "123 Broad Way"
* contact.address.state = "NY"
* contact.address.city = "New York"
* contact.address.country = "USA"
* contact.address.postalCode = "10020"
* contact.address.text = "123 Broad Way, New York, NY, United States"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS

Instance: e165f057-5eed-4e64-8328-4438fc88fb1b
InstanceOf: CodedOrganization
Title: "Drug Manufacturing Site - Vandechemie"
Description: "Example of Manufacturing site using the CodedOrganization profile - Vandechemie"
Usage: #example 
* name = "Vandechemie"
* contact.address[+].text = "Vandechemie, Ruzettelaan 39234, Blankenberge, 8370, Belgium"
* contact.address[=].line = "Ruzettelaan 39234"
* contact.address[=].city = "Blankenberge"
* contact.address[=].postalCode = "8370"
* contact.address[=].country = "BEL"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS

Instance: e875ef93-a730-4c44-bead-53663ae7f501
InstanceOf: CodedOrganization
Title: "East-West Manufacturing"
Description: "Manufacture of Chemicals"
Usage: #example 

* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
* identifier[FEINumber].system = $FEINumber
* name = "East-West Manufacturing"
* contact.address.line[0] = "100 Stillwater Avenue"
* contact.address.state = "ME"
* contact.address.city = "Bangor"
* contact.address.country = "USA"
* contact.address.postalCode = "04401"
* contact.address.text = "East-West Manufacturing, 100 Stillwater Avenue, Building #2, Bangor, ME, United States"
* contact.address.line[1] = "Building #2"

Instance: 0382d6b1-b656-4e9a-b5c8-9110c4d3f6b3
InstanceOf:  GraphicReference
Title: "Base64 Document Reference - Monosodium_D-thyroxine_hydrate.png"
Description: "Monosodium D-thyroxine hydrate.png"
Usage: #example           
* content.attachment.contentType = urn:ietf:bcp:13#image/png
* content.attachment.data = """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"""
* content.attachment.title = "Monosodium_D-thyroxine_hydrate.png"

Instance: 832f22b4-6f0c-41f8-9b7d-f26f55e9973c
InstanceOf: PolymorphicForm
Title: "Polymorphic Form Example"
Description: "Polymorphic Form - DextroThyroxine"
Usage: #example 
* identifier.value = "DextroThyroxine"
* structure.molecularFormula = "C15H10I4NO4.Na.H2O"
* structure.representation[structureData][+].representation = """ANMYAHDLKVNJJO-CURYUGHLSA-M"""
* structure.representation[structureData][=].type = $NCIT#C54683 "InChI File (small molecule)"
* structure.representation[structureData][+].representation = """O.[Na+].N[C@H](CC1=CC(I)=C(OC2=CC(I)=C(O)C(I)=C2)C(I)=C1)C([O-])=O"""
* structure.representation[structureData][=].type = $NCIT#C54684 "SMILES"
* structure.representation[graphic][+].document = Reference(urn:uuid:0382d6b1-b656-4e9a-b5c8-9110c4d3f6b3)
* code.code = $UNII#0H00N2AHSP
* name[gsrs].name = "DEXTROTHYROXINE SODIUM"
* name[gsrs].preferred = true

Instance: d94ad7ac-b935-432f-bc68-312b6b8dcca7
InstanceOf:  GraphicReference
Title: "Base64 Document Reference - Levothyroid.png"
Description: "Base 64 Document - png file"    
Usage: #example      
* content.attachment.contentType = urn:ietf:bcp:13#image/png
* content.attachment.data = """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"""
* content.attachment.title = "Levothyroid.png"

Instance: 22bd989e-8056-494f-9bc1-195d13428179
InstanceOf:  StructureReference
Title: "Base64 Document Reference - L-thyroxine-3D-structure-CT1000583834.sdf"
Description: "An attached SDfile.  The ASCII file content is attached in base64." 
Usage: #example       
* content.attachment.contentType = urn:ietf:bcp:13#application/x-mdl-sdfile
* content.attachment.data = """Q1QxMDAwNTgzODM0CgoKIDM1IDM2ICAwICAwICAwICAwICAwICAwICAwICAwOTk5IFYyMDAwCiAgIC0wLjAxNjcgICAgMS4zODM3ICAgIDAuMDA5NiBDICAgMCAgMCAgMCAgMCAgMAogICAgMC4wMDIxICAgLTAuMDA0MSAgICAwLjAwMjAgQyAgIDAgIDAgIDAgIDAgIDAKICAgIDEuMTc3MiAgICAyLjA5MTMgICAgMC4wMDIxIEMgICAwICAwICAwICAwICAwCiAgIC0xLjIwMjAgICAgMi4wNDg0ICAgIDAuMDE4OSBPICAgMCAgMCAgMCAgMCAgMAogICAgMS4yMDg5ICAgLTAuNjc3NCAgIC0wLjAxMzEgQyAgIDAgIDAgIDAgIDAgIDAKICAgLTEuNzk3MiAgIC0xLjA3NzEgICAgMC4wMTQxIEkgICAwICAwICAwICAwICAwCiAgICAyLjM4MTAgICAgMS40MTI4ICAgLTAuMDEzMSBDICAgMCAgMCAgMCAgMCAgMAogICAgMS4xNTQ1ICAgIDQuMTg2MiAgICAwLjAxMjggSSAgIDAgIDAgIDAgIDAgIDAKICAgLTEuNzUzMCAgICAyLjM1NDEgICAgMS4yMjM3IEMgICAwICAwICAwICAwICAwCiAgICAyLjM5NjcgICAgMC4wMzAyICAgLTAuMDIwMiBDICAgMCAgMCAgMCAgMCAgMAogICAtMi45NjIwICAgIDMuMDMyMCAgICAxLjI4MTQgQyAgIDAgIDAgIDAgIDAgIDAKICAgLTEuMTA5MSAgICAxLjk4MzEgICAgMi4zOTUwIEMgICAwICAwICAwICAwICAwCiAgICAzLjcxMTEgICAtMC43MDY5ICAgLTAuMDM2MiBDICAgMCAgMCAgMCAgMCAgMAogICAtMy41MjIzICAgIDMuMzQyMyAgICAyLjUwNTkgQyAgIDAgIDAgIDAgIDAgIDAKICAgLTEuNjY5NSAgICAyLjI5MjkgICAgMy42MTk1IEMgICAwICAwICAwICAwICAwCiAgICA0LjE0MjcgICAtMC45NDg2ICAgLTEuNDg0MCBDICAgMCAgMCAgMCAgMCAgMAogICAtMi44NzU3ICAgIDIuOTc1OSAgICAzLjY3NzQgQyAgIDAgIDAgIDAgIDAgIDAKICAgLTUuMzQ3NyAgICA0LjM2NjYgICAgMi41OTMxIEkgICAwICAwICAwICAwICAwCiAgIC0wLjY5NzcgICAgMS43MzE0ICAgIDUuMzg4NSBJICAgMCAgMCAgMCAgMCAgMAogICAgNS41MTMxICAgLTEuNTc1MiAgIC0xLjUwMTggQyAgIDAgIDAgIDAgIDAgIDAKICAgIDMuMTgzNyAgIC0xLjg0OTggICAtMi4xMzY5IE4gICAwICAwICAwICAwICAwCiAgIC0zLjQyNjkgICAgMy4yODE3ICAgIDQuODgyNSBPICAgMCAgMCAgMCAgMCAgMAogICAgNS42MzA0ICAgLTIuNzY3MSAgIC0xLjY2MTcgTyAgIDAgIDAgIDAgIDAgIDAKICAgIDYuNjAzNCAgIC0wLjgwOTIgICAtMS4zMzk5IE8gICAwICAwICAwICAwICAwCiAgICAxLjIyNDEgICAtMS43NTcyICAgLTAuMDE5MSBIICAgMCAgMCAgMCAgMCAgMAogICAgMy4zMTA0ICAgIDEuOTYyOSAgIC0wLjAxOTAgSCAgIDAgIDAgIDAgIDAgIDAKICAgLTMuNDY1MSAgICAzLjMxNzUgICAgMC4zNjk0IEggICAwICAwICAwICAwICAwCiAgIC0wLjE2OTkgICAgMS40NTE3ICAgIDIuMzQ5OSBIICAgMCAgMCAgMCAgMCAgMAogICAgNC40NjgwICAgLTAuMTExMSAgICAwLjQ3MzkgSCAgIDAgIDAgIDAgIDAgIDAKICAgIDMuNTk3MyAgIC0xLjY2MzYgICAgMC40NzM1IEggICAwICAwICAwICAwICAwCiAgICA0LjE3MDQgICAgMC4wMDExICAgLTIuMDE4MyBIICAgMCAgMCAgMCAgMCAgMAogICAgMy40MTA2ICAgLTEuOTc0MSAgIC0zLjExMjIgSCAgIDAgIDAgIDAgIDAgIDAKICAgIDMuMTM5NiAgIC0yLjczNzggICAtMS42NTk5IEggICAwICAwICAwICAwICAwCiAgIC00LjAxODcgICAgMi41OTk4ICAgIDUuMjI4NyBIICAgMCAgMCAgMCAgMCAgMAogICAgNy40NjA3ICAgLTEuMjU2MiAgIC0xLjM1ODcgSCAgIDAgIDAgIDAgIDAgIDAKICAxICAyICAxICAwICAwICAwICAwCiAgMSAgMyAgMiAgMCAgMCAgMCAgMAogIDEgIDQgIDEgIDAgIDAgIDAgIDAKICAyICA1ICAyICAwICAwICAwICAwCiAgMiAgNiAgMSAgMCAgMCAgMCAgMAogIDMgIDcgIDEgIDAgIDAgIDAgIDAKICAzICA4ICAxICAwICAwICAwICAwCiAgNCAgOSAgMSAgMCAgMCAgMCAgMAogIDUgMTAgIDEgIDAgIDAgIDAgIDAKICA1IDI1ICAxICAwICAwICAwICAwCiAgNyAxMCAgMiAgMCAgMCAgMCAgMAogIDcgMjYgIDEgIDAgIDAgIDAgIDAKICA5IDExICAxICAwICAwICAwICAwCiAgOSAxMiAgMiAgMCAgMCAgMCAgMAogMTAgMTMgIDEgIDAgIDAgIDAgIDAKIDExIDE0ICAyICAwICAwICAwICAwCiAxMSAyNyAgMSAgMCAgMCAgMCAgMAogMTIgMTUgIDEgIDAgIDAgIDAgIDAKIDEyIDI4ICAxICAwICAwICAwICAwCiAxMyAxNiAgMSAgMCAgMCAgMCAgMAogMTMgMjkgIDEgIDAgIDAgIDAgIDAKIDEzIDMwICAxICAwICAwICAwICAwCiAxNCAxNyAgMSAgMCAgMCAgMCAgMAogMTQgMTggIDEgIDAgIDAgIDAgIDAKIDE1IDE3ICAyICAwICAwICAwICAwCiAxNSAxOSAgMSAgMCAgMCAgMCAgMAogMTYgMjAgIDEgIDAgIDAgIDAgIDAKIDE2IDIxICAxICAwICAwICAwICAwCiAxNiAzMSAgMSAgMCAgMCAgMCAgMAogMTcgMjIgIDEgIDAgIDAgIDAgIDAKIDIwIDIzICAyICAwICAwICAwICAwCiAyMCAyNCAgMSAgMCAgMCAgMCAgMAogMjEgMzIgIDEgIDAgIDAgIDAgIDAKIDIxIDMzICAxICAwICAwICAwICAwCiAyMiAzNCAgMSAgMCAgMCAgMCAgMAogMjQgMzUgIDEgIDAgIDAgIDAgIDAKTSAgRU5ECiQkJCQK"""
* content.attachment.title = "L-thyroxine-3D-structure-CT1000583834.sdf"

Instance: 21b6b724-507e-4cf4-a462-93334b98d166
InstanceOf: DrugSubstanceNomenclatureStructure
Title: "Drug Substance Nomenclature and Structure"
Description: "LEVOTHYROXINE SODIUM ANHYDROUS"
Usage: #example 
* identifier.value = "levoThyroxine"
* classification = $NCIT#C48807 "Chemical"
* manufacturer = Reference(urn:uuid:e875ef93-a730-4c44-bead-53663ae7f501)
* molecularWeight.amount = $NCIT#C41127 "u"
* molecularWeight.amount.value = 798.85
* supplier = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
* code.code = $UNII#054I36CPMN
* structure.technique.text = """NMR Spectroscopy"""
* structure.representation[structureData][+].representation = """YDTFRJLNMPSCFM-YDALLXLXSA-M"""
* structure.representation[structureData][=].type = $NCIT#C54683 "InChI File (small molecule)"
* structure.representation[structureData][+].representation = """[Na+].N[C@@H](CC1=CC(I)=C(OC2=CC(I)=C(O)C(I)=C2)C(I)=C1)C([O-])=O"""
* structure.representation[structureData][=].type = $NCIT#C54684 "SMILES"
* structure.representation[graphic][+].document = Reference(urn:uuid:d94ad7ac-b935-432f-bc68-312b6b8dcca7)
* structure.representation[structureData][+].document = Reference(urn:uuid:22bd989e-8056-494f-9bc1-195d13428179)
* name[gsrs].name = "LEVOTHYROXINE SODIUM ANHYDROUS"
* name[gsrs].preferred = true
* name[iupac].name = "sodium;(2S)-2-amino-3-[4-(4-hydroxy-3,5-diiodophenoxy)-3,5-diiodophenyl]propanoate"
* name[cas].name = "55-03-8"
* relationship[+].substanceDefinitionReference = Reference(urn:uuid:832f22b4-6f0c-41f8-9b7d-f26f55e9973c)
* relationship[=].type.text = "Polymorph"

Instance: 260f5aa3-23d2-4999-8e5f-70f247390ee5
InstanceOf: EctdComposition32S10
Title: "eCTD Composition for 3.2.S.1"
Description: "Composistion containing eCTD Substance General Information "
Usage: #example 
* identifier.value = "Substance General - levoThyroxine"
* status = #final
* type.coding = $SectionTypes#32S10 "Substance General Information"	
* author = Reference(urn:uuid:b69435a0-45c6-4d44-9fde-b354e17408d7)
* date = 2023-12-15T22:19:47.022Z
* title = "eCTD Substance General Information for levoThyroxine"
* section.title = "Drug Substance Nomeclature and Structure for levoThyroxine"
* section.entry = Reference(urn:uuid:21b6b724-507e-4cf4-a462-93334b98d166)

Instance: 30536c0e-456c-4f90-9f02-da7be1d289e9
InstanceOf: CMCeCTDDocument32S10
Title: "Bundle for 3.2.S.1"
Description: "Bundle containng nomenclature and molecular structure"
Usage: #example 
* identifier.system = $IDsys
* identifier.value = "urn:uuid:1bf43677-1c61-41dd-93c2-8ec7f327d0f1"
* timestamp = 2023-12-15T22:19:47.022Z
* entry[0].resource = 260f5aa3-23d2-4999-8e5f-70f247390ee5
* entry[=].fullUrl = "urn:uuid:260f5aa3-23d2-4999-8e5f-70f247390ee5"
* entry[+].resource = 21b6b724-507e-4cf4-a462-93334b98d166
* entry[=].fullUrl = "urn:uuid:21b6b724-507e-4cf4-a462-93334b98d166"
* entry[+].resource = 832f22b4-6f0c-41f8-9b7d-f26f55e9973c
* entry[=].fullUrl = "urn:uuid:832f22b4-6f0c-41f8-9b7d-f26f55e9973c"
* entry[+].resource = b69435a0-45c6-4d44-9fde-b354e17408d7
* entry[=].fullUrl = "urn:uuid:b69435a0-45c6-4d44-9fde-b354e17408d7"
// organizations
* entry[+].resource = e165f057-5eed-4e64-8328-4438fc88fb1b
* entry[=].fullUrl = "urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b"
* entry[+].resource = e875ef93-a730-4c44-bead-53663ae7f501
* entry[=].fullUrl = "urn:uuid:e875ef93-a730-4c44-bead-53663ae7f501"
// documennts
* entry[+].resource = 0382d6b1-b656-4e9a-b5c8-9110c4d3f6b3
* entry[=].fullUrl = "urn:uuid:0382d6b1-b656-4e9a-b5c8-9110c4d3f6b3"
* entry[+].resource = d94ad7ac-b935-432f-bc68-312b6b8dcca7
* entry[=].fullUrl = "urn:uuid:d94ad7ac-b935-432f-bc68-312b6b8dcca7"
* entry[+].resource = 22bd989e-8056-494f-9bc1-195d13428179
* entry[=].fullUrl = "urn:uuid:22bd989e-8056-494f-9bc1-195d13428179"
