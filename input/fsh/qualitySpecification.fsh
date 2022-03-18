Invariant:  pq-text-interpretationCode
Description: "The Intrepretation code for a text only acceptance criteria is NA"
Expression: "goal.target.detailCodeableConcept.coding.code = 'C134029'"
Severity:   #error

Extension: InterpretationCodeExtension
Id:  pq-interpretation-code-extension
Title: "Interpretation Code"
Description: "A code that describes how to relate the given value to an acceptance value."
* value[x] only CodeableConcept
* value[x] from PqcmcInterpretationCodeTerminology (required)

Extension: SpecificationStatusExtension
Id:  pq-specification-status-extension
Title: "Specification Status"
Description: """The current FDA regulatory status of the specification. [Source: SME Defined]
Examples: Approved, Not Approved, etc.
Note: There are instances when FDA does approve the Specifications in a supplement or an amendment where other information in the dossier has not changed.  
""" 
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from vsPqcmcSpecificationStatusTerminology (required)

Extension: SpecificationTypeExtension
Id:  pq-specification-type-extension
Title: "Specification type"
Description: """A classification of specification related to the kind of the entity it is referencing. [Source: SME Defined]
Examples:  Drug product, drug substance, etc.
"""
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from vsPqcmcSpecificationTypeTerminology (required) 

Extension: TestMethodOriginExtension
Id:  pq-test-method-origin-extension
Title: "Test Method Origin"
Description: ""
* value[x] only CodeableConcept
* value[x] from PqcmcInterpretationCodeTerminology (required)

Extension: TestOrderExtension
Id:  pq-order-extension
Title: "Test/Stage Order"
Description: ""
* value[x] only decimal  

Extension: RRTExtension
Id:  pq-rrt-extension
Title: "Relative Retention Time"
Description: ""
* value[x] only string

Profile: QualitySpecification
Parent: PlanDefinition
Id: pqcmcQualitySpecification
Title: "Quality Specification"
Description: "A quality specificaion is for a drug product or drug substance (excipient, API or raw material."
* extension contains pq-specification-status-extension named specificationStatus 0..1 MS
* extension[specificationStatus] ^short = "Specification Status"
* extension contains pq-specification-type-extension named specificationType 0..1 MS
* extension[specificationType] ^short = "Specification Type"
* identifier 1..1 MS
* version 1..1 MS
* version ^short = "Specification Version"
* version ^definition = "the alpa numberic company recorded release of the specification"
* title  1..1 MS
* title ^short = "Specification Title"
* subtitle 0..1 MS
* subtitle ^short = "Specification Subtitle"
* status 1..1 MS
* subject[x] only Canonical(RoutineDrugProduct or RoutineSubstanceDefinition or Excipient)
* subject[x] 1..1 MS
* date  1..1 MS
* date ^short = "Specification Status Date"
* goal.category  1..1 MS
* goal.category ^short = "Acceptance Criteria Usage"
* goal.description  1..1 MS
* goal.description ^short = "Original Text"
* goal.documentation 0..* MS
* goal.documentation.type = http://hl7.org/fhir/related-artifact-type#comments-on
* goal.documentation.display 1..1 MS
* goal.documentation.display ^short = "Acceptance Criteria Additional Information"
* goal.target 1..1 MS
* goal.target.detail[x] only Quantity or Range  or CodeableConcept
* goal.target.detailQuantity  0..1 MS
* goal.target.detailQuantity ^short = "Acceptance Criteria (Numeric)"
* goal.target.detailQuantity.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailQuantity.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailRange  0..1 MS
* goal.target.detailRange ^short = "Acceptance Criteria (Numeric range)"
* goal.target.detailRange.low 1..1
* goal.target.detailRange.low.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailRange.high 1..1
* goal.target.detailRange.high.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailCodeableConcept  0..1 MS
* goal.target.detailCodeableConcept ^short = "Acceptance Criteria (Text)"
* goal.target.detailCodeableConcept.coding from PqcmcInterpretationCodeTerminology 
* obeys pq-text-interpretationCode
* action MS
* action ^short = "Test"
* action.extension contains pq-test-method-origin-extension named testMethodOrigin 1..1 MS
* action.extension[testMethodOrigin] ^short = "Test Method Origin"
* action.extension contains pq-order-extension named testOrder 1..1 MS
* action.extension[testOrder] ^short = "Test/Stage Order"
* action.extension contains pq-rrt-extension named rrt 1..1 MS
* action.extension[rrt] ^short = "Relative Retention Time"
* action.title 1.. MS
* action.title ^short = "Test Name or Stage Name"
* action.description 0..1 MS
* action.description ^short = "Test Additional Information"
* action.code  1..1 MS
* action.code.coding  ^short = "Test Category"
* action.code.coding from PqcmcTestCategoryTerminology
* action.code.text  1..1 MS
* action.code.text  ^short = "Analytical Procedure"
* action.documentation 0..* MS
* action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
* action.documentation.document.url 1..1 MS
* action.documentation.document.url ^short = "Refernce to Procedure" //http: or file:
* action.goalId 1..* MS
* action.goalId ^short = "Reference to Acceptance Criteria"
* action.relatedAction ^short = "Alternate Test or Prior Stage"
* action.relatedAction.relationship from PqActionRelationTypeVS (required)