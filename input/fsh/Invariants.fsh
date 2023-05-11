// Invariants and Rules

Invariant: cmc-name-preferred
Description: "Name.preferred: at most one = true"
Expression: "name.select ( preferred = true).count() < 2"
Severity: #error

Invariant: cmc-substance-relationship
Description: "If relationship.type.text is 'Polymorph' then reference is PolymorphicForm, if relationship.type.text is 'Raw Material' then reference is ComponentSubstance, 
if relationship.type.text is 'Impurity' then reference is DrugSubstanceImpurity."
Expression: "relationship.where(type.text = 'Polymorph').exists() implies relationship.substanceDefinitionReference.reference.resolve().exists($this is PolymorphicForm)
or
relationship.where(type.text = 'Raw Material').exists() implies relationship.substanceDefinitionReference.reference.resolve().exists($this is ComponentSubstance)
or
relationship.where(type.text = 'Impurity').exists() implies relationship.substanceDefinitionReference.reference.resolve().exists($this is DrugSubstanceImpurity)"
Severity: #error

Invariant: cmc-when-unii-required
Description: "A UNII is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "(classification.where(coding.where(code in ('1' | '17' | '2' | '3' |'4') and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/evmpd-substance-classification').exists()).exists()
implies code.code.text.exists())"
Severity: #error

Invariant: cmc-name-isbt
Description: "Name.type ISBT 128 requried for blood products."
Expression: "classification.where(coding.where(code = '8' ) and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/evmpd-substance-classification'  ).exists()).exists()
   implies name[isbt].name.exists()"
Severity: #error

Invariant: cmc-ingredient-functions
Description: "If Drug Product Component Function Category is Active Ingredient or Adjuvant THEN Drug Product Component Function will be NA.
If Drug Product Component Function Category is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list."
Expression: "role.coding.where(code in ('C82533' | 'C2140')) implies (function.coding.code.count() = 0 and function.text = 'NA')
xor
role.coding.where(code = 'C42637') implies (function.coding.code.count() = 1 and function.text.count() = 0)"
Severity: #error

Invariant: cmc-substance-structure-graphic-required
Description: "A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'."
Expression: "(classification.where(coding.where(code = '1') and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/evmpd-substance-classification').exists()).exists()
implies structure.representation.exists())"
Severity: #error

Invariant: cmc-representation-or-document
Description: "A structure has either a representation or document and supporting types."
Expression: "structure.representation.document.resolve().content.attachment.data  xor structure.representation.representation.exists() and structure.representation.type.coding exists()"Severity: #error

Invariant: cmc-structure-required
Description: "A structure is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "(classification.where(coding.system = 'https://www.ema.europa.eu' and coding.code in ('1' | '17' | '2' | '3' | '4')).exists() implies structure.exists())"
Severity: #error

Invariant: cmc-source-material
Description: "IF raw material source type equals Microbial, Animal, Plant, Insect or Human THEN the 4 source related attributes are required and the manufacturer and supplier information is highly desirable."
Expression: "(sourceMaterial.type.where(coding.where(code in ('C14182' | 'C14225' | 'C14227' | 'C14329' | 'C14258') and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-source-type-terminology').exists()).exists()
implies sourceMaterial.genus.exists() and  sourceMaterial.species.exists() and sourceMaterial.part.exists() and sourceMaterial.countryOfOrigin.exists())"
Severity: #error

Invariant: cmc-strength-type-cases
Description: "IF Strength Type = Mass THEN Strength Numeric and Strength UOM are Mandatory
IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements.
Strength Textual and Strength UOM will be Mandatory and Operator will be Optional"
Expression: "substance.strength.extension[strengthType].where(coding.where(code = 'C168628' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-strength-type-terminology').exists()).exists()
implies substance.strength.presentationRatio.exists() or substance.strength.presentationQuantity.exists()) and  substance.strength.presentationQuantity.extension[strengthOperator].exists().not()
and
substance.strength.extension[strengthType].where(coding.where(code = 'C45420' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-strength-type-terminology').exists().exists()
implies substance.strength.presentationRatio.exists() and substance.strength.presentationRatio.unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology'
or substance.strength.presentationQuantity.exists() and substance.strength.presentationQuantity.unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology'"Severity: #error

Invariant: cmc-arbitrary-unit
Description: "If the UOM is UCUM Arbitrary Unit [arb'U], you need to describe the units in the Strength Text data element."
Expression: "((substance.strength.presentationRatio.where(unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology').exists()).exists())
or ((substance.strength.presentationRatio.where(unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology').exists()).exists())
implies (substance.strength.textPresentation.contains('unit'))"
Severity: #error


Invariant: cmc-sub-test-category-batch
Description: "The sub test category must match the parent test category in PqcmcTestCategoryCodes"
Expression: "category.coding[testSubCat].code.exists() implies  %terminologies.subsumes(category.coding[testCategory].code, category.coding[testSubCat].code) = 'subsumes'"
Severity: #error


Invariant: cmc-name-type
Description: "Name.type values are proprietary an non-proprietary"
Expression: "(name.productName.exists() implies name.type.text = 'Proprietary' or 'Non-proprietary')"
Severity: #error


Invariant: cmc-sub-test-category
Description: "The sub test category must match the parent test category in PqcmcTestCategoryCodes"
Expression: "action.code.coding[testSubCat].code.exists() implies  %terminologies.subsumes(action.code.coding[testCategory].code, action.code.coding[testSubCat].code) = 'subsumes'"
Severity: #error

Invariant: cmc-identifer
Description: "A document must have an identifier with a system and a value"
Expression: "type = 'document' implies (identifier.system.exists() and identifier.value.exists()) "
Severity: #error

Invariant: cmc-date
Description: "A document must have a date"
Expression: "type = 'document' implies (timestamp.hasValue())"
Severity: #error

Invariant: cmc-first-resource
Description: "A document must have a Composition as the first resource"
Expression: "type = 'document' implies entry.first().resource.is(Composition)"
Severity: #error

Invariant: cmc-ectd-doc-1
Description: "The fullUrl must be an  URI for UUID/OID"
Severity: #error
Expression: "$this.is(FHIR.oid) = true"   //of urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}

Invariant: cmc-ectd-doc-2
Description: "The document title must start with the PQCMC Composition.Type display value"
Expression: "title.value.startsWith(type.coding.display) = true"
Severity: #error

Invariant: cmc-ectd-doc-3
Description: "The section title must start with the PQCMC Comp Section Type display value"
Expression: "section.title.value.startsWith(type.coding.display) = true"
Severity: #error

Invariant: cmc-percent-quantity
Description: "The component.constituent.amount[Weight].code from PqcmcUnitsMeasureTerminology cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
Expression: "component.constituent.amount[Weight].where(code in ('VolumeToVolume'|'WeightToVolume'|'WeightToWeight').count() = 0"
Severity: #error

Invariant: cmc-percent-quantity-ingredient
Description: "The substance.strength[Weight]concentrationQuantity.code from PqcmcUnitsMeasureTerminology cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
Expression: "substance.strength[Weight]concentrationQuantity.where(code in ('VolumeToVolume'|'WeightToVolume'|'WeightToWeight').count() = 0"
Severity: #error