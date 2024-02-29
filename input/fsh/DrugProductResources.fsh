Extension: ContentPercent
Id:  content-percent
Title: "Content Percent"
Description: "constituent content percent"
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"
* value[x] 1..1
* value[x] obeys cmc-decimal-format
* value[x] only decimal
* . ^short = "Constituent Content Percent"
* . ^definition = """The percentage of the constituent in the component. [Source: SME Defined]
Example: Product Total Weight = 1200 mg and Product Ingredient Amount = 325 mg, so Product Ingredient Content Percent = 27.08
"""

Extension: OptionalDenominator
Id:  optional-denominator
Title: "Optional Denominator"
Description: "The constituent optional denominator is used then the unit is other than 1 per product part."
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.amount"
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent.amount"
* value[x] 1..1
* value[x] only Quantity

* . ^short = "Product Part Total Weight Numeric Denominator | Product Part Ingredient Amount Numeric Denominator"
* . ^definition = """Specifies the quantity of the ingredient(s) consistent with this single dose unit (e.g., one tablet, capsule) of drug product. [Source: SME Defined]
Example: if the tablet contains 325 mg of the ingredient in each unit dose, then Product Ingredient Numeric Denominator = 1
"""

Extension: ContainerClosureExtension
Id: pq-container-closure-extension
Title: "Container Closure"
Description: "The packaging information including a brief description of the components, the assembled packaging system and any precautions needed to ensure the protection and preservation of the drug substance or drug product during their use in the clinical trials."
* . ^short = "Container Closure System Information"
* ^context[+].type = #element
* ^context[=].expression = "MedicinalProductDefinition"
* ^context[+].type = #element
* ^context[=].expression = "SubstanceDefinition"
* extension contains
    containerType 1..1 MS and
    closureType 1..1 MS and  
    description 1..1 MS and
    depiction 0..* MS 
* extension[containerType].value[x] 1..1
* extension[containerType].value[x] only CodeableConcept
* extension[containerType].value[x] from PqcmcContainerTypeTerminology (required)
* extension[containerType].value[x] ^short = "Container Type"
* extension[containerType].value[x] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C4164]"
* extension[closureType].value[x] 1..1
* extension[closureType].value[x] only CodeableConcept
* extension[closureType].value[x] from PqcmcClosureTypeTerminology (required)
* extension[closureType].value[x] ^short = "Closure Type"
* extension[closureType].value[x] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
* extension[description].value[x] 1..1
* extension[description].value[x] only markdown
* extension[description].value[x] ^short = "Container Closure System Description"
* extension[description].value[x] ^definition = """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
"""
* extension[depiction].value[x] 1..1
* extension[depiction].value[x] only Reference(Base64DocumentReference)

Extension: ProductBatchIngredientExtension
Id: pq-product-batch-ingredient-extension
Title: "Product Batch Ingredient Extension"
Description: "Extension for measurement properties for ingredients in the batch formula."
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"
* extension contains
  overagePercent 0..1 MS and
  overageJustification 0..1 MS and
  strengthTextual 1..1 MS
* extension[overagePercent].value[x] only decimal
* extension[overagePercent].value[x] ^short = "Overage Percent"
* extension[overagePercent].value[x] ^definition = """Overage is the percent of a drug substance in excess of the label claim to compensate for the loss, such as manufacturing or other.
Note: This is not for stability loss, and generally not permitted.
Example: 3% overage of drug that has a label claim of 10mg of active (API) - the formulation would have 10.3 mg. A batch formula for 100 kg would contain 103 kg of API.
"""
* extension[overageJustification].value[x] only markdown
* extension[overageJustification].value[x] ^short = "Overage Justification"
* extension[overageJustification].value[x] ^definition = "The rationale for use of excess drug substance during manufacturing of the drug product [Source: SME Defined]"
* extension[strengthTextual] 1..1 MS 
* extension[strengthTextual].value[x] only string
* extension[strengthTextual].value[x] ^short = "Strength Textual"
* extension[strengthTextual].value[x] ^definition = """A written description of the strength of the ingredient.[Source: SME Defined]
Note: This is typically applicable to biologics
Example: International Units for Enzymes
"""

Profile: DrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product
Title: "Drug Product"
Description: "This profile is not used in any bundles. It is a reference profile of MedicinalProductDefinition if not divided into eCTD sections. It includes the properties of the drug product, its components and impurities"

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* description 1..1 MS
* description ^short = "Drug Product Description"
* description ^definition = """A textual narrative describing the drug product or products. [Source: SME Defined]
Examples: dosage form, container closure system, purpose."""

* combinedPharmaceuticalDoseForm 0..1 MS
* combinedPharmaceuticalDoseForm ^short = "Product Dosage Form"
* combinedPharmaceuticalDoseForm ^definition = """TThe form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
"""
* combinedPharmaceuticalDoseForm.coding MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding from SplPharmaceuticalDosageFormTerminology
* route 1..* MS
* route ^short = "Route of Administration"
* route ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI E C38114]"
* route.coding MS
* route.coding from SplDrugRouteofAdministrationTerminology	
* comprisedOf 0..* MS
* comprisedOf only Reference(FinishedProduct or BatchFormula)
* impurity 0..* MS
* impurity ^short = "Product Impurity"
* impurity.concept 0..0
* impurity only CodeableReference(ImpuritySubstance)
* insert ProprietaryAndNonProprietaryNames
* crossReference MS
* crossReference.product MS
* crossReference.product ^short = "Co-Packaged drug product"

Profile: FinishedProduct
Parent: ManufacturedItemDefinition
Id: pqcmc-product-part
Title: "Manufactured Drug Product"
Description: "The manufactured drug product defined by all its parts or layers. If the drug product composition is homogeneous it will have a single part or component."
* obeys cmc-capsule-count-required
* obeys cmc-arbitrary-unit-text-required
* obeys cmc-coating-indication-required
* meta.profile 1..1 MS
* identifier 0..1 MS
* status 1..1 MS
* name MS
* name ^short = "Product Proprietary Name | Product Non-proprietary Name"
* name ^definition = """Product Proprietary Name: The exclusive name of a drug product owned by a company under trademark law regardless of registration status with the Patent and Trademark Office (PTO). [Source: SME Defined] Note: Excludes dosage form, route of administration and strength. 
Example: Tylenol

Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]"""
* manufacturedDoseForm.coding from PqcmcManufacturedDoseFormTerminology
* property 1..* MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #closed
* property ^slicing.description = "Slice based on value"
* property contains
      OvrRelsProf 1..1 MS and
      OvrRelsMech 0..1 MS and
      CoatInd 0..1 MS and
      LayCnt 0..1 MS and
      BeaTypCnt 0..1 MS and
      CapClass 0..1 MS and
      CapConCnt 0..1 MS and
      Schematic 1..* MS and
      WgtTyp 1..1 MS and
      TotWgtNum 1..1 MS and
      TotWgtDen 0..1 MS and
      TotWgtTxt 0..1 MS and
      TotWgtOper 0..1 MS and
      QualStd 1..* MS
* property[OvrRelsProf].type MS
* property[OvrRelsProf].type = $NCIT#OvrRelsProf "Product Overall Release Profile"
* property[OvrRelsProf].type from pqcmc-product-characteristic
* property[OvrRelsProf].valueCodeableConcept 1..1 MS
* property[OvrRelsProf].valueCodeableConcept ^short = "Product Overall Release Profile"
* property[OvrRelsProf].valueCodeableConcept ^definition = """The overall release profile is the drug release profile (e.g., IR, DR, or ER-USP nomenclature) that is achieved by the drug delivery system used in the dosage form design as evident from the pharmacokinetic plasma drug concentration versus time curve (this is currently focused on solids).
For example, a capsule filled with IR and DR beads will exhibit an ER release profile as evident from the pharmacokinetic curve. In this example, the "product overall release profile" is "ER". [Source: SME Defined]
"""
* property[OvrRelsProf].valueCodeableConcept.coding from PqcmcReleaseProfile

* property[OvrRelsMech].type MS
* property[OvrRelsMech].type = $NCIT#OvrRelsMech "Product Overall Release Mechanism"
* property[OvrRelsMech].type from pqcmc-product-characteristic
* property[OvrRelsMech].valueCodeableConcept 1..1 MS
* property[OvrRelsMech].valueCodeableConcept ^short = "Product Overall Release Mechanism"
* property[OvrRelsMech].valueCodeableConcept ^definition = """TThe dosage form design used to achieve an ER release profile.  Examples of overall release mechanisms include osmotic pump, reservoir, and matrix. [Source: SME Defined]
"""
* property[OvrRelsMech].valueCodeableConcept.coding from PqcmcReleaseMechanism

* property[CoatInd].type MS
* property[CoatInd].type from pqcmc-product-characteristic
* property[CoatInd].type = $NCIT#CoatInd "Coating Indicator"
* property[CoatInd].valueBoolean 1..1 MS
* property[CoatInd].valueBoolean ^short = "Product Coating Indicator"
* property[CoatInd].valueBoolean ^definition = "A property that identifies whether the drug product contains any coatings. [Source: SME Defined]"

* property[LayCnt].type MS
* property[LayCnt].type from pqcmc-product-characteristic
* property[LayCnt].type = $NCIT#TabLayCnt "Tablet Layer Count"
* property[LayCnt].value[x] 1..1 MS
* property[LayCnt].value[x] only Quantity
* property[LayCnt].valueQuantity.value ^short = "Product Tablet Layer Count"
* property[LayCnt].valueQuantity.value ^definition = """The total number of layers in the tablet. [Source: SME Defined]
Note: Non-layered tablets will be considered as one layer tablets."""
* property[LayCnt].valueQuantity.code = $NCIT#C66832 "1*"

* property[BeaTypCnt].type MS
* property[BeaTypCnt].type from pqcmc-product-characteristic
* property[BeaTypCnt].type = $NCIT#BeaTypCnt "Tablet Bead Type Count"
* property[BeaTypCnt].value[x] 1..1 MS
* property[BeaTypCnt].value[x] only Quantity
* property[BeaTypCnt].valueQuantity.value ^short = "Tablet Bead Type Count"
* property[BeaTypCnt].valueQuantity.value ^definition = """TThe total number of type of beads present in a tablet [Source: SME Defined]
Example: For the case of a 1- layer tablet containing 2 types of beads, Tablet Bead Type Count = 2.
"""
* property[BeaTypCnt].valueQuantity.code = $NCIT#C66832 "1*"

* property[CapClass].type MS
* property[CapClass].type from pqcmc-product-characteristic
* property[CapClass].type = $NCIT#CapClass "Capsule Classification Category"
* property[CapClass].valueCodeableConcept 1..1 MS
* property[CapClass].valueCodeableConcept ^short = "Capsule Shell Part Classification Category"
* property[CapClass].valueCodeableConcept ^definition = "Categorization of the capsule shell based on factors such as the shell’s barrier to water and oxygen, reactivity, and the material it is made of. [Source: SME Defined]"
* property[CapClass].valueCodeableConcept.coding from PqcmcCapsuleClassificationCategory

* property[CapConCnt].type MS
* property[CapConCnt].type from pqcmc-product-characteristic
* property[CapConCnt].type = $NCIT#CapConCnt "Capsule Constituent Count"
* property[CapConCnt].value[x] 1..1 MS
* property[CapConCnt].value[x] only Quantity
* property[CapConCnt].valueQuantity.value ^short = "Product Capsule Constituent Count"
* property[CapConCnt].valueQuantity.value ^definition = """The number of distinct constituents contained in the capsule shell of the drug product. [Source: SME Defined]
Example: For the case of a capsule shell filled with one type of bead and a minitablet, Constituent Type Count = 2.
"""
* property[CapConCnt].valueQuantity.code = $NCIT#C66832 "1*"

* property[Schematic].type MS
* property[Schematic].type from pqcmc-product-characteristic
* property[Schematic].type = $NCIT#Schematic "Product Schematic"
* property[Schematic].valueAttachment 1..1 MS
* property[Schematic].valueAttachment ^short = "Product Schematic"
* property[Schematic].valueAttachment ^definition = "The pictorial representation of the drug product. [Source: SME Defined]"

* property[WgtTyp].type MS
* property[WgtTyp].type from pqcmc-product-characteristic
* property[WgtTyp].type = $NCIT#WgtTyp "Product Weight Type"
* property[WgtTyp].valueCodeableConcept 1..1 MS
* property[WgtTyp].valueCodeableConcept ^short = "Product Weight Type"
* property[WgtTyp].valueCodeableConcept ^definition = """A physical (content) or activity measurement of the weight of the drug product unit. [Source: SME Defined]
Example: Mass, Activity"""
* property[WgtTyp].valueCodeableConcept.coding from PqcmcStrengthTypeTerminology

* property[TotWgtNum].type MS
* property[TotWgtNum].type from pqcmc-product-characteristic
* property[TotWgtNum].type = $NCIT#TotWgtNum "Product Total Weight Numeric Numerator"
* property[TotWgtNum].value[x] 1..1 MS
* property[TotWgtNum].value[x] only Quantity
* property[TotWgtNum].valueQuantity.value ^short = "Product Total Weight Numeric Numerator"
* property[TotWgtNum].valueQuantity.value ^definition = """Specifies the total quantity of all ingredients in a single unit of the drug product. [Source: SME Defined]
Note: a single unit of a solid oral dose form could be a tablet or a capsule"""
* property[TotWgtNum].valueQuantity.code from PqcmcUnitsMeasureTerminology

* property[TotWgtDen].type MS
* property[TotWgtDen].type from pqcmc-product-characteristic
* property[TotWgtDen].type = $NCIT#TotWgtDen "Product Total Weight Numeric Denominator"
* property[TotWgtDen].value[x] 1..1 MS
* property[TotWgtDen].value[x] only Quantity
* property[TotWgtDen].valueQuantity.value ^short = "Product Total Weight Numeric Denominator"
* property[TotWgtDen].valueQuantity.value ^definition = """Specifies the quantity of the ingredient (s) consistent with a single unit dose or as expressed on the label. [Source: SME Defined]
Note: For solid oral dose forms, by definition this is 1
"""
* property[TotWgtDen].valueQuantity.code from PqcmcUnitsMeasureTerminology
* property[TotWgtTxt].type MS
* property[TotWgtTxt].type from pqcmc-product-characteristic
* property[TotWgtTxt].type = $NCIT#TotWgtTxt "Total Weight Textual"
* property[TotWgtTxt].value[x] 1..1 MS
* property[TotWgtTxt].value[x] only markdown
* property[TotWgtTxt].valueMarkdown.value ^short = "Product Total Weight Textual"
* property[TotWgtTxt].valueMarkdown.value ^definition = """A written description of the weight of the drug product. [Source: SME Defined]
Note: This is typically applicable to biologics
Example: International Units for Enzymes"""
* property[TotWgtOper].type MS
* property[TotWgtOper].type from pqcmc-product-characteristic
* property[TotWgtOper].type = $NCIT#TotWgtOper "Total Weight Operator"
* property[TotWgtOper].valueCodeableConcept 1..1 MS
* property[TotWgtOper].valueCodeableConcept ^short = "Product Total Weight Operator"
* property[TotWgtOper].valueCodeableConcept ^definition = """A mathematical symbol that denotes equality or inequality between two values. [Source: SME Defined] Examples: LT, EQ, NMT.
Note: This is typically applicable to biologics.
"""
* property[TotWgtOper].valueCodeableConcept from PqcmcStrengthOperatorTerminology
* property[QualStd].type MS
* property[QualStd].type from pqcmc-product-characteristic
* property[QualStd].type = $NCIT#QualStd "Quality Standard"
* property[QualStd].valueCodeableConcept 1..1 MS  
* property[QualStd].valueCodeableConcept ^short = "Product Quality Standard"
* property[QualStd].valueCodeableConcept ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* property[QualStd].valueCodeableConcept from PqcmcQualityBenchmarkTerminology (required)

// Product parts
* component 1..* MS
* component obeys cmc-ppidref-required
* component obeys cmc-ingredient-functions
* component.type 1..1 MS
* component.type ^short = "Product Part Type"
* component.type ^definition = """Identifies the kind of element, based on the design the applicant develops to achieve the desired drug product and overall release profile. [Source: SME Defined]
Example: Layer, Bead, Minitablet, Capsule Shell, Coating
"""
* component.type.coding from PqcmcProductPartType
* component.function.text 0..1 MS
* component.function.text ^short = "Product Part Function Description"
* component.function.text ^definition = """The main purpose for the part in the dosage form. [Source: SME Defined]
Example: In a two layer tablet with two APIs: Product Part Function Description for Layer 1 = Deliver API 1 and Product Part Function Description for Layer 2 = Deliver API 2
"""
* component.amount.value 1..1 MS
* component.amount.extension contains optional-denominator named WghtlDenom  0..1 MS	
* component.amount.value ^short = "Product Part Total Weight Numeric Numerator"
* component.amount.value ^definition = """Specifies the total quantity of all ingredients in a single part of the drug product. [Source: SME Defined]
Note: a single unit of a solid oral dose form could be a layer of a tablet or a minitablet in a capsule
"""
* component.amount.unit 1..1 MS
* component.amount.unit ^short = "Product Part Total Weight Numeric Numerator UOM"
* component.amount.unit ^definition = """The labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI E C117055]
Example: mg
"""
* component.amount.code 1..1 MS
* component.amount.code from PqcmcUnitsMeasureTerminology

// ingredient
* component.constituent 1..* MS
* component.constituent.extension contains content-percent named ConstituentPercent  1..1 MS	
* component.constituent.amount 1..1  MS
* component.constituent.amount.extension contains optional-denominator named OptionalDenom  0..1 MS	
* component.constituent.amount.value 1..1 MS
* component.constituent.amount.value ^short = "Product Part Ingredient Amount Numeric Numerator"
* component.constituent.amount.value ^definition = """Specifies the quantity of an ingredient in a single part of the drug product. [Source: SME Defined]
Note: a single part of a solid oral dose form could be a layer of a tablet or a minitablet in a capsule
Note: Amount can also be referred to as potency in biologics and other products.
"""
* component.constituent.amount.unit 1..1 MS
* component.constituent.amount.unit ^short = "Product Part Ingredient Amount Numeric Numerator UOM"
* component.constituent.amount.unit ^definition = """The labeled unit of measure for the content of an ingredient, expressed quantitatively per product part. [Source: Adapted for NCI EVS C117055]
"""
* component.constituent.amount.code 1..1 MS
* component.constituent.amount.code from PqcmcUnitsMeasureTerminology
* component.constituent.location 0..* MS
* component.constituent.location ^short = "Product Part Ingredient Physical Location"
* component.constituent.location ^definition = """Identifies where the ingredient physically resides within the product part. [Source: SME Defined]
Examples: Intragranular, Extra granular, Blend
"""
* component.constituent.location.coding 1..1 MS
* component.constituent.location.coding from PqcmcProductPartIngredientPhysicalLocation
* component.constituent.location.text 0..1 MS
* component.constituent.function 1..2 MS
* component.constituent.function.coding 1..1 MS
* component.constituent.function ^slicing.discriminator.type = #value // or #value
* component.constituent.function ^slicing.discriminator.path = "coding"
* component.constituent.function ^slicing.ordered = true
* component.constituent.function ^slicing.rules = #closed
* component.constituent.function ^slicing.description = "Slice on the function coding"
* component.constituent.function contains
    Category 1..1 MS and
    Function 0..1 MS
* component.constituent.function[Category] ^short = "Product Part Ingredient Component Function Category"
* component.constituent.function[Category] ^definition = """A classification that identifies the higher level purpose of that material. [Source: SME Defined]
Example: Active Ingredient, Inactive Ingredient, Adjuvant."""
* component.constituent.function[Category].coding from PqcmcDrugProductComponentFunctionCategoryTerminology (required)
* component.constituent.function[Function] ^short = "Product Part Ingredient Function"
* component.constituent.function[Function] ^definition = """A sub-classification of part ingredients identifying its purpose/role in the drug product part (e.g., in the layer, bead, minitablet). [Source: SME Defined]
Examples: Filler, Surfactant"""
* component.constituent.function[Function].coding from PqcmcExcipientFunctionTerminology (required)
* component.constituent.hasIngredient 1..1 MS
* component.constituent.hasIngredient only CodeableReference(DrugProductComponent)
// Product part properties
* component.property 0..* MS
* component.property 1..* MS
* component.property ^slicing.discriminator.type = #value
* component.property ^slicing.discriminator.path = "type"
* component.property ^slicing.rules = #closed
* component.property ^slicing.description = "Slice based on value"
* component.property contains
    PPiD 1..1 MS and
    PPiDref 0..1 MS and
    RelsProf 1..1 MS and
    RelsMech 0..1 MS and
    CoatPurpose 0..* MS and
    Color 0..1 MS and
    ContPercent 1..1 MS and
    AddInfo 0..1 MS 
* component.property[PPiD].type MS
* component.property[PPiD].type = $NCIT#PPiD "Product Part Identifier"
* component.property[PPiD].value[x] 1..1 MS
* component.property[PPiD].value[x] only CodeableConcept
* component.property[PPiD].valueCodeableConcept.coding from CmcRelationshipTypesVS	
* component.property[PPiD].valueCodeableConcept.coding  ^short = "Product Part Role"
* component.property[PPiD].valueCodeableConcept.coding ^definition = """If the Product does not have parts the Product Part Role is 'Primary'.
If the Product does have parts and the Product Part does not have a Product Part Identifier Reference then the component is a 'Parent'.  
If the Product does have parts and there is a Product Part Identifier Reference the component  is a 'Child'.
"""
* component.property[PPiD].valueCodeableConcept.text 1..1 MS
* component.property[PPiD].valueCodeableConcept.text ^short = "Product Part Identifier"
* component.property[PPiD].valueCodeableConcept.text ^definition = """A submitter designated identifier that uniquely identifies the part within the drug product. [Source: SME Defined]
Examples: 1, A1, Red bead, Blue minitablet
"""
* component.property[PPiDref].type MS
* component.property[PPiDref].type = $NCIT#PPiDref "Product Part Identifier Reference"
* component.property[PPiDref].value[x] 1..1 MS
* component.property[PPiDref].value[x] only CodeableConcept
* component.property[PPiDref].valueCodeableConcept.text 1..1 MS
* component.property[PPiDref].valueCodeableConcept.text ^short = "Product Part Identifier Reference"
* component.property[PPiDref].valueCodeableConcept.text ^definition = """ Identifies the parent or outer-level product part. [Source: SME Defined]
Example: A bead (Product Part Identifier = “B1”) has a seal coating (Product Part Identifier = “SCoat”) and is contained in a Hard HPMC capsule shell (Product Part Identifier “Cap Shell”). For the seal coating, Product Part Identifier Reference = “B1”, because the seal coat is applied to the bead.
"""
* component.property[RelsProf].type MS
* component.property[RelsProf].type = $NCIT#RelsProf "Product Part Release Profile"
* component.property[RelsProf].value[x] 1..1 MS
* component.property[RelsProf].value[x] only CodeableConcept
* component.property[RelsProf].valueCodeableConcept ^short = "Product Part Release Profile"
* component.property[RelsProf].valueCodeableConcept ^definition = """The behavior in which drug substance migrates from the drug product part to the surrounding environment (e.g., biological fluids, dissolution media, etc.) [Source: SME Defined]"""
* component.property[RelsProf].valueCodeableConcept.coding from PqcmcReleaseProfile

* component.property[RelsMech].type = $NCIT#RelsMech "Product Part Release Mechanism"
* component.property[RelsMech].value[x] 1..1 MS
* component.property[RelsMech].value[x] only CodeableConcept
* component.property[RelsMech].valueCodeableConcept ^short = "Product Part Release Mechanism"
* component.property[RelsMech].valueCodeableConcept ^definition = """The method employed to realize the specified part release profile. [Source: SME Defined] Example: matrix or reservoir"""

* component.property[RelsMech].valueCodeableConcept.coding from PqcmcReleaseMechanism

* component.property[CoatPurpose].type MS
* component.property[CoatPurpose].type = $NCIT#CoatPurpose "Coating Product Part Purpose"
* component.property[CoatPurpose].value[x] 1..1 MS
* component.property[CoatPurpose].value[x] only CodeableConcept
* component.property[CoatPurpose].valueCodeableConcept ^short = "Coating Product Part Purpose"
* component.property[CoatPurpose].valueCodeableConcept ^definition = """
The reason the coating or covering was added. [Source: SME Defined]
Examples: rate-controlling, color, release type, protective, taste masking.
"""
* component.property[CoatPurpose].valueCodeableConcept.coding from PqcmcCoatingPurpose

* component.property[Color].type MS
* component.property[Color].type = $NCIT#Color "Product Part Color Description"
* component.property[Color].value[x] 1..1 MS
* component.property[Color].value[x] only CodeableConcept
* component.property[Color].valueCodeableConcept.text 1..1 MS
* component.property[Color].valueCodeableConcept.text ^short = "Product Part Color Description"
* component.property[Color].valueCodeableConcept.text ^definition = """The hue or the tint of the drug product part. [Source: SME Defined]
Examples: yellow, pink, blue, pale yellow."""

* component.property[ContPercent].type MS
* component.property[ContPercent].type = $NCIT#ContPercent "Product Part Content Percent"
* component.property[ContPercent].value[x] 1..1 MS
* component.property[ContPercent].value[x] only Quantity
* component.property[ContPercent].valueQuantity ^short = "Product Part Content Percent"
* component.property[ContPercent].valueQuantity ^definition = """The percentage of the drug product as a whole, that is represented by this part. [Source: SME Defined]
Example: total tablet weight = 400 mg, total weight of layer = 250 mg, then Content Percent for the layer = 62.5
"""
* component.property[AddInfo].type MS
* component.property[AddInfo].type = $NCIT#AddInfo "Product Part Additional Information"
* component.property[AddInfo].value[x] only markdown
* component.property[AddInfo].valueMarkdown ^short = "Product Part Additional Information"
* component.property[AddInfo].valueMarkdown ^definition = """A placeholder for providing any comments that are relevant to the drug product component. [Source: SME Defined] Examples: removed during process, adjusted for loss on drying.
Implementation note: This is represented in  markdown.  For multiple comments utilize markdwon formating for separation of notes.
"""
* component.component 0..* MS

Profile: BatchFormula
Parent: ManufacturedItemDefinition
Id: pqcmc-product-batch-formula
Title: "Drug Product Batch Formula"
Description: "Listing of all components of the dosage form to be used in the manufacture, their amounts on a per batch basis, including overages, and reference to their quality standards."

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* status 1..1 MS
* name 1..1 MS
* name ^short = "Product Non-proprietary Name"
* name ^definition = """A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]
"""
* manufacturer MS
* manufacturer only Reference(MfgTestSiteOrganization) 
* property 1..* MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #closed
* property ^slicing.description = "Slice based on value"
* property contains
      BatchSize 1..1 MS and
      BatchUtil 1..* MS and
      AddInfo 0..1 MS
* property[BatchSize].type 1..1 MS
* property[BatchSize].type ^short = "Batch Quantity"
* property[BatchSize].type ^definition = """The amount of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
"""
* property[BatchSize].type = $NCIT#batchsize "Batch Quantity"
* property[BatchSize].value[x] only Quantity
* property[BatchSize].valueQuantity.unit 1..1 MS
* property[BatchSize].valueQuantity.unit ^short = "Quantity UOM"
* property[BatchSize].valueQuantity.unit ^definition = """A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* property[BatchSize].valueQuantity.code 1..1 MS
* property[BatchSize].valueQuantity.code from  PqcmcUnitsMeasureTerminology

* property[BatchUtil].type = $NCIT#BatchUtil "Batch Utilization"
* property[BatchUtil].value[x] only CodeableConcept
* property[BatchUtil].valueCodeableConcept 1..1 MS
* property[BatchUtil].valueCodeableConcept ^short = "Batch Utilization"
* property[BatchUtil].valueCodeableConcept ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined]
Examples: commercial, development. """
* property[BatchUtil].valueCodeableConcept.coding from PqcmcBatchUtilizationTerminology
* property[AddInfo].type 1..1 MS
* property[AddInfo].type = $NCIT#batchinfo "Batch Formula Additional Information"
* property[AddInfo].value[x] only markdown
* property[AddInfo].valueMarkdown ^short = "Batch Formula Additional Information"
* property[AddInfo].valueMarkdown ^definition = """A placeholder for providing any comments that are relevant to the batch formula. [Source: SME Defined]
Examples: Water for wet granulation -- removed during processing; adjusted for assay, etc.
"""
// Product parts
* component 1..* MS
* component.type 1..1 MS
* component.type ^short = "Product Part Type"
* component.type ^definition = """Identifies the kind of element, based on the design the applicant develops to achieve the desired drug product and overall release profile. [Source: SME Defined]
Example: Layer, Bead, Minitablet, Capsule Shell, Coating
"""
// ingredient
* component.constituent 1..* MS
* component.constituent.extension contains pq-additional-info-extension named additional-info 0..1 MS
* component.constituent.extension[additional-info] ^short = "Drug Product Constituent Additional Information"
* component.constituent.extension[additional-info] ^definition = """A placeholder for providing any comments relevant to the constituent [Source: SME Defined]
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.* property[
"""
* component.constituent.extension contains pq-product-batch-ingredient-extension named formulaIngredient 0..1 MS
* component.constituent.amount 1..2 MS
* component.constituent.amount ^slicing.discriminator.type = #value
* component.constituent.amount ^slicing.discriminator.path = "code"
* component.constituent.amount ^slicing.rules = #closed
* component.constituent.amount ^slicing.description = "Slice based on value of unit"
* component.constituent.amount contains
      Weight 1..1 MS and
      VolumeToVolume 0..1 MS and
      WeightToVolume 0..1 MS and 
      WeightToWeight 0..1 MS
* component.constituent.amount[Weight].value 1..1 MS
* component.constituent.amount[Weight] obeys cmc-percent-quantity
* component.constituent.amount[Weight].value ^short = "Component Quantity Per Batch"
* component.constituent.amount[Weight].value ^definition = """Specifies the amount of the component per batch size of the drug product. [Source: SME Defined]
"""
* component.constituent.amount[Weight].unit 1..1 MS
* component.constituent.amount[Weight].code 1..1 MS
* component.constituent.amount[Weight].code from PqcmcUnitsMeasureTerminology (required)
* component.constituent.amount[VolumeToVolume].value 1..1 MS
* component.constituent.amount[VolumeToVolume].value ^short = "Quantity Percent"
* component.constituent.amount[VolumeToVolume].value ^definition = """Quantity expressed as Volume To Volume: The percentage of the component in the batch [Source: SME Defined]
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
"""
* component.constituent.amount[VolumeToVolume].code = $NCIT#C48571 "%{VolumeToVolume}"

* component.constituent.amount[WeightToVolume].value 1..1 MS
* component.constituent.amount[WeightToVolume].value ^short = "Quantity Percent"
* component.constituent.amount[WeightToVolume].value ^definition = """Quantity expressed as Weight To Volume: The percentage of the component in the batch [Source: SME Defined]

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
"""
* component.constituent.amount[WeightToVolume].code = $NCIT#C48527 "%{WeightToVolume}"
* component.constituent.amount[WeightToWeight].value 1..1 MS
* component.constituent.amount[WeightToWeight].value ^short = "Quantity Percent"
* component.constituent.amount[WeightToWeight].value ^definition = """Quantity expressed as Weight To Weight: The percentage of the component in the batch [Source: SME Defined] 

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
"""
* component.constituent.amount[WeightToWeight].code = $NCIT#C48528 "%{WeightToWeight}"

* component.constituent.location 0..* MS
* component.constituent.location ^short = "Product Part Ingredient Physical Location"
* component.constituent.location ^definition = """Identifies where the ingredient physically resides within the product part. [Source: SME Defined]
Examples: Intragranular, Extra granular, Blend
"""
* component.constituent.location.coding from PqcmcProductPartIngredientPhysicalLocation
* component.constituent.hasIngredient 1..1 MS
* component.constituent.hasIngredient only CodeableReference(DrugProductIngredient)
// Product part
* component.property 0..1 MS
* component.property.type = $NCIT#info "Product Part Additional Information"
* component.property.value[x] only markdown
* component.property.valueMarkdown ^short = "Component Additional Information"
* component.property.valueMarkdown ^definition = """A placeholder for providing any comments relevant to the component. [Source: SME Defined]
 Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.."""
* component.component 0..* MS

Profile: DrugProductBatch
Parent: Medication
Id: pqcmc-drug-product-instance
Title: "Drug Product Manufactured Instance"
Description: "Includes the properties of the drug product as manufactured."

* meta.profile 1..1 MS
* identifier 1..* MS
* identifier ^short = "Product Proprietary Name | Product Non-Proprietary Name"
* identifier ^definition = """Product Proprietary Name: The exclusive name of a drug product owned by a company under trademark law regardless of registration status with the US Patent and Trademark Office (PTO). [Source: SME Defined]
Note:  Excludes dosage form, route of administration and strength. Example:  Tylenol 

Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]
"""
// hold authroization for eStability
* marketingAuthorizationHolder 0..1 MS
* marketingAuthorizationHolder ^short = ""
* marketingAuthorizationHolder only Reference(SponsorOrganization)
* doseForm 0..1 MS
* doseForm 
* doseForm ^definition = """The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
"""
* doseForm.coding from SplPharmaceuticalDosageFormTerminology (required)
* ingredient 1..* MS
* ingredient.item ^short = "UNII"
* ingredient.item ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to
* http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* ingredient.item.concept.text 1..1 MS
* ingredient.isActive 1..1 MS
* ingredient.isActive ^short = "Active ingredient indicator"
* ingredient.strengthRatio.numerator 1..1 MS
* ingredient.strengthRatio.numerator ^short = "Strength Numeric Numerator"
* ingredient.strengthRatio.numerator ^definition = """The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]
"""
* ingredient.strengthRatio.numerator.code from PqcmcUnitsMeasureTerminology
* ingredient.strengthRatio.denominator 1..1 MS
* ingredient.strengthRatio.denominator ^short = "Strength Numeric Denominator"
* ingredient.strengthRatio.denominator ^definition = """Specifies the quantity of the ingredient (s) consistent with a single unit dose or as expressed on the label. [Source: SME Defined]
Note: Kg value is only applicable for veterinary applications. 
Note: This is the denominator value when expressing the strength for APIs Example: 5 mg per 100 mL """
* ingredient.strengthRatio.denominator.code from PqcmcUnitsMeasureTerminology (required)
* batch 1..1 MS
* batch.extension contains drug-product-manufacturing-batch named medication-batch 1..1 MS
* batch.lotNumber 1..1 MS
* batch.lotNumber ^short = "Batch or Lot Number (Bulk Batch ID)"
* batch.lotNumber ^definition = """A combination of letters, numbers, or symbols, or any combination of them, from which the complete history of the manufacture, processing, packing, holding, and distribution of a batch or lot of drug product or other material can be determined. [Source: Adapted reference: 21 CFR 210.3 Definitions (4/1/2014)]
"""
* batch.expirationDate 1..1 MS
* batch.expirationDate ^short = "Expiration Date"
* batch.expirationDate ^definition = "The date the manufacturer guarantees the full potency and safety of a particular batch/lot of medicinal product. The complete point in time date consisting of day, month and year shall be specified using the ISO 8601 date format. [Source: ISO IDMP 11615-2017]"

Profile: DrugProductmanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-product-manufacturing-batch
Title: "Drug Product Manufacturing Batch"
Description: "This profile defines the details of a batch of medicine."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/drug-product-manufacturing-batch"
* ^context.type = #element
* ^context.expression = "Medication.batch"
* extension[manufacturingDate] 1..1 MS
* extension[manufacturingDate] ^short = "Manufacturing Date"
* extension[manufacturingDate] ^definition = """The date associated with manufacturing a batch. [Source: SME Defined]
Note: See Manufacturing Date Description element. """
* extension[manufacturingDate].valueDateTime MS
* extension[manufacturingDateClassification] 1..1 MS
* extension[manufacturingDateClassification] ^short = "Manufacturing Date Description"
* extension[manufacturingDateClassification] ^definition = """A textual description that provides a rationale for the selection of the manufacturing date. [Source: SME Defined] Note: This description should include the specific operation/step in the manufacturing process associated with the assigned manufacturing date. """
* extension[manufacturingDateClassification].valueCodeableConcept MS
* extension[assignedManufacturer] 1..1 MS
* extension[assignedManufacturer] ^short = "Assigned Manufacturer"
* extension[assignedManufacturer].valueReference only Reference(MfgTestSiteOrganization)
* extension[expirationDateClassification] 1..1 MS
* extension[expirationDateClassification] ^short = "Expiration Date Classification"
* extension[expirationDateClassification] ^definition = """The endorsement of the expiration date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant. [Source: SME Defined]
This classification applies to ALL products.
 For an original application, Expiration Date Classification is 'Proposed'.
 After an application has been approved, Expiration date classification is 'Approved'
 For a Supplement that's changing the expiration date that is already classified as 'Approved' for the drug product, the changed Expiration Date Classification would be 'Proposed'.
 For products that do not have an Expiration Date, the Expiration Date Classification will be 'NA'.
"""
* extension[expirationDateClassification].valueCodeableConcept MS
* extension[expirationDateClassification].valueCodeableConcept from PqcmcExpirationDateClassificationTerminology (required)
* extension[batchUtilization] 1..1 MS
* extension[batchUtilization] ^short = "Batch Utilization"
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined]
Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS
* extension[batchUtilization].valueCodeableConcept from PqcmcBatchUtilizationTerminology (required)
* extension[batchQuantity] 1..1 MS
* extension[batchQuantity] ^short = "Batch Size"
* extension[batchQuantity] ^definition = "The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]"
* extension[batchQuantity].value[x] 1..1 MS
* extension[batchQuantity].value[x] only Quantity
* extension[batchQuantity].value[x].code from PqcmcUnitsMeasureTerminology (required)
* extension[additionalInformation] MS
* extension[additionalInformation] ^short = "Additional Information"
* extension[additionalInformation] ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined]
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc.
"""
* extension[additionalInformation].valueString MS
* extension[container] 1..* MS
* extension[container] ^short = "Container"
* extension[container].extension[lotNumber].valueString 1..1 MS
* extension[container].extension[lotNumber] ^short = "Container Lot Number"
* extension[container].extension[lotNumber] ^definition = """A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot.
 Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container). This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
 """
* extension[container].extension[type] 1..1 MS
* extension[container].extension[type] ^short = "Container Type"
* extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[container].extension[type].valueCodeableConcept 1..1 MS
* extension[container].extension[type].valueCodeableConcept from PqcmcContainerTypeTerminology (required)
* extension[container].extension[quantity] 1..1 MS
* extension[container].extension[quantity] ^short = "Container Fill per Container Size"
* extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit
 Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709] Examples: tablets, mL.
 Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
 Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709] Examples: mL, L, cc.
 """
* extension[container].extension[quantity].valueRatio 1..1 MS
* extension[container].extension[closureSystemDescription] 1..1 MS
* extension[container].extension[closureSystemDescription] ^short = "Container Closure System Description"
* extension[container].extension[closureSystemDescription] ^definition = """ Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
 Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
 Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
 """
* extension[container].extension[closureSystemDescription].valueString 1..1 MS
* extension[container].extension[closureType] 1..1 MS
* extension[container].extension[closureType] ^short = "Closure Type"
* extension[container].extension[closureType] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
* extension[container].extension[closureType].valueCodeableConcept 1..1 MS
* extension[container].extension[closureType].valueCodeableConcept from PqcmcClosureTypeTerminology (required)

Profile: RoutineDrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-routine-drug-product 
Title: "Routine Drug Product"
Description: "Includes the identifying information of the drug product. Profile of Drug Product profile."

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "Optional user designated identifier"
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code ^short = "Product Dosage Form"
* combinedPharmaceuticalDoseForm.coding.code ^definition = """The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.

SME comment -- this is the marketed dosage form
"""
* combinedPharmaceuticalDoseForm.coding.code from SplPharmaceuticalDosageFormTerminology (required)
* route 1..* MS
* route.coding.code 1..1 MS
* route.coding.code ^short = "Product Route of Administration"
* route.coding.code ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI E C38114]"
* route.coding.code from SplDrugRouteofAdministrationTerminology (required)
* insert ProprietaryAndNonProprietaryNames

Profile: DrugProductwithImpurities
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product-with-impurities
Title: "Drug Product Impurities"
Description: "List of drug product impurities. Profile of Drug Product profile."

* meta.profile 1..1 MS
* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* impurity 0..* MS	
* impurity ^short = "Product Impurity"	
* impurity only CodeableReference(ImpuritySubstance)	
* insert ProprietaryAndNonProprietaryNames

Profile: DrugProductContainerClosure
Parent: MedicinalProductDefinition
Id: pqcmc-drugproduct-container-closure
Title: "Drug Product Container Closure"
Description: "Description and coding of the container closure system. Profile of Drug Product profile."

* meta.profile 1..1 MS
* .extension contains pq-container-closure-extension named containerClosure 1..* MS
* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* insert ProprietaryAndNonProprietaryNames

Profile: DrugProductDescription
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product-description
Title: "Drug Product Description"
Description: "Includes the properties of the drug product and components. Profile of Drug Product profile."

* meta.profile 1..1 MS
* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* description 0..1 MS
* description ^short = "Drug Product Description"
* description ^definition = """A textual narrative describing the drug product or products. [Source: SME Defined]
Examples: dosage form, container closure system, purpose."""
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code ^short = "Product Dosage Form"
* combinedPharmaceuticalDoseForm.coding.code ^definition = """The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.

SME comment -- this is the marketed dosage form"""
* combinedPharmaceuticalDoseForm.coding.code from SplPharmaceuticalDosageFormTerminology (required)
* route 0..1 MS
* route ^short = "Route of Administration"
* route ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI E C38114]"
* route.coding.code 1..1 MS
* route.coding.code from SplDrugRouteofAdministrationTerminology (required)
* insert ProprietaryAndNonProprietaryNames
* crossReference MS
* crossReference.product 
* crossReference.product ^short = "Co-Packaged Product"
* crossReference.product only CodeableReference(DrugProductDescription)

Profile: BatchFormulaMedicinalProduct
Parent: MedicinalProductDefinition
Id: pqcmc-batch-formula-product
Title: "Batch Formula Drug Product Identification"
Description: "The Drug Product produced by the batch formula."

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* comprisedOf 1..* MS
* comprisedOf only Reference(BatchFormula)
* insert ProprietaryAndNonProprietaryNames

RuleSet: ProprietaryAndNonProprietaryNames
* name 1..2 MS
* name.productName 1..1 MS
* name.type 1..1 MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Require non-proprietary name. Parts required if present in the non-proprietary name"
* name contains Proprietary 0..1 and NonProprietary 1..1
* name[Proprietary].type = $NameType#PROP "Proprietary"
* name[Proprietary].part 0..* MS
* name[Proprietary].part.part 1..1 MS
* name[Proprietary].part.type 1..1 MS
* name[Proprietary].part ^slicing.discriminator.type = #value
* name[Proprietary].part ^slicing.discriminator.path = "type"
* name[Proprietary].part ^slicing.rules = #open
* name[Proprietary].part ^slicing.description = "Optional name parts"
* name[Proprietary].part.type from PqcmcNamePartTerminology (required)
* name[NonProprietary].type = $NameType#NON "Non-Proprietary"
* name[NonProprietary].part 1..* MS
* name[NonProprietary].part ^definition = """Name Parts are a means of specifying a range of acceptable forms of the name of a product.
Note: The minimum is the scientific name.
"""
* name[NonProprietary].part.part 1..1 MS
* name[NonProprietary].part.type 1..1 MS
* name[NonProprietary].part ^slicing.discriminator.type = #value
* name[NonProprietary].part ^slicing.discriminator.path = "type"
* name[NonProprietary].part ^slicing.rules = #open
* name[NonProprietary].part ^slicing.description = "The scientific name part is required and all name parts if present"
//* name[NonProprietary].part.part contains Scientific 1..1 Invented 0..1 Formulation 0..1 Strength 0..1 Container 0..1 Form 0..1 Device 0..1
* name[NonProprietary].part contains 
  Scientific 1..* and
  Invented 0..* and 
  Formulation 0..* and 
  Strength 1..* and 
  Container 0..* and
  Form 0..* and 
  Device 0..*
* name[NonProprietary].part.type from PqcmcNamePartTerminology (required)
* name[NonProprietary].part[Scientific].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#SCI
* name[NonProprietary].part[Invented].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#INV
* name[NonProprietary].part[Formulation].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#FORMUL
* name[NonProprietary].part[Strength].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#STR
* name[NonProprietary].part[Container].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#CON
* name[NonProprietary].part[Form].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#FRM
* name[NonProprietary].part[Device].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#DEV
