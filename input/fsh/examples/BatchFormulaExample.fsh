Instance: BatchFormulaBundle
InstanceOf: CMCeCTDDocument32P32
Title: "3.2.P.3.2 Bundle for liquid"
Description: "Batch Formula bundle for a liquid drug product"
Usage: #example
* identifier	
  * system = $IDsys	
  * value = "urn:uuid:a242b79e-b706-49d3-93ba-b4364ab2baa3"	
* timestamp = 2024-07-01T12:34:56.789Z	
// composition	
* entry[0]	
  * resource = 0003c00b-bfc2-4775-8b1c-9f99d5cf1f39	
  * fullUrl = "urn:uuid:0003c00b-bfc2-4775-8b1c-9f99d5cf1f39"	
// sponsor	
* entry[+]	
  * resource = 4f3e9af1-306b-4fad-bf04-7881400b266a	
  * fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"	
// manufacturer	
* entry[+]	
  * resource = e875ef93-a730-4c44-bead-53663ae7f501	
  * fullUrl = "urn:uuid:e875ef93-a730-4c44-bead-53663ae7f501"	
// batch formula product	
* entry[+]	
  * resource = d0d2df25-5cfa-4417-b8d1-b8147957f53c	
  * fullUrl = "urn:uuid:d0d2df25-5cfa-4417-b8d1-b8147957f53c"	
// batch formula	
* entry[+]	
  * resource = 249ef22b-d521-4304-a388-6b9035f97b22	
  * fullUrl = "urn:uuid:249ef22b-d521-4304-a388-6b9035f97b22"	
// atomoxetine ingredient	
* entry[+]	
  * resource = 1c1a2a23-1fd7-4487-9682-49877f9f9f77	
  * fullUrl = "urn:uuid:1c1a2a23-1fd7-4487-9682-49877f9f9f77"	
// amotextinte api	
* entry[+]	
  * resource = 717d868e-6696-4ebb-adf4-63eadb3bf058	
  * fullUrl = "urn:uuid:717d868e-6696-4ebb-adf4-63eadb3bf058"	
// glacial acetic acid ingredient	
* entry[+]	
  * resource = 12cce82f-8595-4860-b7ca-06c9ec0327f2	
  * fullUrl = "urn:uuid:12cce82f-8595-4860-b7ca-06c9ec0327f2"	
// glacial acetic acid excipient	
* entry[+]	
  * resource = 45942749-64db-4f91-88c3-51adb680fed1	
  * fullUrl = "urn:uuid:45942749-64db-4f91-88c3-51adb680fed1"	
// Sodium acetate ingredient	
* entry[+]	
  * resource = 45eb4f05-83d9-4819-bb60-96c7c5ce2b76	
  * fullUrl = "urn:uuid:45eb4f05-83d9-4819-bb60-96c7c5ce2b76"	
// Sodium acetate Excipient	
* entry[+]	
  * resource = 07c598ee-3dcf-45b7-b4e5-b24812c22aff	
  * fullUrl = "urn:uuid:07c598ee-3dcf-45b7-b4e5-b24812c22aff"	
// Mannitol Ingredient	
* entry[+]	
  * resource = 29c0ee76-f62f-41d3-b761-73d5f205e552	
  * fullUrl = "urn:uuid:29c0ee76-f62f-41d3-b761-73d5f205e552"	
// Manitol Excipient	
* entry[+]	
  * resource = a339a562-e325-4ce6-a830-d25c27b5e2da	
  * fullUrl = "urn:uuid:a339a562-e325-4ce6-a830-d25c27b5e2da"	
// metacresol Ingredient	
* entry[+]	
  * resource = 44fad9fd-826a-4f0c-9f25-e0a78d1c4269	
  * fullUrl = "urn:uuid:44fad9fd-826a-4f0c-9f25-e0a78d1c4269"	
// metacresol excipient	
* entry[+]	
  * resource = c75df5fb-e962-43a6-9dd3-c6682da10a7e	
  * fullUrl = "urn:uuid:c75df5fb-e962-43a6-9dd3-c6682da10a7e"	
// water ingredient	
* entry[+]	
  * resource = d0574580-7694-4a36-8a27-5bdbccfc5557	
  * fullUrl = "urn:uuid:d0574580-7694-4a36-8a27-5bdbccfc5557"	
// water excipient	
* entry[+]	
  * resource = c4e5b7c6-2e52-48e3-813b-d227cf29329b	
  * fullUrl = "urn:uuid:c4e5b7c6-2e52-48e3-813b-d227cf29329b"	
	

Instance: 0003c00b-bfc2-4775-8b1c-9f99d5cf1f39
InstanceOf: EctdComposition32P32
Title: "Example Composition 3.2.P.3.2"
Description: "Composition 32P32 - Batch Formula Composition"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/ectd-composition-32p32"	
* identifier.value = "BatchFormulaComposition"	
* status = #final	
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)	
* date = 2024-07-01T12:34:56.789Z	
* title = """Batch formula example"""
* section[BatchFormulaMedicinalProduct]
  * title = "Batch Formula"	
  * entry = Reference(urn:uuid:d0d2df25-5cfa-4417-b8d1-b8147957f53c)	
	

Instance: d0d2df25-5cfa-4417-b8d1-b8147957f53c
InstanceOf: BatchFormulaMedicinalProduct
Title: "Batch Formula Drug Product Identification"
Description: "Basic idenfier informion in MDI for the Drug Product with reference to the Batch Formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-batch-formula-product"	
* identifier.value = "Oxazepam-Propranolol-BatchFormula-Identification"	
* combinedPharmaceuticalDoseForm = $NCIT#C42953 "LIQUID"
* route = $NCIT#C38288 "ORAL"	
* comprisedOf = Reference(urn:uuid:249ef22b-d521-4304-a388-6b9035f97b22)	
* name[NonProprietary]	
  * productName = "ATOMOXETINE HYDROCHLORIDE 1mg"	
  * type = $NCIT#C96971 "Nonproprietary Name"
  * part[Scientific][+]	
    * part = "ATOMOXETINE HYDROCHLORIDE"	
  * part[Strength][+]	
    * part = "1mg"	
    * type.text = "ATOMOXETINE HYDROCHLORIDE"	
	

Instance: 249ef22b-d521-4304-a388-6b9035f97b22
InstanceOf: BatchFormula
Title: "Batch Formula for Oxazepam / Propranolol-Hydrochloride product"
Description: "Batch Formula Exmample for a liquid drug product"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-product-batch-formula"	
* identifier.value = "Oxazepam-Propranolol-BatchFormula"	
* status = #active	
* name = "ATOMOXETINE HYDROCHLORIDE 1mg"	
* manufacturedDoseForm = $NCIT#C45298 "Liquid"
* manufacturer = Reference(urn:uuid:e875ef93-a730-4c44-bead-53663ae7f501)	
* property[BatchSize]	
  * valueQuantity = 50 $UCUM#L "liter"
* property[BatchUtil]	
  * valueCodeableConcept = $NCIT#C133990 "Commercial"	
* property[AddInfo]	
  * valueMarkdown = """Makes 50 Litres of product, accounting for losses from evaporation and spillage"""	
// there is one component	
* component[+]	
  * type = $NCIT#C42986 "Solution"	
  * amount[perBatch] = 53.2 $UCUM#kg "kilogram"
  * amount[percent] = 100 $UCUM#% "percent"
  // atomexetine hydrochloride	
  * constituent[+]	
    * extension[StrengthTextual].valueString = "5% atomexetine hydrochloride solution"
    * amount[perBatch] = 25.42 $UCUM#g "gram"	
    * amount[percent] = 0.0477 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:1c1a2a23-1fd7-4487-9682-49877f9f9f77)	
  // glacial acetic acid	
  * constituent[+]	
    * amount[perBatch] = 20.50 $UCUM#g "gram"
    * amount[percent] = 0.0385 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:12cce82f-8595-4860-b7ca-06c9ec0327f2)	
  // sodium acetate	
  * constituent[+]	
    * amount[perBatch] = 5.00 $UCUM#g "gram"  
    * amount[percent]	= 0.0094 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:45eb4f05-83d9-4819-bb60-96c7c5ce2b76)	
  // mannitol	
  * constituent[+]	
    * amount[perBatch] = 2.27 $UCUM#kg "kilogram"	
    * amount[percent] = 4.2652 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:29c0ee76-f62f-41d3-b761-73d5f205e552)	
  // metacresol	
  * constituent[+]	
    * amount[perBatch] = 150.00 $UCUM#g "gram"	
    * amount[percent] = 0.2818 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:44fad9fd-826a-4f0c-9f25-e0a78d1c4269)	
  // water	
  * constituent[+]	
    * amount[perBatch] = 50.75 $UCUM#kg "kilogram" 
    * amount[percent] = 95.3572 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:d0574580-7694-4a36-8a27-5bdbccfc5557)	
  * property[PPiD]	
    * valueCodeableConcept.text = "solution"	
	
	
// atomoxetine ingredient	

Instance: 1c1a2a23-1fd7-4487-9682-49877f9f9f77	
InstanceOf: DrugProductIngredient
Title: "Example AtomexetineHydrochloride"
Description: "Batch formula drug product example Active"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "AtomexetineHydrochlorideBFIngredient"	
* status = #active	
* role = $NCIT#C82533 "Active Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:717d868e-6696-4ebb-adf4-63eadb3bf058)	
  * strength[perBatch]	
    * concentrationQuantity = 25.42 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 0.0477 $UCUM#% "percent"
	
// Atomoxetine API	

Instance: 717d868e-6696-4ebb-adf4-63eadb3bf058	
InstanceOf: SubstanceDefinitionHandle
Title: "Example SubstanceDefinition- ATOMOXETINE HYDROCHLORIDE"
Description: "Idenfiers for the subtance used in a batch formula"
Usage: #inline
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* manufacturer = Reference(urn:uuid:e875ef93-a730-4c44-bead-53663ae7f501)	
* code.code = $UNII#57WVB6I2W0	
* name[gsrs]	
  * name = "ATOMOXETINE HYDROCHLORIDE"	
  * preferred = true	
	
// glacial acetic acid ingredient	

Instance: 12cce82f-8595-4860-b7ca-06c9ec0327f2	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Acetic Acid"
Description: "Example inactive ingredient in batch formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "GlacialAceticAcidBFIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:45942749-64db-4f91-88c3-51adb680fed1)	
  * strength[perBatch]	
    * concentrationQuantity = 20.50 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 0.0385 $UCUM#% "percent"
	

Instance: 45942749-64db-4f91-88c3-51adb680fed1	
InstanceOf: ExcipientRaw
Title: "Example batch formula ingredient substance - Acetic Acid"
Description: "Example inactive ingredient in batch formula. Contains the identiy and codes of the substance"
 Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"	
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* code.code = $UNII#Q40Q9N063P	
// * name[cas]	
//   * name = "64-19-7"	
* name[gsrs]	
  * name = "ACETIC ACID"	
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	
	
// sodium acetate ingredient	

Instance: 45eb4f05-83d9-4819-bb60-96c7c5ce2b76	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Sodium Acetate Anhydrous"
Description: "Example inactive ingredient in batch formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "AnhydrousSodiumAcetateBFIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:07c598ee-3dcf-45b7-b4e5-b24812c22aff)	
  * strength[perBatch]	
    * concentrationQuantity = 5.00 $UCUM#g "gram"	
  * strength[percent]
    * concentrationQuantity = 0.0094 $UCUM#% "percent"
	
// sodium acetate excipient	

Instance: 07c598ee-3dcf-45b7-b4e5-b24812c22aff	
InstanceOf: ExcipientRaw
Title: "Example batch formula ingredient substance - Sodium Acetate Anhydrous"
Description: "Example inactive ingredient in batch formula. Contains the identiy and codes of the substance"
 Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"	
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* code.code = $UNII#NVG71ZZ7P0	
// * name[cas]	
//   * name = "127-09-3"	
* name[gsrs]	
  * name = "SODIUM ACETATE ANHYDROUS"	
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	
	
// mannitol ingredient	

Instance: 29c0ee76-f62f-41d3-b761-73d5f205e552	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Mannitol"
Description: "Example inactive ingredient in batch formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "MannitolBFIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:a339a562-e325-4ce6-a830-d25c27b5e2da)	
  * strength[perBatch]	
    * concentrationQuantity = 2.27 $UCUM#kg "kilogram"
  * strength[percent]
    * concentrationQuantity = 4.2652 $UCUM#% "percent"
	
// mannitol excipient	

Instance: a339a562-e325-4ce6-a830-d25c27b5e2da	
InstanceOf: ExcipientRaw
Title: "Example batch formula ingredient substance - MANNITOL"
Description: "Example inactive ingredient in batch formula. Contains the identiy and codes of the substance"
 Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"	
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* code.code = $UNII#3OWL53L36A	
// * name[cas]	
//   * name = "87-78-5"	
* name[gsrs]	
  * name = "MANNITOL"	
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	
	
// metacresol ingredient	

Instance: 44fad9fd-826a-4f0c-9f25-e0a78d1c4269	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Metacresol"
Description: "Example inactive ingredient in batch formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "MetacresolBFIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:c75df5fb-e962-43a6-9dd3-c6682da10a7e)	
  * strength[perBatch]	
    * concentrationQuantity = 150.00 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 0.2818 $UCUM#% "percent"
	
// metacresol Excipient	

Instance: c75df5fb-e962-43a6-9dd3-c6682da10a7e	
InstanceOf: ExcipientRaw
Title: "Example batch formula ingredient substance - METACRESOL"
Description: "Example inactive ingredient in batch formula. Contains the identiy and codes of the substance"
 Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"	
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* code.code = $UNII#GGO4Y809LO	
// * name[cas]	
//   * name = "108-39-4"	
* name[gsrs]	
  * name = "METACRESOL"	
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	
	
// water ingredient	

Instance: d0574580-7694-4a36-8a27-5bdbccfc5557	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Water"
Description: "Example inactive ingredient in batch formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "WaterBFIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:c4e5b7c6-2e52-48e3-813b-d227cf29329b)	
  * strength[perBatch]	
    * concentrationQuantity = 50.75 $UCUM#kg "kilogram"
  * strength[percent]
    * concentrationQuantity = 95.3572 $UCUM#% "percent"
	
// water excipient	

Instance: c4e5b7c6-2e52-48e3-813b-d227cf29329b	
InstanceOf: ExcipientRaw
Title: "Example batch formula ingredient substance - Water"
Description: "Example inactive ingredient in batch formula. Contains the identiy and codes of the substance"
 Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"	
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* code.code = $UNII#059QF0KO0R	
* name[gsrs]	
  * name = "WATER"	
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	

