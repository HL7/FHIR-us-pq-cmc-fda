Extension: PackagedProductSubstanceReference
Id: packaged-product-substance-reference
Title: "Packaged Product Substance Reference"
Description: "Modifier extension to reference a SubstanceDefinition from PackagedProductDefinition, not a MedicinalProductDefinition"
Context: "PackagedProductDefinition"
* . ?!
* . ^isModifierReason = "the PQCMC use case requires a packaged product definition that can reference a substance, not a product. when this extension is present, this is to be treated as the 'packageFor' element"
* value[x] 1..1 MS
* value[x] only Reference
* insert PQReference(value[x])
* value[x] only Reference(SubstanceDefinition)

Profile: SubstanceContainerClosure
Parent: PackagedProductDefinition
Id: pqcmc-drug-substance-container-closure
Title: "Drug Substance Container Closure"
Description: "Description and coding of the container closure system."
* modifierExtension contains packaged-product-substance-reference named SubstanceReference 1..1 MS
* modifierExtension[SubstanceReference]
  * ^short = "Reference to Substance"
  * ^definition = """
    In lieu of packageFor, This profile uses an extension to reference a substance instead of a product
  """
* attachedDocument 0..* MS
* insert PQReference(attachedDocument)
* attachedDocument only Reference(GraphicReference)
  * ^short = "Container Closure System Depiction"
  * ^definition = """
    Diagram of Container Closure System or any of its parts noted in the Container Closure System Description
  """
* packaging 1..1 MS
  * type 1..1 MS
    * coding MS
      * ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
      * ^slicing.description = ""
    * coding contains 
      ContainerType 1..1 MS and
      ClosureType 1..1 MS
    * coding[ContainerType] from PqcmcContainerTypeTerminology (required)
      * ^short = "Container Type"
      * ^definition = """
        The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers 
        [Source: Adapted from NCI Thesaurus C4164]
      """
    * coding[ClosureType] from PqcmcClosureTypeTerminology (required)
      * ^short = "Closure Type"
      * ^definition = """
        The kind of closures used for the container in which the drug substances and finished dosage forms are stored.
        [Source: SME Defined]
      """