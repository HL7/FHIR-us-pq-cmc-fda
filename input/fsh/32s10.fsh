Instance: f202eec3-f460-4bb8-9e6a-d09e12c5f16a
InstanceOf: SponsorOrganization
Title: "Example Sponsor"
Description: "Sponsor name and address"

* name = "Mega Corp"
* contact.address.line[0] = "100 James Avenue"
* contact.address.line[1] = "Suite #1"
* contact.address.state = "MA"
* contact.address.city = "Springfield"
* contact.address.country = "United States"
* contact.address.postalCode = "01103"
* contact.address.text = "100 James Avenue, Suite #1, Springfield MA United States"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS

Instance: 43495594-b5b5-4c7f-b37a-8274b6ffe512
InstanceOf: MfgTestSiteOrganization
Title: "Manufacturing Test Site (test site A)"
Description: "manufacturing site instance generated programatically"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* name = "test site A"
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
* identifier[FEINumber].system = $FEINumber
* contact.address.line[0] = "123 Broad Way"
* contact.address.city = "new york"
* contact.address.country = "United States"
* contact.address.postalCode = "100000"
* contact.address.text = "test site A, 123 Broad Way, new york, ny, United States"
* contact.address.state = "ny"

Instance: 6c0d83db-4a11-47ad-8cc1-047f9de426e4
InstanceOf: DrugSubstanceMolecularStructure
Title: "Drug Substance Structures - Nitazoxanide"
Description: "Drug Substance Structure for Nitazoxanide"
* identifier.value = "Nitazoxanide"
* classification = $NCIT#1 "Chemical"
* manufacturer = Reference(urn:uuid:43495594-b5b5-4c7f-b37a-8274b6ffe512)
* structure.representation[+].representation = """YQNQNVDNTFHQSW-UHFFFAOYSA-N"""
* structure.representation[=].type = $NCIT#C54683 "InChI File (small molecule)"
* structure.representation[+].representation = """CC(=O)OC1=CC=CC=C1C(=O)NC2=NC=C(S2)[N+](=O)[O-]"""
* structure.representation[=].type = $NCIT#C54684 "SMILES"
* name[sys].name = "NITAZOXANIDE"

Instance: 3132d49f-75c5-46ff-b58f-689f5459070f
InstanceOf: DrugSubstanceNomenclature
Title: "Drug Substance Nomenclature - Nitazoxanide"
Description: "Drug Substance Nomenclature for Nitazoxanide"

* identifier.value = "Nitazoxanide"
* classification = $NCIT#1 "Chemical"
* molecularWeight.amount = $UCUM#C64559 "u"
* molecularWeight.amount.value = 307.28
* manufacturer = Reference(urn:uuid:43495594-b5b5-4c7f-b37a-8274b6ffe512)
* supplier = Reference(urn:uuid:f202eec3-f460-4bb8-9e6a-d09e12c5f16a)
* code.code = $UNII#SOA12P041N
* name[gsrs].name = "NITAZOXANIDE"
* name[gsrs].preferred = true
* name[sys].name = "NITAZOXANIDE"


Instance: 824aedcb-6825-4c77-ad2b-5bb431d353d1
InstanceOf: EctdComposition32S10
Title: "Example Composistion for 32S10"
Description: "Substance General Information for Nitazoxanide"

* author = Reference(urn:uuid:f202eec3-f460-4bb8-9e6a-d09e12c5f16a)
* date = 2023-03-21T01:52:47.652Z
* title = "eCTD Substance General Information for Nitazoxanide"
* section[SubstanceNomenclature].title = "Drug Substance Nomeclature for Nitazoxanide"
* section[SubstanceNomenclature].entry = Reference(3132d49f-75c5-46ff-b58f-689f5459070f)
* section[SubstanceStructure].title = "Drug Substance Structure for Nitazoxanide"
* section[SubstanceStructure].entry = Reference(6c0d83db-4a11-47ad-8cc1-047f9de426e4)

Instance: 6bf425c4-4b71-43fd-9ac0-cd096fb0bbcf
InstanceOf: CMCeCTDDocument32S10
Title: "Exmaple Bundle for 32S10"
Description: "eCTD Section 3.2.S.1.0."

* timestamp = 2023-03-21T01:52:47.653Z
* entry[Composition].resource = 824aedcb-6825-4c77-ad2b-5bb431d353d1
* entry[Composition].fullUrl = "urn:uuid:824aedcb-6825-4c77-ad2b-5bb431d353d1"
* entry[SubstanceDefinition][+].resource = 6c0d83db-4a11-47ad-8cc1-047f9de426e4
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:6c0d83db-4a11-47ad-8cc1-047f9de426e4"
* entry[SubstanceDefinition][+].resource = 3132d49f-75c5-46ff-b58f-689f5459070f
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:3132d49f-75c5-46ff-b58f-689f5459070f"
* entry[Organization][+].resource = f202eec3-f460-4bb8-9e6a-d09e12c5f16a
* entry[Organization][=].fullUrl = "urn:uuid:f202eec3-f460-4bb8-9e6a-d09e12c5f16a"
* entry[Organization][+].resource = 43495594-b5b5-4c7f-b37a-8274b6ffe512
* entry[Organization][=].fullUrl = "urn:uuid:43495594-b5b5-4c7f-b37a-8274b6ffe512"