Instance: 58ae52aa-c81e-415a-8791-e67a3195290d
InstanceOf: ImpuritySubstance
Description: "Impurity substance - DICHLOROMETHANE"
Usage: #example
* identifier.value = "DCM"
* classification = $NCIT#C176815 "Residual Solvent"
* structure.technique.text = "Leftover Solvent"
* structure.representation[+].type.coding = $NCIT#C54683 "InChI File (small molecule)"
* structure.representation[=].representation = """YMWUJEATGCHHMB-UHFFFAOYSA-N"""
* structure.representation[+].type.coding = $NCIT#C54684 "SMILES"
* structure.representation[=].representation = """ClCCl"""
* code.code = $UNII#588X2YUY0A
* name[sub].name = "DICHLOROMETHANE"
* name[sub].preferred = true

Instance: ffa30c0b-8031-436a-87f1-635b3bbe5989
InstanceOf: ImpuritySubstance
Description: "Impurity substance - hydroxyApatite"
Usage: #example
* identifier.value = "hydroxyApatite"
* classification = $NCIT#C176816 "Degradation Product"
* structure.technique.text = "formed from dicalcium phosphate degradation"
* structure.representation[+].type.coding = $NCIT#C54683 "InChI File (small molecule)"
* structure.representation[=].representation = """XZFUZCHOJLQYHV-UHFFFAOYSA-M"""
* structure.representation[+].type.coding = $NCIT#C54684 "SMILES"
* structure.representation[=].representation = """[OH-].[Ca++].[Ca++].[Ca++].[Ca++].[Ca++].[O-]P([O-])([O-])=O.[O-]P([O-])([O-])=O.[O-]P([O-])([O-])=O"""
* code.code = $UNII#91D9GV0Z28
* name[gsrs].name = "TRIBASIC CALCIUM PHOSPHATE"
* name[gsrs].preferred = true

Instance: ddd3abad-347c-4d2f-95f3-dd804e250502
InstanceOf: DrugProductwithImpurities
Description: "Example of Drug Product with Impurities"
Usage: #example
* identifier.value = "TabletCoatedBeadsCoatedAll"
* description = """A drug product composed of one type of bead with two coatings inside a coated tablet"""
* name[NonProprietary].part[Scientific][+].part = "LEVOTHYROXINE SODIUM ANHYDROUS"
* name[NonProprietary].part[Strength][+].part = "125mg"
* name[NonProprietary].part[Strength][=].type.text = "LEVOTHYROXINE SODIUM ANHYDROUS"
* name[NonProprietary].productName = "LEVOTHYROXINE SODIUM ANHYDROUS 125mg"
* name[NonProprietary].type.text = "Non-Proprietary"
* impurity[+].reference = Reference(urn:uuid:58ae52aa-c81e-415a-8791-e67a3195290d)
* impurity[+].reference = Reference(urn:uuid:ffa30c0b-8031-436a-87f1-635b3bbe5989)

Instance: 98effc99-db2b-428d-89aa-0ce426e02788
InstanceOf: SponsorOrganization
Description: "Sponsor example for eCTD SP4151"
Usage: #example

* name = "connectathon_Site"
* contact.address.line[0] = "Restful Rd"
* contact.address.state = "CT"
* contact.address.city = "Danbury"
* contact.address.country = "USA"
* contact.address.postalCode = "06811"
* contact.address.text = "connectathon_Site, Restful Rd, Danbury, CT, USA"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS

Instance: 8a07e353-9cf6-4f27-8a30-2c2d4f439847
InstanceOf: EctdComposition32P55
Description: "FHIR composition for CMC eCTD SP4151"
Usage: #example
* date = 2024-04-24T01:12:07.108Z
* author = Reference(urn:uuid:98effc99-db2b-428d-89aa-0ce426e02788)
* title = "eCTD Product Characterisation of Impurities Composition for TabletCoatedBeadsCoatedAll"
* section.title = "Impurities for TabletCoatedBeadsCoatedAll"
* section.entry[+] = Reference(urn:uuid:ddd3abad-347c-4d2f-95f3-dd804e250502)

Instance: 9e8f2d16-66b1-47ec-878d-f50ae021985b
InstanceOf: CMCeCTDDocument32P55
Description: "FHIR document bundle with the CMC eCTD 32P55 profile for a Drug Product"
Usage: #example
* identifier.extension[version].valueString = "1.1.1"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:2b738e27-de1f-4f63-8d91-c8860089d2a1"
* timestamp = 2024-04-24T01:12:07.108Z
* entry[+].resource = 8a07e353-9cf6-4f27-8a30-2c2d4f439847
* entry[=].fullUrl = "urn:uuid:8a07e353-9cf6-4f27-8a30-2c2d4f439847"
* entry[+].resource = ddd3abad-347c-4d2f-95f3-dd804e250502
* entry[=].fullUrl = "urn:uuid:ddd3abad-347c-4d2f-95f3-dd804e250502"
* entry[+].resource = 98effc99-db2b-428d-89aa-0ce426e02788
* entry[=].fullUrl = "urn:uuid:98effc99-db2b-428d-89aa-0ce426e02788"
* entry[+].resource = 58ae52aa-c81e-415a-8791-e67a3195290d
* entry[=].fullUrl = "urn:uuid:58ae52aa-c81e-415a-8791-e67a3195290d"
* entry[+].resource = ffa30c0b-8031-436a-87f1-635b3bbe5989
* entry[=].fullUrl = "urn:uuid:ffa30c0b-8031-436a-87f1-635b3bbe5989"
