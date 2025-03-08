// take out until substance stability
//Extension: ContainerClosureExtension
//Id: pq-container-closure-extension
//Title: "Container Closure"
//Description: "The packaging information including a brief description of the components, the assembled packaging system and any precautions needed to ensure the protection and preservation of the drug substance or drug product during their use in the clinical trials."
//* . ^short = "Container Closure System Information"
//* ^context[+].type = #element
//* ^context[=].expression = "MedicinalProductDefinition"
//* ^context[+].type = #element
//* ^context[=].expression = "SubstanceDefinition"
//* extension contains
//    containerType 1..1 MS and
//   closureType 1..1 MS and  
//   description 1..1 MS and
//   depiction 0..//* MS 
//* extension[containerType].value[x] 1..1
//* extension[containerType].value[x] only CodeableConcept
//* extension[containerType].value[x] from PqcmcContainerTypeTerminology (required)
//* extension[containerType].value[x] ^short = "Container Type"
//* extension[containerType].value[x] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C4164]"
//* extension[closureType].value[x] 1..1
//* extension[closureType].value[x] only CodeableConcept
//* extension[closureType].value[x] from PqcmcClosureTypeTerminology (required)
//* extension[closureType].value[x] ^short = "Closure Type"
//* extension[closureType].value[x] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
//* extension[description].value[x] 1..1
//* extension[description].value[x] only markdown
//* extension[description].value[x] ^short = "Container Closure System Description"
//* extension[description].value[x] ^definition = """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
//Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
//Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
//"""
//* extension[depiction].value[x] 1..1
//* extension[depiction].value[x] only Reference(GraphicReference)


Profile: ContainerClosure
Parent: PackagedProductDefinition
Description: "Container Closure for drug product referred to in Drug Product Description."
* packageFor 1..1 MS
* insert PQReference(packageFor)
* packageFor only Reference(DrugProductDescription)
* description 1..1 MS
* description ^short = "Container Closure System Description"
* description ^definition = """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
"""
* attachedDocument 0..* MS
* attachedDocument ^short = "Container Closure System Depiction"
* attachedDocument ^definition = "Diagram of cContainer Closure System or any of its parts noted in the Container Closure System Description"
* insert PQReference(attachedDocument)
* attachedDocument only Reference(GraphicReference)
* packaging 1..1 MS
  // packaging only allows for one 'type' backbone element, so slicing on
  // the coding in a codeableConcept is okay here. The other option would
  // be to make closure type a property which is 0..*
  * type 1..1 MS
    * coding 1..2 MS
    * coding ^slicing.discriminator.type = #value
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #closed
    * coding contains 
      ContainerType 1..1 MS and
      ClosureType 1..1 MS
    * coding[ContainerType] from PqcmcContainerTypeTerminology (required)
      * ^short =  "Container Type"
      * ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C4164]"
    * coding[ClosureType] from PqcmcClosureTypeTerminology (required)
      * ^short = "Closure Type"
      * ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
* packaging.quantity 0..1 MS
* packaging.packaging 0..* MS

Extension: AmountRatio
Id: pq-amount-ratio
Title: "Amount Ratio"
Description: "The fields needed to represent an amount as a ratio."
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component"
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"
* . ?!
* . ^isModifierReason = "the PQCMC use Case requires ingredient and part amounts be accepted as either quantities or ratios. When present, an amount representing anything but the percentage cannot be present"
* value[x] 1..1 MS
* value[x] only Ratio
* valueRatio
  * numerator 1..1 MS
    * ^short = "Amount Numeric Numerator"
      * value 1..1 MS
  * denominator 1..1 MS
  * denominator from PqcmcNonPercentageUnits (required)
    * ^short = "Amount Numeric Denominator"
      * value 1..1 MS
      * unit 1..1 MS
      * code 1..1 MS 

Profile: FinishedProduct
Parent: ManufacturedItemDefinition
Id: pqcmc-product-part
Title: "Manufactured Drug Product"
Description: "The manufactured drug product defined by all its parts or layers. If the drug product composition is homogeneous it will have a single part or component."
* obeys cmc-capsule-count-required
* obeys cmc-arbitrary-unit-text-required
* obeys cmc-coating-indication-required
* obeys cmc-tablet-layer-count-required
* obeys cmc-tablet-bead-count-required
* obeys cmc-capsule-classification-required
* obeys cmc-component-id-ref
* identifier 0..1 MS
* status 1..1 MS
* name MS
* name ^short = "Product Proprietary Name | Product Non-proprietary Name"
* name ^definition = """Product Proprietary Name: The exclusive name of a drug product owned by a company under trademark law regardless of registration status with the Patent and Trademark Office (PTO). [Source: SME Defined] Note: Excludes dosage form, route of administration and strength. 
Example: Tylenol

Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]"""
* manufacturedDoseForm from PqcmcManufacturedDoseFormTerminology (required)
* property 1..* MS
* property.type 1..1 MS
* property.type.text 1..1 MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.text"
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
      QualStd 1..* MS and
      Sterile 1..1 MS

* property[OvrRelsProf]
  * ^short = "Product Overall Release Profile"
  * ^definition = """
    The overall release profile is the drug release profile (e.g., IR, DR, or ER-USP nomenclature) that is achieved by the drug delivery system used in the dosage form design as evident from the pharmacokinetic plasma drug concentration versus time curve (this is currently focused on solids).
    For example, a capsule filled with IR and DR beads will exhibit an ER release profile as evident from the pharmacokinetic curve. In this example, the "product overall release profile" is "ER". [Source: SME Defined]
  """
  * type MS
  * type.text = "Product Overall Release Profile"
  * value[x] 1..1 MS
  * value[x] only CodeableConcept
  * value[x] from PqcmcReleaseProfile (required)

* property[OvrRelsMech]
  * ^short = "Product Overall Release Mechanism"
  * ^definition = """
    The dosage form design used to achieve an ER release profile.  Examples of overall release mechanisms include osmotic pump, reservoir, and matrix. [Source: SME Defined]
  """
  * type MS
  * type.text =  "Product Overall Release Mechanism"
  * value[x] 1..1 MS
  * value[x] only CodeableConcept
  * value[x] from PqcmcReleaseMechanism (required)

* property[CoatInd]
  * ^short = "Product Coating Indicator"
  * ^definition = """
    A property that identifies whether the drug product contains any coatings. [Source: SME Defined]
  """
  * type MS
  * type.text = "Coating Indicator"
  * value[x] 1..1 MS
  * value[x] only boolean

* property[LayCnt]
  * ^short = "Product Tablet Layer Count"
  * ^definition = """
    The total number of layers in the tablet. [Source: SME Defined]
    Note: Non-layered tablets will be considered as one layer tablets.
  """
  * type MS
  * type.text = "Tablet Layer Count"
  * value[x] 1..1 MS
  * value[x] only Quantity
  * value[x] = $UCUM#1
    * value 1..1 MS

* property[BeaTypCnt]
  * ^short = "Tablet Bead Type Count"
  * ^definition = """
    The total number of type of beads present in a tablet [Source: SME Defined]
    Example: For the case of a 1- layer tablet containing 2 types of beads, Tablet Bead Type Count = 2.
  """
  * type MS
  * type.text = "Tablet Bead Type Count"
  * value[x] 1..1 MS
  * value[x] only Quantity
  * value[x] = $UCUM#1
    * value 1..1 MS

* property[CapClass]
  * ^short = "Capsule Shell Part Classification Category"
  * ^definition = """
    Categorization of the capsule shell based on factors such as the shell’s barrier to water and oxygen, reactivity, and the material it is made of. [Source: SME Defined]
  """
  * type MS
  * type.text = "Capsule Classification Category"
  * value[x] 1..1 MS
  * value[x] only CodeableConcept
  * value[x] from PqcmcCapsuleClassificationCategory (required)

* property[CapConCnt]
  * ^short = "Product Capsule Constituent Count"
  * ^definition = """
    The number of distinct constituents contained in the capsule shell of the drug product. [Source: SME Defined]
    Example: For the case of a capsule shell filled with one type of bead and a minitablet, Constituent Type Count = 2.
  """
  * type MS
  * type.text = "Capsule Constituent Count"
  * value[x] 1..1 MS
  * value[x] only Quantity
  * value[x] = $UCUM#1
    * value 1..1 MS

* property[Schematic]
  * ^short = "Product Schematic"
  * ^definition = """
    The pictorial representation of the drug product. [Source: SME Defined]
  """
  * type MS
  * type.text = "Product Schematic"
  * value[x] 1..1 MS
  * value[x] only Attachment
  * value[x] only GraphicAttachment or PDFAttachment

* property[WgtTyp]
  * ^short = "Product Weight Type"
  * ^definition = """
    A physical (content) or activity measurement of the weight of the drug product unit. [Source: SME Defined]
    Example: Mass, Activity
  """
  * type MS
  * type.text = "Product Weight Type"
  * value[x] 1..1 MS
  * value[x] only CodeableConcept
  * value[x] from PqcmcStrengthTypeTerminology (required)

* property[TotWgtNum]
  * ^short = "Product Total Weight Numeric Numerator"
  * ^definition = """
    Specifies the total quantity of all ingredients in a single unit of the drug product. [Source: SME Defined]
    Note: a single unit of a solid oral dose form could be a tablet or a capsule
  """
  * type MS
  * type.text = "Product Total Weight Numeric Numerator"
  * value[x] 1..1 MS
  * value[x] only Quantity
  * value[x] from PqcmcUnitsMeasure (extensible)
    * comparator MS
      * ^short = "Product Total Weight Operator"
      * ^definition = """
        A mathematical symbol that denotes equality or inequality between two values. [Source: SME Defined]
        Note: This is typically applicable to biologics.
      """

* property[TotWgtDen]
  * ^short = "Product Total Weight Numeric Denominator"
  * ^definition = """
    Specifies the quantity of the ingredient (s) consistent with a single unit dose or as expressed on the label. [Source: SME Defined]
    Note: For solid oral dose forms, by definition this is 1
  """
  * type MS
  * type.text = "Product Total Weight Numeric Denominator"
  * value[x] 1..1 MS
  * value[x] only SimpleQuantity
  * value[x] from PqcmcUnitsMeasure (extensible)
    * value 1..1 MS

* property[TotWgtTxt]
  * ^short = "Product Total Weight Textual"
  * ^definition = """
    A written description of the weight of the drug product. [Source: SME Defined]
    Note: This is typically applicable to biologics
    Example: International Units for Enzymes
  """
  * type MS
  * type.text = "Total Weight Textual"
  * value[x] 1..1 MS
  * value[x] only markdown

* property[QualStd]
  * ^short = "Product Quality Standard"
  * ^definition = """
    The established benchmark to which the component complies. [Source: SME Defined]
    Examples: USP/NF, EP, Company Standard
  """
  * type MS
  * type.text = "Quality Standard"
  * value[x] 1..1 MS
  * value[x] only CodeableConcept
  * value[x] from PqcmcQualityBenchmarkTerminology (required)

* property[Sterile]
  * ^short = "Sterile Product Indicator"
  * type 1..1 MS
  * type.text = "Sterile Product Indicator"
  * value[x] 1..1 MS
  * value[x] only boolean

// Product parts
* component 1..* MS
// * component obeys cmc-ppidref-required
* component.modifierExtension contains pq-amount-ratio named amountRatio 0..1 MS
* component obeys cmc-amount-ratio-or-quantity
* component.type 1..1 MS
* component.type ^short = "Product Part Type"
* component.type ^definition = """Identifies the kind of element, based on the design the applicant develops to achieve the desired drug product and overall release profile. [Source: SME Defined]
Example: Layer, Bead, Minitablet, Capsule Shell, Coating
"""
* component.type.coding from PqcmcProductPartType
* component.function MS
* component.function only CodeableConceptTextOnly
  * ^short = "Product Part Function Description"
  * ^definition = """
    The main purpose for the part in the dosage form. [Source: SME Defined]
    Example: In a two layer tablet with two APIs: Product Part Function Description for Layer 1 = Deliver API 1 and Product Part Function Description for Layer 2 = Deliver API 2
  """
* component
  * amount 1..2 MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "code"
    * ^slicing.rules = #open
    * ^slicing.ordered = false
  * amount contains 
    weight 0..1 MS and
    percent 1..1 MS
  * amount[weight]
    * value 1..1 MS
      * ^short = "Product Part Total Weight Numeric"
      * ^definition = """
        Specifies the total quantity of all ingredients in a single part of the drug product. [Source: SME Defined]
        Note: a single unit of a solid oral dose form could be a layer of a tablet or a minitablet in a capsule
      """
    * unit 1..1 MS 
      * ^short = "Product Part Total Weight Numeric UOM"
    * code from PqcmcNonPercentageUnits
  * amount[percent]
    * value 1..1 MS
      * ^short = "Product Part Content Percent"
      * ^definition = """
        The percentage of the drug product as a whole, that is represented by this part. [Source: SME Defined]
        Example: total tablet weight = 400 mg, total weight of layer = 250 mg, then Content Percent for the layer = 62.5
      """
    * unit 1..1 MS
      * ^short = "Product Part Content Percent UOM"
      * ^definition = """
        The labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI E C117055]
        Example: mg
      """
    * code from PqcmcPercentageUnits

// ingredient
* component.constituent 1..* MS
* component.constituent obeys cmc-ingredient-functions
* component.constituent
  * modifierExtension contains pq-amount-ratio named amountRatio 0..1 MS
  * extension contains http://hl7.org/fhir/StructureDefinition/originalText named textualStrength 0..1 MS
  * extension[textualStrength].value[x] only string
    * ^short = "Textual Strength"
  * extension[textualStrength]
    * ^comment = "For whatever reason, the comments for the Original Text extension has a link that doesn't resolve! Overwriting it with this text resolves the IG error"
* component.constituent obeys cmc-amount-ratio-or-quantity
* component.constituent
  * amount 1..2 MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "code"
    * ^slicing.rules = #open
    * ^slicing.ordered = false
  * amount contains 
    weight 1..1 MS and
    percent 0..1 MS
  * amount[weight]
    * value 1..1 MS
      * ^short = "Product Part Ingredient Amount Numeric"
      * ^definition = """
        Specifies the quantity of an ingredient in a single part of the drug product. [Source: SME Defined]
        Note: a single part of a solid oral dose form could be a layer of a tablet or a minitablet in a capsule
        Note: Amount can also be referred to as potency in biologics and other products.
      """
    * unit 1..1 MS
      * ^short = "Product Part Ingredient Amount Numeric UOM"
      * ^definition = """
        The labeled unit of measure for the content of an ingredient, expressed quantitatively per product part. [Source: Adapted for NCI EVS C117055]
      """

    * code 1..1 MS
    * code from PqcmcNonPercentageUnits
  * amount[percent]
    * value 1..1 MS
      * ^short = "Product Part Ingredient Content Percent"
    * code from PqcmcPercentageUnits
    * unit 1..1 MS
      * ^short = "Product Part Ingredient Content Percent UOM"
* component.constituent.location 0..* MS
* component.constituent.location ^short = "Product Part Ingredient Physical Location"
* component.constituent.location ^definition = """Identifies where the ingredient physically resides within the product part. [Source: SME Defined]
Examples: Intragranular, Extra granular, Blend
"""
* component.constituent.location.coding 1..1 MS
* component.constituent.location.coding from PqcmcProductPartIngredientPhysicalLocation
* component.constituent.location.text 0..1 MS
* component.constituent.function 1..2 MS
* component.constituent.function ^slicing.discriminator.type = #value // or #value
* component.constituent.function ^slicing.discriminator.path = "$this"
* component.constituent.function ^slicing.rules = #closed
* component.constituent.function ^slicing.description = "Slice on the function coding"
* component.constituent.function contains
    Category 1..1 MS and
    Function 0..1 MS
* component.constituent
  * function[Category] 
  * function[Category] from PqcmcDrugProductComponentFunctionCategoryTerminology (required)
  * ^short = "Product Part Ingredient Component Function Category"
  * ^definition = """
    A classification that identifies the higher level purpose of that material. [Source: SME Defined]
    Example: Active Ingredient, Inactive Ingredient, Adjuvant.
  """
  * function[Function]
  * function[Function] from PqcmcExcipientFunctionTerminology (required)
    * ^short = "Product Part Ingredient Function"
    * ^definition = """
      A sub-classification of part ingredients identifying its purpose/role in the drug product part (e.g., in the layer, bead, minitablet). [Source: SME Defined]
      Examples: Filler, Surfactant
    """
* component.constituent.hasIngredient 1..1 MS
* insert PQCodeableReference(component.constituent.hasIngredient)
* component.constituent.hasIngredient only CodeableReference(DrugProductComponent)
// Product part properties
* component.property 1..* MS
* component.property.type 1..1 MS
* component.property.type.text 1..1 MS
* component.property ^slicing.discriminator.type = #value
* component.property ^slicing.discriminator.path = "type.text"
* component.property ^slicing.rules = #closed
* component.property ^slicing.description = "Slice based on value"
* component.property contains
    PPiD 1..1 MS and
    PPiDref 0..1 MS and
    RelsProf 1..1 MS and
    RelsMech 0..1 MS and
    CoatPurpose 0..* MS and
    Color 0..1 MS and
    AddInfo 0..1 MS 
* component.property[PPiD] insert ProductPartIdentifierProperty
* component.property[PPiDref] insert ProductPartIdentifierReferenceProperty

* component
  * property[RelsProf]
    * ^short = "Product Part Release Profile"
    * ^definition = """
      The behavior in which drug substance migrates from the drug product part to the surrounding environment (e.g., biological fluids, dissolution media, etc.) [Source: SME Defined]
    """
    * type 1..1 MS
      * text 1..1 MS
      * text = "Product Part Release Profile"
    // * type = $NCIT#RelsProf "Product Part Release Profile"
    * value[x] 1..1 MS
    * value[x] only CodeableConcept
    * value[x] from PqcmcReleaseProfile (required)

  * property[RelsMech]
    * ^short = "Product Part Release Mechanism"
    * ^definition = """
      The method employed to realize the specified part release profile. [Source: SME Defined] 
      Example: matrix or reservoir
    """
    * type 1..1 MS
      * text 1..1 MS
      * text = "Product Part Release Mechanism"
    // * type = $NCIT#RelsMech "Product Part Release Mechanism"
    * value[x] 1..1 MS
    * value[x] only CodeableConcept
    * value[x] from PqcmcReleaseMechanism (required)

  * property[CoatPurpose]
    * ^short = "Coating Product Part Purpose"
    * ^definition = """
      The reason the coating or covering was added. [Source: SME Defined]
      Examples: rate-controlling, color, release type, protective, taste masking.
    """
    * type 1..1 MS
      * text 1..1 MS
      * text = "Coating Product Part Purpose"
    // * type = $NCIT#CoatPurpose "Coating Product Part Purpose"
    * value[x] 1..1 MS
    * value[x] only CodeableConcept
    * value[x] from PqcmcCoatingPurpose (required)

  * property[Color]
    * ^short = "Product Part Color Description"
    * ^definition = """
      The hue or the tint of the drug product part. [Source: SME Defined]
      Examples: yellow, pink, blue, pale yellow.
    """
    * type 1..1  MS
      * text 1..1 MS
      * text = "Product Part Color Description"
    // * type = $NCIT#Color "Product Part Color Description"
    * value[x] 1..1 MS
    * value[x] only CodeableConceptTextOnly

* component.property[AddInfo] insert AdditionalInformationProperty(Product Part Additional Information)


RuleSet: AdditionalInformationProperty(short)
* ^short = "{short}"
* ^definition = """
  A placeholder for providing any comments that are relevant to the drug product component. [Source: SME Defined] Examples: removed during process, adjusted for loss on drying.
  Implementation note: This is represented in  markdown.  For multiple comments utilize markdwon formating for separation of notes.
"""
* type 1..1 MS
  * text 1..1 MS
  * text = "{short}"
// * type = $NCIT#AddInfo "Product Part Additional Information"
* value[x] 1..1 MS
* value[x] only markdown

RuleSet: ProductPartIdentifierProperty
* ^short = "Product Part Identifier"
* ^definition = """
  A submitter designated identifier that uniquely identifies the part within the drug product. [Source: SME Defined]
  Examples: 1, A1, Red bead, Blue minitablet
"""
* type 1..1 MS
  * text 1..1 MS
  * text = "Product Part Identifier"
// * type = $NCIT#PPiD "Product Part Identifier"
* value[x] 1..1 MS
* value[x] only CodeableConceptTextOnly
// * valueCodeableConcept.coding from CmcRelationshipTypesVS	
// * valueCodeableConcept.coding  ^short = "Product Part Role"
// * valueCodeableConcept.coding ^definition = """If the Product does not have parts the Product Part Role is 'Primary'.
// If the Product does have parts and the Product Part does not have a Product Part Identifier Reference then the component is a 'Parent'.  
// If the Product does have parts and there is a Product Part Identifier Reference the component  is a 'Child'.
// """
RuleSet: ProductPartIdentifierReferenceProperty
* ^short = "Product Part Identifier Reference"
* ^definition = """
  Identifies the parent or outer-level product part. [Source: SME Defined]
  Example: A bead (Product Part Identifier = “B1”) has a seal coating (Product Part Identifier = “SCoat”) and is contained in a Hard HPMC capsule shell (Product Part Identifier “Cap Shell”). For the seal coating, Product Part Identifier Reference = “B1”, because the seal coat is applied to the bead.
"""
* type 1..1 MS
  * text 1..1 MS
  * text = "Product Part Identifier Reference"
// * type = $NCIT#PPiDref "Product Part Identifier Reference"
* value[x] 1..1 MS
* value[x] only CodeableConceptTextOnly

Profile: DrugProductHandle
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product-handle 
Title: "Drug Product Handle"
Description: "Includes the essential identifying information of the drug product required to link to other profiles about the product in the eCTD structure. Profile on MedicinalProductDefinition."

* identifier 0..1 MS
* identifier ^short = "Optional user designated identifier"
* description 0..0 MS
* insert DosageForm
* insert RouteOfAdministration
* insert ProprietaryAndNonProprietaryNames
* name.usage.jurisdiction 0..0
* crossReference 0..0 MS

Profile: DrugProductDescription
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product-description
Title: "Drug Product Description"
Description: "Includes the properties of the drug product and components. Profile of Drug Product profile."

* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* description 1..1 MS
* description ^short = "Drug Product Description"
* description ^definition = """A textual narrative describing the drug product or products. [Source: SME Defined]
Examples: dosage form, container closure system, purpose."""
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm from SplPharmaceuticalDosageFormTerminology (required)
  * ^short = "Product Dosage Form"
  * ^definition = """
    The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
    Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
    Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.

    SME comment -- this is the marketed dosage form
  """
* insert RouteOfAdministration
* insert ProprietaryAndNonProprietaryNames
* name.usage.jurisdiction 0..0
* crossReference 0..* MS
* crossReference.product MS
* crossReference.product ^short = "Co-Packaged Product"
* insert PQCodeableReference(crossReference.product)
* crossReference.product only CodeableReference(DrugProductHandle)


RuleSet: DosageForm
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm ^short = "Product Dosage Form"
* combinedPharmaceuticalDoseForm ^definition = """The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.

SME comment -- this is the marketed dosage form
"""
* combinedPharmaceuticalDoseForm from SplPharmaceuticalDosageFormTerminology (required)

RuleSet: RouteOfAdministration
* route 1..* MS
  * ^short = "Route of Administration"
  * ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI E C38114]"
* route from SplDrugRouteofAdministrationTerminology (required)

RuleSet: ProprietaryAndNonProprietaryNames
* name 1..2 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #closed
  * ^slicing.description = "Require nonproprietary name. Parts required if present in the nonproprietary name"
  * productName 1..1 MS
  * type 1..1 MS
  * type from cmc-product-name-types-vs (required)
* name contains Proprietary 0..1 and NonProprietary 1..1
* name[Proprietary]
  * type = $NCIT#C71898 "Proprietary Name"
  * part 0..* MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "type"
    * ^slicing.rules = #closed
    * ^slicing.description = "Optional name parts"
    * part 1..1 MS
    * type 1..1 MS
    * type from PqcmcNamePartTerminology (required)
* name[NonProprietary]
  * obeys cmc-strength-name-must-reference-scientific
  * type = $NCIT#C96971 "Nonproprietary Name"
  * part 1..* MS
    * ^definition = """Name Parts are a means of specifying a range of acceptable forms of the name of a product.
Note: The minimum is the scientific name.
"""
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "type"
    * ^slicing.rules = #closed
    * ^slicing.description = "The scientific name part is required and all name parts if present"
    * part 1..1 MS
    * type 1..1 MS
    * type from PqcmcNamePartTerminology (required)
  * part contains 
  Scientific 1..* and
  Invented 0..* and 
  Formulation 0..* and 
  Strength 1..* and 
  Container 0..* and
  Form 0..* and 
  Device 0..*
  * part[Scientific].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#SCI
  * part[Invented].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#INV
  * part[Formulation].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#FORMUL
  * part[Strength].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#STR
  * part[Strength].type.text  1..1 MS
  * part[Container].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#CON
  * part[Form].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#FRM
  * part[Device].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#DEV

// Stage 2

Extension: OverageExtension
Id: pq-overage-extension
Title: "Overage Extension"
Description: "Extension for measurements related to excess for ingredients in the batch formula."
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"
* extension contains
  proportionDecimal 1..1 MS and
  justification 1..1 MS 
* extension[proportionDecimal].value[x] only decimal
* extension[proportionDecimal].value[x] ^short = "Overage Percent"
* extension[proportionDecimal].value[x] ^definition = """Overage is the proportion of a drug substance in excess of the label claim to compensate for the loss, such as manufacturing or other.
Note: This is not for stability loss, and generally not permitted.
Example: 3% overage of drug that has a label claim of 10mg of active (API) - the formulation would have 10.3 mg. A batch formula for 100 kg would contain 103 kg of API.
The value is entered as a decimal value less then one.
"""
* extension[proportionDecimal] obeys overage-percent-limit
* extension[justification].value[x] only markdown
* extension[justification].value[x] ^short = "Overage Justification"
* extension[justification].value[x] ^definition = "The rationale for use of excess drug substance during manufacturing of the drug product [Source: SME Defined]"

Extension: ProductBatchStrengthTextualExtension
Id: pq-product-batch-strength-textual-extension
Title: "Product Batch Strength Textual Extension"
Description: "Extension for strength as a string for ingredients in the batch formula."
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"

* value[x] only string
* value[x] 1..1 MS
* value[x] ^short = "Strength Textual"
* value[x] ^definition = """A written description of the strength of the ingredient.[Source: SME Defined]
Note: This is typically applicable to biologics
Example: International Units for Enzymes
"""

Profile: BatchFormula
Parent: ManufacturedItemDefinition
Id: pqcmc-product-batch-formula
Title: "Drug Product Batch Formula"
Description: "Listing of all components of the dosage form to be used in the manufacture, their amounts on a per batch basis, including overages, and reference to their quality standards."

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* status 1..1 MS
* name 1..1 MS
* name ^short = "Product Non-proprietary Name"
* name ^definition = """A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]
"""
* manufacturedDoseForm from PqcmcManufacturedDoseFormTerminology
* manufacturer MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization) 
* property 1..* MS
  * type 1..1 MS
    * text 1..1 MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.text"
* property ^slicing.rules = #closed
* property ^slicing.description = "Slice based on value"
* property contains
      BatchSize 1..1 MS and
      BatchUtil 1..* MS and
      AddInfo 0..1 MS

* property[BatchSize]
  * ^short = "Batch Quantity"
  * ^definition = """
    The amount of material in a specific batch size [Source: SME Defined]
    Example: 1000 kg
  """
  * type.text = "Batch Quantity"
  * value[x] 1..1 MS
  * value[x] only Quantity
  * value[x] from PqcmcUnitsMeasure (required)
    * value 1..1 MS
    * code
      * ^short = "Quantity UOM"
      * ^definition = """
        A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
      """
* property[BatchUtil]
  * ^short = "Batch Utilization"
  * ^definition = """
    A categorization of the batch that identifies its usage. [Source: SME Defined]
    Examples: commercial, development.
  """
  * type.text = "Batch Utilization"
  * value[x] 1..1 MS
  * value[x] only CodeableConcept
  * value[x] from PqcmcBatchUtilizationTerminology (required)

* property[AddInfo] insert AdditionalInformationProperty(Batch Formula Additional Information)

// Product parts
* component 1..* MS
  * amount 2..2
  * amount ^slicing.discriminator.type = #value
  * amount ^slicing.discriminator.path = "code"
  * amount ^slicing.rules = #closed
  * amount ^slicing.description = "Slice based on value of unit"
  * amount contains
    perBatch 1..1 MS and
    percent 1..1 MS
  * amount[perBatch]
    * ^short = "Component Quantity Per Batch"
    * ^definition = """Specifies the amount of the component per batch size of the drug product. [Source: SME Defined]"""
    * value 1..1 MS
    * unit 1..1 MS
    * code 1..1 MS
    * code from PqcmcNonPercentageUnits (required)
  * amount[percent]
    * value 1..1 MS
    * unit 1..1 MS
    * code 1..1 MS
    * code from PqcmcPercentageUnits (required)
* component.type 1..1 MS
* component.type ^short = "Product Part Type"
* component.type ^definition = """Identifies the kind of element, based on the design the applicant develops to achieve the desired drug product and overall release profile. [Source: SME Defined]
Example: Layer, Bead, Minitablet, Capsule Shell, Coating
"""
* component.type from PqcmcProductPartType
// ingredient
* component.constituent 1..* MS
* component.constituent.extension contains pq-additional-info-extension named additional-info 0..1 MS
* component.constituent.extension[additional-info] ^short = "Drug Product Constituent Additional Information"
* component.constituent.extension[additional-info] ^definition = """A placeholder for providing any comments relevant to the constituent [Source: SME Defined]
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.* property[
"""
* component.constituent.extension contains pq-overage-extension named ingredientOverage 0..1 MS
* component.constituent.extension contains pq-product-batch-strength-textual-extension named StrengthTextual 0..1 MS
* component.constituent

  * amount 2..2 MS
  * amount ^slicing.discriminator.type = #value
  * amount ^slicing.discriminator.path = "code"
  * amount ^slicing.rules = #closed
  * amount ^slicing.description = "Slice based on value of unit"
  * amount contains
      perBatch 1..1 MS and
      percent 1..1 MS
  * amount[perBatch]
    * ^short = "Component Quantity Per Batch"
    * ^definition = """
      Specifies the amount of the component per batch size of the drug product. [Source: SME Defined]
    """
    * value 1..1 MS
    * unit 1..1 MS
    * code 1..1 MS
    * code from PqcmcNonPercentageUnits (required)
  * amount[percent]
    * ^short = "Quantity Percent"
    * ^definition = """
      Quantity expressed as Volume To Volume: The percentage of the component in the batch [Source: SME Defined]
      Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
    """
    * value 1..1 MS
    * unit 1..1 MS
    * code 1..1 MS
    * code from PqcmcPercentageUnits (required)


* component.constituent.location 0..* MS
* component.constituent.location ^short = "Product Part Ingredient Physical Location"
* component.constituent.location ^definition = """Identifies where the ingredient physically resides within the product part. [Source: SME Defined]
Examples: Intragranular, Extra granular, Blend
"""
* component.constituent.location from PqcmcProductPartIngredientPhysicalLocation
* component.constituent.hasIngredient 1..1 MS
* insert PQCodeableReference(component.constituent.hasIngredient)
* component.constituent.hasIngredient only CodeableReference(DrugProductIngredient)
// Product part
* component.property 1..* MS
* component.property.type 1..1 MS
* component.property.type.text 1..1 MS
* component.property ^slicing.discriminator.type = #value
* component.property ^slicing.discriminator.path = "type.text"
* component.property ^slicing.rules = #closed
* component.property ^slicing.description = "Slice based on value"
* component.property contains
    PPiD 1..1 MS and
    PPiDref 0..1 MS and
    AddInfo 0..1 MS 
* component.property[PPiD] insert ProductPartIdentifierProperty
* component.property[PPiDref] insert ProductPartIdentifierReferenceProperty
* component.property[AddInfo] insert AdditionalInformationProperty(Product Part Additional Information)

* component.component 0..* MS

Profile: BatchFormulaMedicinalProduct
Parent: MedicinalProductDefinition
Id: pqcmc-batch-formula-product
Title: "Batch Formula Drug Product Identification"
Description: "The Drug Product produced by the batch formula."

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* comprisedOf 1..* MS
* insert PQReference(comprisedOf)
* comprisedOf only Reference(BatchFormula)
* insert ProprietaryAndNonProprietaryNames
* insert RouteOfAdministration
* combinedPharmaceuticalDoseForm 1..1 MS
  * ^short = "Product Dosage Form"
  * ^definition = """The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.

SME comment -- this is the marketed dosage form"""
* combinedPharmaceuticalDoseForm from SplPharmaceuticalDosageFormTerminology (required)

Profile: DrugProductwithImpurities
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product-with-impurities
Title: "Drug Product Impurities"
Description: "List of drug product impurities. Profile of Drug Product profile."

* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* insert DosageForm
* impurity 0..* MS	
* impurity ^short = "Product Impurity"
* insert PQCodeableReference(impurity)
* impurity only CodeableReference(ImpuritySubstance)	
* insert ProprietaryAndNonProprietaryNames
* insert RouteOfAdministration
