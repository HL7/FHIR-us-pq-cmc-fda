// Invariants and Rulesstrength.ofType

Invariant: cmc-name-preferred
Description: "Name.preferred: at most one = true"
Expression: "select(preferred = true).count() < 2"
Severity: #error

Invariant: cmc-when-unii-required
Description: "A UNII is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "classification.coding.where(system = 'https://www.ema.europa.eu' and code in ('1' | '17' | '2' | '3' |'4') ).exists()
implies code.code.text.exists()"
Severity: #error

Invariant: cmc-name-isbt
Description: "Name.type ISBT 128 required for blood products."
Expression: "classification.where(coding.where(code = '8' and system = 'https://www.ema.europa.eu').exists()).exists() implies name.type.coding.exists(code = '226' and system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy')"
Severity: #error
// Note: 8 is the code for for "Structurally Diverse Subtsance - Blood derived"
// and 226 is the code for "ISBT 128" in substance name type. $NCIT is currently 
// examples.com so that's the system it checks for
Invariant: cmc-ingredient-functions
Description: "If Drug Product Component constituent Function Category is Active Ingredient or Adjuvant THEN Drug Product Component constituent Function is not applicable.
If Drug Product Component Function Category onstituent is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list."
Expression: "constituent.function.coding.where(code = 'C42637' and version = 'function' and system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy').exists() implies constituent.function.coding.code.count() = 2"
Severity: #error
// Note: coding.version is being used do differentiate between the two function
// slices: function and category
Invariant: cmc-substance-structure-graphic-required
Description: "A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'."
Expression: "(classification.where(coding.where(code = '1' and system = 'https://www.ema.europa.eu').exists()).exists()) implies structure.representation.exists()"
Severity: #error

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
Expression: "strength.extension('http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/strength-extension').extension('strengthType').value.where(value = 'C168628').exists()
implies strength.ofType(Ratio).exists() or ((strength.ofType(Quantity).exists() and  strength.ofType(Quantity).extension('http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/strength-extension').extension('strengthOperator').exists().not()))"
Severity: #error

Invariant: cmc-strength-type-cases2
Description: "IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements.
Strength Textual and Strength UOM will be Mandatory and Operator will be Optional. Codes 75765 [arb'U]; C45420 Activity."
Expression: "strength.extension('http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/strength-extension').extension('strengthType').value.where(value = 'C45420').exists()
implies ((strength.ofType(Ratio).exists() and strength.ofType(Ratio).numerator.code = 'C75765').exists())
or ((strength.ofType(Quantity).exists() and strength.ofType(Quantity).code = 'C75765' ).exists())"
Severity: #error

Invariant: cmc-ppidref-required
Description: "A PPiDref is required when the PPiD is designated a child."
Expression: "property.where(
        type.coding.exists(system = '' and code = 'PPiD') and    
        value.coding.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/pqcmc-relationship-types' and code = 'child')
    ).exists()
    implies 
        property.where(type.coding.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/pqcmc-product-characteristic' and code = 'PPiDref')).exists()"
Severity: #error

Invariant: cmc-identifer
Description: "A document must have an identifier with a system and a value"
Expression: "type = 'document' implies (identifier.exists(system.exists() and value.exists()))"
Severity: #error

//Invariant: cmc-percent-quantity
//Description: "The component.constituent('Weight').amount.code from PqcmcUnitsMeasureTerminology cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
//Expression: "code in ('C48527'|'C48527'|'C48528').count() = 0"
//Severity: #error

//Invariant: cmc-percent-quantity-ingredient
//Description: "The Ingredient.substance.strength.concentration.code from PqcmcUnitsMeasureTerminology cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
//Expression: "concentration.ofType(Quantity).code in ('C48527' | 'C48527' | 'C48528').count() = 0"
//Severity: #error

Invariant: cmc-link-required
Description: "Action linkId is required for alternate tests"
Expression: "(action.relatedAction.count() > 0) implies action.linkId.exists()" 
Severity: #error

Invariant: cmc-decimal-format
Description: "Content percent must be in the format of leading zero, decimal point, any number of digits up to 17 places."
Expression: "value.toString().matches('^(1([.]0{1,17})?|0([.][0-9]{1,17})?)$') = true"
Severity: #error

//Invariant: cmc-at-least-one
//Description: "Stages must have a least one acceptance critia"
//Expression: "(action.action.goalId.count() > 0) or (action.action.action.goalId.count() > 0 ) = true" 
//Severity: #error

Invariant: cmc-greater-than-zero
Description: "Hierachial levels are greater than 0"
Expression: "($this > 0)  = true" 
Severity: #error

Invariant: cmc-subtest-rrt 
Description: "a subtest's prefix represents relative retention time, should it exist"
Expression: "prefix.exists() implies prefix.single() = 'RRT'"
Severity: #error
// ---- Composition Invariants ----
// checks if there is a composition which has a type
// code for its respective section type.
Invariant: cmc-32S23
Description: "The composition must be EctdComposition32S23"
Expression: "entry.select(resource as Composition).where(type.exists(coding.exists(code='32S23'))).exists()"
Severity: #error

Invariant: cmc-32S10
Description: "The composition must be EctdComposition32S10"
Expression: "entry.select(resource as Composition).where(type.exists(coding.exists(code='32S10'))).exists()"
Severity: #error

Invariant: cmc-32P10
Description: "The composition must be EctdComposition32P10"
Expression: "entry.select(resource as Composition).where(type.exists(coding.exists(code='32P10'))).exists()"
Severity: #error

Invariant: cmc-SP4151
Description: "The composition must be EctdCompositionSP4151"
Expression: "entry.select(resource as Composition).where(type.exists(coding.exists(code='SP4151'))).exists()"
Severity: #error


Invariant: cmc-single-or-multistage
Description: "if a test is multi-stage, the test can't have a prefix and its stages must have a name and can't be named 'Single Stage' and must be unique. If it's single stage its prefix is 'Single Stage' and its groups can't have prefixes"
Expression: "((
    prefix.exists() implies 
        action.prefix.empty() and prefix = 'Single Stage'    
) and (
    prefix.empty() implies (
        (action.where(
            prefix.exists() and 
            prefix != 'Single Stage'
        ).count() = action.count()) and 
        action.prefix.isDistinct()
    )
)) = true"
Severity: #error
// Note: cmc-single-or-multistage gets evaluated on Plandefinition.action,
// so action.prefix is a collection of all the nodes under a single test at 
// that path. The number of actions where its prefix exists and isn't 
// 'single stage' needs to be the total number of actions; otherwise one of 
// them was 'single stage' or wasn't defined.



Invariant: cmc-arbitrary-unit-text-required
Description: "BR – Product Total Weight Textual - If the UOM is UCUM Arbitrary Unit [arb'U], units must be described in Weight Textual"
Expression: "property.where(
    type.coding.exists(
        system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and (
            code = 'TotWgtNum' or 
            code = 'TotWgtDen'
        )
    ) and
    value.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and code = 'C75765')
).exists() implies property.where(
    type.coding.exists(
        code = 'TotWgtTxt' and
        system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy'
    )
).exists()"
Severity: #error
// Note: checks if a property for the numerator or denominator exists. if it
// does and it has an arbitrary unit, then there needs to be a slice for 
// weight textual


Invariant: cmc-format-required
Severity: #error
Description: "Format is required when a representation is provided"
Expression: "representation.exists() implies format.exists()"

Invariant: cmc-capsule-count-required
Severity: #error
Description: "Capsule constituent count is required when the dosage form is 'Capsule'"
Expression: "manufacturedDoseForm.coding.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and code = 'C154433')
implies property.where(type.coding.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and code = 'CapConCnt')).exists()"

Invariant: cmc-only-ISO-3166-1-alpha-3
Severity: #error
Description: "Country of origin must be a 3 letter country code"
Expression: "coding.code.length() = 3"

Invariant: cmc-coating-indication-required
Severity: #error
Description: "Coating indication is required when the dosage form is a tablet, lozenge or capsule"
Expression: "manufacturedDoseForm.coding.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and (
    code = 'C154605' or
    code = 'C154433' or
    code = 'C154554'
))
implies property.where(type.coding.exists(system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and code = 'CoatInd')).exists()"
// Note: Currently checks if manufacturedDoseForm is any of the solid oral
// dose forms (lozenge, capsule, tablet). Can capsules and lozenges have
// coatings?

Invariant: cmc-tablet-layer-count-required
Severity: #error
Description: "Tablet layer count is required when the dosage form is a tablet"
Expression: "manufacturedDoseForm.coding.exists(
    system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
    code = 'C154605'
) implies property.where(
    type.coding.exists(
        system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
        code = 'TabLayCnt'
    )
).exists()"

Invariant: cmc-tablet-bead-count-required
Severity: #error
Description: "Tablet bead count is required when the dosage form is a tablet"
Expression: "manufacturedDoseForm.coding.exists(
    system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
    code = 'C154605'
) implies property.where(
    type.coding.exists(
        system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
        code = 'BeaTypCnt'
    )
).exists()"

Invariant: cmc-capsule-classification-required
Severity: #error
Description: "when the the dosage form is 'capsule' and a 'capsule shell' part
exists, a capsule shell part classification is mandatory"
Expression: "manufacturedDoseForm.coding.exists(
    system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
    code = 'C154433'
) and component.type.coding.exists(
    system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
    code = 'C203897'
) implies property.where(
    type.coding.exists(
        system = 'http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy' and
        code = 'CapClass'
    )
).exists()"