// Invariants and Rulesstrength.ofType

Invariant: cmc-name-preferred
Description: "Name.preferred: at most one = true"
Expression: "select(preferred = true).count() < 2"
Severity: #error

Invariant: cmc-when-unii-required
Description: "A UNII is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acids','Polymer'. A UniProt code is required for any of these categories: 'Protein'"
Expression: "(classification.coding.where(system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl' and (code in ('C48807' | 'C45305' | 'C706' | 'C48803'))).exists()
implies code.where(
  code.coding.exists(system = 'http://fdasis.nlm.nih.gov')
).exists())
 and (classification.coding.where(
  system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl' and
  code = 'C17021'
).exists() implies code.where(
  code.coding.exists(system = 'http://terminology.hl7.org/NamingSystem/UniProt')
).exists())"
Severity: #error

Invariant: cmc-name-isbt
Description: "Name.type ISBT 128 required for blood products."
Expression: "classification.where(coding.where(code = '8' and system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').exists()).exists() implies name.type.coding.exists(code = '226' and system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl')"
Severity: #error
// Note: 8 is the code for for "Structurally Diverse Subtsance - Blood derived"
// and 226 is the code for "ISBT 128" in substance name type. $NCIT is currently 
// examples.com so that's the system it checks for
Invariant: cmc-ingredient-functions
Description: "If Drug Product Component constituent Function Category is Active Ingredient or Adjuvant THEN Drug Product Component constituent Function is not applicable.
If Drug Product Component Function Category constituent is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list."
Expression: "function.coding.where(code = 'C42637' and system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').exists() implies function.coding.code.count() = 2"
Severity: #error

Invariant: cmc-substance-structure-graphic-required
Description: "A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'."
Expression: "(classification.where(coding.where(code = '1' and system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').exists()).exists()) implies structure.representation.exists()"
Severity: #error

Invariant: cmc-structure-required
Description: "A structure is required in code for any of these categories: 'Chemical', 'Mixture', 'Nucleic Acids','Polymer','Protein'."
Expression: "classification.coding.where(system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl' and code in ('C48807' | 'C45305' | 'C706' | 'C48803' |'C17021') ).exists() implies structure.exists()"
Severity: #error

Invariant: cmc-source-material
Description: "IF raw material source type equals Microbial, Animal, Plant, Insect or Human THEN the 4 source related attributes are required and the manufacturer and supplier information is highly desirable."
Expression: "sourceMaterial.type.coding.where(system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl' and code in ('C14182' | 'C14225' | 'C14227' | 'C14329' | 'C14258')).exists()
implies (sourceMaterial.genus.exists() and  sourceMaterial.species.exists() and sourceMaterial.part.exists() and sourceMaterial.countryOfOrigin.exists())"
Severity: #error


Invariant: cmc-strength-type-cases2
Description: "IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements.
Strength Textual and Strength UOM will be Mandatory and Operator will be Optional. Codes 75765 [arb'U]; C45420 Activity."
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
strength
.extension('http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/strength-extension')
.extension.where(
    value.coding.where(
        code = 'C45420' and 
        system = %system
    ).exists()
).exists()
implies (
    strength.presentation.ofType(Ratio).exists() and
    strength.presentation.numerator.where(
        code = '[arb\u005c\u0027U]' and
        system = 'http://unitsofmeasure.org'
    )
) or (
    strength.presentation.ofType(Quantity).exists() and
    strength.presentation.where(
        code = '[arb\u005c\u0027U]' and
        system = 'http://unitsofmeasure.org'
    )
))"
Severity: #error

Invariant: cmc-component-id-ref
Description: "If a PPiD ref is present, it must reference the PPiD of another component. It cannot reference itself"
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
  component.select(
    property.where(
      type.text = 'Product Part Identifier Reference'
    ).select(value)
  ).all(
    text in %context.component.select(
      property.where(
        type.text = 'Product Part Identifier'
      ).select(value.text)
    )
  ) and component.where(
    property.where(
      type.text = 'Product Part Identifier Reference'
    ).select(value.text) =
    property.where(
      type.text = 'Product Part Identifier'
    ).select(value.text)
  ).exists().not()
)"
Severity: #error
// Logic: get all the Ppidrefs. Each of them must exist in the set of all Ids.
// afterwards check to make sure there are no components that refer to themselves

/// old with codings
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
//   component.select(
//     property.where(
//       type.coding.exists(
//         system = %system and
//         code = 'PPiDref'
//       )
//     ).select(value)
//   ).all(
//     text in %context.component.select(
//       property.where(
//         type.coding.exists(
//           system = %system and
//           code = 'PPiD'
//         )
//       ).select(value.text)
//     )
//   ) and component.where(
//     property.where(
//       type.coding.exists(
//         system = %system and
//         code = 'PPiDref'
//       )
//     ).select(value.text) =
//     property.where(
//       type.coding.exists(
//         system = %system and
//         code = 'PPiD'
//       )
//     ).select(value.text)
//   ).exists().not()
// )"

//Invariant: cmc-identifer
//Description: "A document must have an identifier with a system and a value"
//Expression: "type = 'document' implies (identifier.exists(system.exists() and value.exists()))"
//Severity: #error

Invariant: cmc-percent-quantity
Description: "The component.constituent('Weight').amount.code from http://hl7.org/fhir/ValueSet/ucum-units cannot be  VolumeToVolume, WeightToVolume or WeightToWeight"
Expression: "defineVariable('system','http://unitsofmeasure.org').select(
  amount
  .where(system = %system and (('%{WeightToWeight}' | '%{WeightToVolume}' | '%{VolumeToVolume}') contains code).not())
  .count() = 1
)"
Severity: #error

Invariant: cmc-percent-quantity-ingredient
Description: "There must be a concentration whose unit is not VolumeToVolume, WeightToVolume or WeightToWeight"
// Logic:
// select the concentrationQuantity's (all concentrations)
// find the concentrations where the system is NCIT and the code is not a percent
// make sure there is exactly one
Expression: "defineVariable('system','http://unitsofmeasure.org').select(
  strength.concentration
    .ofType(Quantity)
    .where(system = %system and  (('%{WeightToWeight}' | '%{WeightToVolume}' | '%{VolumeToVolume}') contains code).not())
    .count() = 1
)"
Severity: #error

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


Invariant: cmc-subtest-rrt 
Description: "a subtest's prefix represents relative retention time, should it exist"
Expression: "prefix.exists() implies prefix.single() = 'RRT'"
Severity: #error
// ---- Composition Invariants ----
// checks if there is a composition which has a type
// code for its respective section type.

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
Description: "BR - Product Total Weight Textual - If the UOM is UCUM Arbitrary Unit [arb'U], units must be described in Weight Textual"
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
    property.where(
    type.coding.exists(
        system = %system and (
            code = 'TotWgtNum' or 
            code = 'TotWgtDen'
        )
    ) and
    value.exists(system = %system and code = 'C75765')
).exists() implies property.where(
    type = 'Total Weight Textual'
).exists())"
/// old with coding
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
//     property.where(
//     type.coding.exists(
//         system = %system and (
//             code = 'TotWgtNum' or 
//             code = 'TotWgtDen'
//         )
//     ) and
//     value.exists(system = %system and code = 'C75765')
// ).exists() implies property.where(
//     type.coding.exists(
//         code = 'TotWgtTxt' and
//         system = %system
//     )
// ).exists())"
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
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
    manufacturedDoseForm.coding.exists(system = %system and code = 'C154433')
implies property.where(type.text = 'Capsule Constituent Count').exists())"
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
//     manufacturedDoseForm.coding.exists(system = %system and code = 'C154433')
// implies property.where(type.coding.exists(system = %system and code = 'CapConCnt')).exists())"

Invariant: cmc-only-ISO-3166-1-alpha-3
Severity: #error
Description: "Country must be a 3 letter country code"
Expression: "$this.length() = 3"

Invariant: cmc-coating-indication-required
Severity: #error
Description: "Coating indication is required when the dosage form is a tablet, lozenge or capsule"
/// new, just looking for 'coating indicator' text
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
    manufacturedDoseForm.coding.exists(system = %system and (
    code = 'C154605' or
    code = 'C154433' or
    code = 'C154554'
))
implies property.where(type.text = 'Coating Indicator').exists())"
/// old, pre-ncit-dummy removal. looking for a type codeable concept with a 'CoatInd' code
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
//     manufacturedDoseForm.coding.exists(system = %system and (
//     code = 'C154605' or
//     code = 'C154433' or
//     code = 'C154554'
// ))
// implies property.where(type.coding.exists(system = %system and code = 'CoatInd')).exists())"
// Note: Currently checks if manufacturedDoseForm is any of the solid oral
// dose forms (lozenge, capsule, tablet). Can capsules and lozenges have
// coatings?

Invariant: cmc-tablet-layer-count-required
Severity: #error
Description: "Tablet layer count is required when the dosage form is a tablet"
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
    manufacturedDoseForm.coding.exists(
    system = %system and
    code = 'C154605'
) implies property.where(
    type.text = 'Tablet Layer Count'
).exists())"
/// old with coding check
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(
//     manufacturedDoseForm.coding.exists(
//     system = %system and
//     code = 'C154605'
// ) implies property.where(
//     type.coding.exists(
//         system = %system and
//         code = 'TabLayCnt'
//     )
// ).exists())"

Invariant: cmc-tablet-bead-count-required
Severity: #error
Description: "Tablet bead count is required when the dosage form is a tablet"
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(manufacturedDoseForm.coding.exists(
    system = %system and
    code = 'C154605'
) implies property.where(
    type.text = 'Tablet Bead Type Count'
).exists())"
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(manufacturedDoseForm.coding.exists(
//     system = %system and
//     code = 'C154605'
// ) implies property.where(
//     type.coding.exists(
//         system = %system and
//         code = 'BeaTypCnt'
//     )
// ).exists())"
Invariant: cmc-capsule-classification-required
Severity: #error
Description: "when the the dosage form is 'capsule' and a 'capsule shell' part
exists, a capsule shell part classification is mandatory"
Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(manufacturedDoseForm.coding.exists(
    system = %system and
    code = 'C154433'
) and component.type.coding.exists(
    system = %system and
    code = 'C203897'
) implies property.where(
    type.text = 'Capsule Classification Category'
).exists())"

/// old with coding
// Expression: "defineVariable('system','http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl').select(manufacturedDoseForm.coding.exists(
//     system = %system and
//     code = 'C154433'
// ) and component.type.coding.exists(
//     system = %system and
//     code = 'C203897'
// ) implies property.where(
//     type.coding.exists(
//         system = %system and
//         code = 'CapClass'
//     )
// ).exists())"


Invariant: cmc-substance-characterisation-content-required
Severity: #error
Description: "Drug Substance Characterisation must contain at least one characterisation or at least one relationship"
Expression: "characterization.exists() or relationship.exists()"

Invariant: cmc-strength-name-must-reference-scientific
Description: "strength parts must modify a scientific part, scientific parts must be modified by a strength part. The same scientific part cannot appear more than once"
Expression: "defineVariable('system','http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2').select(
defineVariable('strengthReferences',part.type.where(coding.exists(code = 'STR' and system = %system)).text).select(
defineVariable('scientificNames',part.where(type.coding.exists(code = 'SCI' and system = %system)).part).select(
    %strengthReferences = %scientificNames and 
    %scientificNames.distinct() = %scientificNames
)))"
Severity: #error

Invariant: cmc-amount-ratio-or-quantity
Severity: #error
Description: "The amount ratio extension and an amount with a non-percentage unit are mutually exclusive"
// Logically: either the modifier extension exists or an amount without a percentage sign in it exists.
// (all of the percentage units will always have the '%' symbol in it) 
// I didn't know fhirpath had a dedicated XOR in it!
Expression: "defineVariable('system','http://unitsofmeasure.org').select(
  modifierExtension.where(url= 'http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-amount-ratio').exists()
  xor
  amount.where(
    system = %system and
    code.matches('%').not()
  ).exists()
)"
// ***OLDINVARIANT ***
// NOTE: this expression should work. It doesn't after switching to the big UCUM value set
// provided by FHIR. my only guess is it has to do with the memberOf() function not working
// for whatever reason when expanding the non-percentage units valueset.

// Expression: "defineVariable('system','http://unitsofmeasure.org').select(
//   modifierExtension.where(url = 'http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-amount-ratio')
//   .union(
//     amount.where(
//         system = %system and 
//         code.memberOf('http://hl7.org/fhir/us/pq-cmc-fda/ValueSet/pqcmc-non-percentage-units')
//     )
//   ).count() = 1
// )"
// Logically: Either the amount ratio extension or an amount that isn't a percent must be present, and they
// can never be present at the same time, so their combined count is always 1

Invariant: cmc-impurity-unii-required
Severity: #error
Description: "If Product Impurity Chemical Structure Data File is not present, then a unii is required"
Expression: "structure.representation.type.coding.where(
  system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl' and
  code = 'C103240'
).exists().not() implies (
  code.where(
    code.coding.exists(system = 'http://fdasis.nlm.nih.gov')
  ).exists()
)"

Invariant: cmc-structure-representation-required
Description: "Either a file or string structure representation is required"
Expression: "representation.type.coding.where(
  system = 'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl'
  and (code in ('C45253' | 'C103240'))
).exists()"
Severity: #error

Invariant: cmc-overage-percent-limit
Description: "Overage percent must be less than 1.0"
Expression: "extension.where(url='proportionDecimal').single().value < 1"
Severity: #error
// there can only be one extension with the 'proportionDecimal url', hence the single()

Invariant: cmc-stability-mandatory-pull-date
Description: "When ResultObservation is used in Stability Study, the actualPullDate extension is required"
Severity: #error
Expression: "entry.where(resource is Observation).all(
  extension.exists(url = 'http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-pullDate-extension')
)"
// Logically: resolve every entry in the bundle, select all the Observations, then make sure
// all of them have the pull date extension
Invariant: cmc-specification-reference-oid-or-title
Description: "To Identify the specification used, Either the OID must be present, or the Title, Subtitle and Version must all be present."
Expression: "extension.where(url = 'specificationOid').exists() or (
  extension.where(url = 'specification').exists() and
  extension.where(url = 'specificationSubtitle').exists() and
  extension.where(url = 'specificationVersion').exists()
)"
Severity: #error

Invariant: cmc-range-extension-required
Description: "When the value in a ResultObservition is a Quantity, it is most commonly used with a numeric limit. Tests where only the result is reported are only required to provide the text"
Expression: "
  value.ofType(Quantity).exists() implies 
  referenceRange.modifierExtension.where(
    url = 'http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-batch-range'
  ).exists()
"
Severity: #warning


Invariant: cmc-valid-test-category-hierachies
Description: "If a child test category is used, its corresponding parent code must also be present"
Severity: #error
// Logic: 
// Define bunch of variables where the name of the variable is the parent code,
// and the value is a collection of all the possible children for that parent.
// there is always exactly one parent code, thanks to the slicing rules on the
// corresponding element, and potentially one child code. If there are two codings,
// and one of them is a special parent that has children, then the other coding must
// be from the correct collection.
Expression: "defineVariable('C60819',('C204845'|'C205001'|'C81183'|'C205003'|'C205007'|'C205015'|'C205018'|'C205020'|'C62352'|'C171277'|'C205038'|'C64858'|'C205006')).select(
defineVariable('C134250',('C205004'|'C205019'|'C134115'|'C205050')).select(
defineVariable('C205026',('C138990'|'C139027'|'C134262'|'C134261')).select(
defineVariable('C193381',('C205024')).select(
defineVariable('C25483',('C205022'|'C205017'|'C205209'|'C205053'|'C205021'|'C205016'|'C205206'|'C205045'|'C205036'|'C205011'|'C205010'|'C205009'|'C205037'|'C205025'|'C205034'|'C205033'|'C205035'|'C205005'|'C205044'|'C205043'|'C205042')).select(
defineVariable('C18951',('C16643'|'C205054'|'C205031'|'C205002'|'C205008')).select(
defineVariable('C204971',('C205039'|'C205040'|'C205052'|'C205047'|'C205048'|'C205051'|'C205014'|'C204890'|'C134254'|'C134002')).select(
  coding.count() = 2 implies (
    coding.exists(('C60819'|'C134250'|'C205026'|'C193381'|'C25483'|'C18951') contains code) 
    and (
      (coding.exists(code = 'C60819') implies coding.exists(%C60819 contains code)) and
      (coding.exists(code = 'C134250') implies coding.exists(%C134250 contains code)) and
      (coding.exists(code = 'C205026') implies coding.exists(%C205026 contains code)) and
      (coding.exists(code = 'C193381') implies coding.exists(%C193381 contains code)) and
      (coding.exists(code = 'C25483') implies coding.exists(%C25483 contains code)) and
      (coding.exists(code = 'C18951') implies coding.exists(%C18951 contains code)) and
      (coding.exists(code = 'C204971') implies coding.exists(%C204971 contains code))
    )
  )
)))))))"