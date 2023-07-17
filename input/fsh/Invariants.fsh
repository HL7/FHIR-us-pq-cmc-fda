// Invariants and Rulesstrength.ofType

Invariant: cmc-name-preferred
Description: "Name.preferred: at most one = true"
Expression: "select(preferred = true).count() < 2"
Severity: #error

//Invariant: cmc-substance-relationship  not needed unless the DrugSubstance Profile is implemeneted
//Description: "If relationship.type.text is 'Polymorph' then reference is PolymorphicForm, if relationship.type.text is 'Raw Material' then reference is ComponentSubstance, 
//if relationship.type.text is 'Impurity' then reference is DrugSubstanceImpurity."
//Expression: "type.text = 'Polymorph'.exists() implies substanceDefinitionReference.reference.resolve().exists($this is PolymorphicForm)
//or
//type.text = 'Raw Material'.exists() implies substanceDefinitionReference.reference.resolve().exists($this is ComponentSubstance)
//or
//type.text = 'Impurity'.exists() implies substanceDefinitionReference.reference.resolve().exists($this is DrugSubstanceImpurity)"
//Severity: #error

Invariant: cmc-when-unii-required
Description: "A UNII is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "classification.coding.where(system = 'https://www.ema.europa.eu' and code in ('1' | '17' | '2' | '3' |'4') ).exists()
implies code.code.text.exists()"
Severity: #error

Invariant: cmc-name-isbt
Description: "Name.type ISBT 128 requried for blood products."
Expression: "(classification.where(coding.where(code = '8' and system = 'https://www.ema.europa.eu').exists()).exists()) implies ((name.type.coding.code = '226').exists())"
Severity: #error

Invariant: cmc-ingredient-functions
Description: "If Drug Product Component constituent Function Category is Active Ingredient or Adjuvant THEN Drug Product Component constituent Function is not applicable.
If Drug Product Component Function Category onstituent is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list."
Expression: "function.coding.where(code = 'C42637' and version = 'function').exists() implies function.coding.code.count() = 2"
Severity: #error

Invariant: cmc-substance-structure-graphic-required
Description: "A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'."
Expression: "(classification.where(coding.where(code = '1' and system = 'https://www.ema.europa.eu').exists()).exists()) implies structure.representation.exists()"
Severity: #error

//Invariant: cmc-representation-or-document
//Description: "A structure has either a representation or document and supporting format."
//Expression: "representation.document.ofType(Reference).resolve().exists() xor (representation.representation.exists() and representation.format.coding.exists())"
//Severity: #error

Invariant: cmc-structure-required
Description: "A structure is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "classification.coding.where(system = 'https://www.ema.europa.eu' and code in ('1' | '17' | '2' | '3' |'4') ).exists() implies structure.exists()"
Severity: #error

Invariant: cmc-source-material
Description: "IF raw material source type equals Microbial, Animal, Plant, Insect or Human THEN the 4 source related attributes are required and the manufacturer and supplier information is highly desirable."
Expression: "sourceMaterial.type.coding.where(system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl' and code in ('C14182' | 'C14225' | 'C14227' | 'C14329' | 'C14258')).exists() 
implies (sourceMaterial.genus.exists() and  sourceMaterial.species.exists() and sourceMaterial.part.exists() and sourceMaterial.countryOfOrigin.exists())"
Severity: #error

Invariant: cmc-strength-type-cases1
Description: "IF Strength Type = Mass THEN Strength Numeric and Strength UOM are Mandatory"
Expression: "strength.extension('strengthFactors').extension('strengthType').value.where(value = 'C168628').exists()
implies strength.ofType(Ratio).exists() or ((strength.ofType(Quantity).exists() and  strength.ofType(Quantity).extension('strengthFactors').extension('strengthOperator').exists().not()))"
Severity: #error  

Invariant: cmc-strength-type-cases2
Description: "IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements.
Strength Textual and Strength UOM will be Mandatory and Operator will be Optional. Codes 75765 [arb'U]; C45420 Activity."
Expression: "strength.extension('strengthFactors').extension('strengthType').value.where(value = 'C45420').exists()
implies ((strength.ofType(Ratio).exists() and strength.ofType(Ratio).numerator.code = 'C75765').exists())
or ((strength.ofType(Quantity).exists() and strength.ofType(Quantity).code = 'C75765' ).exists())"
Severity: #error 


//Invariant: cmc-arbitrary-unit  
//Description: "If the UOM is UCUM Arbitrary Unit [arb'U], the units must described in the Strength Text data element."
//Expression: "((strength.ofType(Ratio).numerator.code = 'C168628' ) or (strength.ofType(Ratio).denominator.code = 'C168628' ))
//implies strength.textPresentation.value.contains('unit')"
//Severity: #error

Invariant: cmc-ppidref-required
Description: "A PPiDref is required when the PPiD is designated a child."
Expression: "(property.where(type.coding.system = 'http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-characteristic' and type.coding.code = 'PPiD').exists() and    
property.where(value.coding.system = 'http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-relationship-types' and value.coding.code = 'child').exists() 
) implies property.where(type.coding.system = 'http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-characteristic' and type.coding.code = 'PPiDref').exists()"
Severity: #error

//Invariant: cmc-sub-test-category-batch
//Description: "The sub test category must match the parent test category in PqcmcTestCategoryCodes"
//Expression: "category.coding[testSubCat')code.exists() implies  %terminologies.subsumes(category.coding[testCategory')code, category.coding[testSubCat')code) = 'subsumes'"
//Severity: #error

//Invariant: cmc-name-type
//Description: "Name.type values are proprietary an non-proprietary"
//Expression: "(name.productName.exists() implies name.type.text in ('Proprietary' | 'Non-proprietary'))"
//Severity: #error

//Invariant: cmc-sub-test-category
//Description: "The sub test category must match the parent test category in PqcmcTestCategoryCodes"
//Expression: "action.code.coding[testSubCat')code.exists() implies  %terminologies.subsumes(action.code.coding[testCategory')code, action.code.coding[testSubCat')code) = 'subsumes'"
//Severity: #error

Invariant: cmc-identifer
Description: "A document must have an identifier with a system and a value"
Expression: "type = 'document' implies (identifier.system.exists() and identifier.value.exists())"
Severity: #error

//Invariant: cmc-date
//Description: "A document must have a date"
//Expression: "type = 'document' implies (timestamp.hasValue())"
//Severity: #error

Invariant: cmc-first-resource
Description: "A document must have a Composition as the first resource"
Expression: "type = 'document' implies entry.first().resource.is(Composition)"
Severity: #error

Invariant: cmc-ectd-doc-1
Description: "The fullUrl must be an  URI for UUID/OID"
Severity: #error
Expression: "$this.is(FHIR.oid) = true"   //of urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}

//Invariant: cmc-ectd-doc-2
//Description: "The document title must start with the PQCMC Composition.Type display value"
//Expression: "title.value.startsWith(type.coding.display.value) = true"
//Severity: #error

//nvariant: cmc-ectd-doc-3
//Description: "The section title must start with the PQCMC Comp Section Type display value"
//xpression: "section.title.value.startsWith(type.coding.display.value) = true"
//Severity: #error

Invariant: cmc-percent-quantity
Description: "The component.constituent('Weight').amount.code from PqcmcUnitsMeasureTerminology cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
Expression: "code in ('C48527'|'C48527'|'C48528').count() = 0" 
Severity: #error

Invariant: cmc-percent-quantity-ingredient
Description: "The Ingredient.substance.strength.concentration.code from PqcmcUnitsMeasureTerminology cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
Expression: "concentration.ofType(Quantity).code in ('C48527' | 'C48527' | 'C48528').count() = 0"
Severity: #error

//Invariant: cmc-denominator-unit
//Description: "The denominator is either 1*  or [arb'U]"
//Expression: "code in ( 'C75765' | 'C66832' ).count() = 1"
//Severity: #error

Invariant: cmc-test-order-limit
Description: "Action test order is greater than or equal to 1"
Expression: "strength.extension('testOrder').value >= 1"
Severity: #error

Invariant: cmc-action-code-required
Description: "If the test has a single stage or there are no stages then the code is required"
Expression: "((prefix = 'Single Stage') or ((relatedAction.relationship = 'after-end').count() > 0)) implies code.exists()"
Severity: #error


 