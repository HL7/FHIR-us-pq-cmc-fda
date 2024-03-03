Profile: DrugSubstance
Parent: SubstanceDefinition
Id: pqcmc-drug-substance
Title: "Drug Substance"
Description: "Drug Substance (Active Ingredient) nomenclature and characterization."
* meta.profile 0..1 MS
* . obeys cmc-structure-required
* . obeys cmc-when-unii-required
* . obeys cmc-substance-structure-graphic-required
* . obeys cmc-name-isbt
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(SupplierOrganization)
* characterization 0..* MS
* characterization.technique.text 1..1 MS
* characterization.form.text 0..1 MS
* characterization.form.text ^short = "Form"
* characterization.form.text ^definition = ""
* characterization.description 0..1 MS
* characterization.description ^short = "Analytical Instrument Data File Narrative Text"
* characterization.description ^definition = ""
* characterization.file 0..1 MS
* characterization.file ^short = "Analysis Graphic"
* characterization.file ^definition = """The pictorial representation of the data. [Source: SME Defined] Examples: spectrum, chromatogram.
Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the instrumental output for the molecule -- CH3OH
"""
* characterization.file.data 1..1 MS
* characterization.file.title 1..1 MS
* molecularWeight 0..1 MS
* molecularWeight ^short = "Molecular Weight"
* molecularWeight ^definition = "The average mass of a molecule of a compound compared to ¹/₁₂ the mass of carbon 12 and calculated as the sum of the atomic weights of the constituent atoms. [Source: Merriam Webster]"
* molecularWeight.amount 1..1 MS
* molecularWeight.amount.unit ^short = "Molecular Weight UOM"
* molecularWeight.amount.unit ^definition = """The labeled unit of measure for the molecular weight. [Source: Adapted for NCI EVS C117055]
 """
* molecularWeight.amount.code 1..1 MS
* molecularWeight.amount.code from PqcmcUnitsMeasureTerminology (required)

* structure 1..1 MS
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = """Molecular Formula: An expression which states the number and type of atoms present in a molecule of a substance or sequence for biotechnology products. [Source: SME Defined]
Biopolymer Sequence: TBD
"""
* structure.technique MS
* structure.technique ^short = "Substance Characterization Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-format-required
* structure.representation.format 0..1 MS
* structure.representation.format ^short = "Structural Representation Type"
* structure.representation.format ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.format.coding from PqcmcChemicalStructureDataFileTypeTerminology (required)
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Structural Representation"
* structure.representation.representation ^definition = """A machine readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM, etc.
Note: If the UNII for the substa is submitted (i.e., the substance exists in GSRS), then this does not have to be included in the submission.
NOTE: SDF files are now accepted thru eCTD."""
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Substance Structure Graphic"
* structure.representation.document ^definition = """A pictorial representation of the structure of the drug substance. [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the molecule CH3OH, or the sequence SHLVEALALVAGERG.
"""
* structure.representation.document only Reference(Base64DocumentReference)
// $UNII  $UNIPROT  //element(*,SubstanceDefinition)/code/code/coding/system

* insert UniiAndUniProtCodes
//element(*,SubstanceDefinition)/code/code/text/@value
//BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
//BR: isbt Applicable to blood products.
* insert SubstanceNames

* relationship 0..* MS
//* relationship obeys cmc-substance-relationship  not needed  since this resource is for illustraion.
* relationship.substanceDefinitionReference only Reference(ImpuritySubstance or PolymorphicForm or ComponentSubstance)
* relationship.type.text
* relationship.type.text ^short = "Values: 'Polymorph', 'Raw Material', and 'Impurity'"
//* Is a rule set required so that if reference is PolymorphicForm text is "Polymorph",e if ComponentSubstance then text is "Raw Material" DrugSubstanceImpurity then text is "Impurity"

Profile: ImpuritySubstance
Parent: SubstanceDefinition
Id: pqcmc-drug-product-substance-impurity
Title: "Drug Substance Impurity"
Description: "Any component of the drug substance that is not the chemical entity for product composition."
* meta.profile 0..1 MS
* . obeys cmc-structure-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification MS
* classification ^short = "Impurity Classification"
* classification ^definition = """A categorization of impurities based on its origin. [Source: SME Defined]
Examples: Degradation Product, Inorganic, Process Related/Process, Product Related, Leachables.
"""
* classification.coding from PqcmcImpurityClassificationTerminology (required)
* characterization MS
* characterization.technique.text 1..1 MS
* characterization.form.text 0..1 MS
* characterization.form.text ^short = "Form"
* characterization.form.text ^definition = ""
* characterization.description 0..1 MS
* characterization.description ^short = "Analytical Instrument Data File Narrative Text"
* characterization.description ^definition = ""
* characterization.file 0..1 MS
* characterization.file ^short = "Analysis Graphic"
* characterization.file ^definition = """The pictorial representation of the data. [Source: SME Defined] Examples: spectrum, chromatogram.
Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the instrumental output for the molecule -- CH3OHA pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]
"""
* characterization.file.data 1..1 MS
* characterization.file.title 1..1 MS
* structure 0..1 MS
* structure.technique MS
* structure.technique ^short = "Impurity Substance Characterization Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique.text 1..1 MS
* structure.representation MS
* structure.representation obeys cmc-format-required
* structure.representation.format 0..1 MS
* structure.representation.format ^short = "Drug Substance Impurity Method Type| Drug Product Impurity Method Type"
* structure.representation.format ^definition = "The technique used to elucidate the structure or characterization of the impurity. [Source: SME Defined]"
* structure.representation.format.coding from PqcmcChemicalStructureDataFileTypeTerminology (required)
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Impurity Analysis Graphic | Impurity Analytical Instrument Data File | Impurity Chemical Structure Data File"
* structure.representation.representation ^definition = """Impurity Chemical Structure Data File: A machine readable representation of the structure of the chemical. [Source: SME Defined]
Examples: Structured Data File (SDF), MDL MOLFILE, IUPAC Chemical Identifier (InChI) file.

Impurity Analytical Instrument Data File: The transport format for data exchange. [Source: SME Defined]
Example: JCAMP, ADX, ADF.

Impurity Chemical Structure Data File: A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
"""
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Impurity Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the impurity substance. [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for use in eCTD' Example: This is the representation of the molecule CH3OH, or the sequence SHLVEALALVAGERG."
* structure.representation.document only Reference(Base64DocumentReference)

//element(*,SubstanceDefinition)/code/code/coding
* insert UniiAndUniProtCodes
* insert ShortSetSubstanceNames

Profile: DrugProductIngredient
Parent: Ingredient
Id: pqcmc-dp-ingredient
Title: "Drug Product Batch Formula Ingredient"
Description: "The amount details about the drug product ingredients in the batch. Use for Batch Formula."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-dp-ingredient"
* meta.profile 0..1 MS
* identifier 0..1 MS
* substance.code 1..1 MS
* substance.code ^short = "Ingredient Substance"
* substance.code only CodeableReference(pqcmc-routine-drug-substance)
* substance.strength 1..* MS

* substance.strength 1..2 MS
* substance.strength ^slicing.discriminator.type = #value
* substance.strength ^slicing.discriminator.path = "concentrationQuantity.code"
* substance.strength ^slicing.rules = #closed
* substance.strength ^slicing.description = "Slice based on value of unit"
* substance.strength contains
      Weight 1..1 MS and
      VolumeToVolume 0..1 MS and
      WeightToVolume 0..1 MS and
      WeightToWeight 0..1 MS
* substance.strength[Weight] obeys cmc-percent-quantity-ingredient      
* substance.strength[Weight].concentrationQuantity.value 1..1 MS
* substance.strength[Weight].concentrationQuantity.value ^short = "Component Quantity Per Batch"
* substance.strength[Weight].concentrationQuantity.value ^definition = """Component Quantity Per Batch: Specifies the amount of the component per batch size of the drug product. [Source: SME Defined]

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[Weight].concentrationQuantity.unit 1..1 MS
* substance.strength[Weight].concentrationQuantity.code 1..1 MS
* substance.strength[Weight].concentrationQuantity.code from PqcmcUnitsMeasureTerminology (required)

* substance.strength[VolumeToVolume].concentrationQuantity.value 1..1 MS
* substance.strength[VolumeToVolume].concentrationQuantity.value ^short = "Quantity Percent"
* substance.strength[VolumeToVolume].concentrationQuantity.value ^definition = """Quantity expressed as Volume To Volume: The percentage of the component in the batch [Source: SME Defined]

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[VolumeToVolume].concentrationQuantity.code = $NCIT#C48571 "%{VolumeToVolume}"

* substance.strength[WeightToVolume].concentrationQuantity.value 1..1 MS
* substance.strength[WeightToVolume].concentrationQuantity.value ^short = "Quantity Percent"
* substance.strength[WeightToVolume].concentrationQuantity.value ^definition = """Quantity expressed as Weight To Volume: TThe percentage of the component in the batch [Source: SME Defined]

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[WeightToVolume].concentrationQuantity.code =  $NCIT#C48527 "%{WeightToVolume}"
* substance.strength[WeightToWeight].concentrationQuantity.value 1..1 MS
* substance.strength[WeightToWeight].concentrationQuantity.value ^short = "Quantity Percent"
* substance.strength[WeightToWeight].concentrationQuantity.value ^definition = """Quantity expressed as Weight To Weight: The percentage of the component in the batch [Source: SME Defined]

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[WeightToWeight].concentrationQuantity.code = $NCIT#C48528 "%{WeightToWeight}"

//* substance.strength.textConcentration ^short = "Strength Textual"
//* substance.strength.textConcentration ^definition = """A written description of the strength of the ingredient.[Source: SME Defined]
//Note: This is typically applicable to biologics
//Example: International Units for Enzymes
//"""

Profile: DrugSubstanceBatch
Parent: Substance
Id: pqcmc-drug-substance-batch
Title: "Drug Substance Manufactured Batch"
Description: "Includes the properties of the drug substance as manufactured."

* meta.profile 0..1 MS
* extension contains drug-substance-manufacturing-batch named api-batch 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "Drug Substance Lot Number"
* identifier.value ^definition = "Lot number of the drug substance used in manufacturing a drug product batch. [Source: SME Defined]"
* code MS
* code.concept.coding ^short = "UNII| CAS Number|Substance Name" // Need rule that it be any of 3 kinds * code.concept.coding
* code.concept.coding ^definition = """Substance Name: A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined] Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT

CAS: Number Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org] Example: CAS [103-90-2]

UNII: The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* expiry 0..1 MS
* expiry ^short = "Retest Date"
* expiry ^definition = "The date after which samples of the drug substance should be examined to ensure compliance with the specification and thus suitable for use in the manufacture of a given drug product [Source: Adapted from Q1A(R2)]"
* expiry only dateTime


Profile: DrugSubstancemanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-substance-manufacturing-batch
Title: "Drug Substance Manufacturing Batch"
Description: "This profile defines the details of a batch of API."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/drug-substance-manufacturing-batch"
* ^context.type = #element
* ^context.expression = "Substance"
* extension[manufacturingDate] 1..1 MS
* extension[manufacturingDate] ^short = "Manufacturing Date"
* extension[manufacturingDate] ^definition = """The date associated with manufacturing a batch. [Source: SME Defined]* note: See Manufacturing Date Description element. """
* extension[manufacturingDate].valueDateTime MS
* extension[manufacturingDateClassification] 1..1 MS
* extension[manufacturingDateClassification] ^short = "Manufacturing Date Description"
* extension[manufacturingDateClassification] ^definition = """A textual description that provides a rationale for the selection of the manufacturing date. [Source: SME Defined]* note: This description should include the specific operation/step in the manufacturing process associated with the assigned manufacturing date. """
* extension[manufacturingDateClassification].valueCodeableConcept MS
* extension[assignedManufacturer] 1..1 MS
* extension[assignedManufacturer] ^short = "Assigned Manufacturer"
* extension[assignedManufacturer]
* extension[assignedManufacturer].valueReference only Reference(MfgTestSiteOrganization)
* extension[expirationDateClassification] 1..1 MS
* extension[expirationDateClassification] ^short = "Retest Date Classification"
* extension[expirationDateClassification] ^definition = """The endorsement of the Retest date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant for a drug substance. [Source: SME Defined]
This classification applies to ALL substances.
* For an original MF/application, Retest Date Classification is 'Proposed'.
* After an MF/application has been approved, Retest Date Classification is 'Adequate'.
* For a Supplement that's changing the Retest Date that is already classified as 'Adequate' for the drug product or drug substance, the changed Retest Date Classification would be 'Proposed'.
* For substances that do not have a Retest Date, the Retest Date Classification will be 'NA'.
"""
* extension[expirationDateClassification].valueCodeableConcept MS
* extension[expirationDateClassification].valueCodeableConcept from PqcmcRetestDateClassificationTerminology (required)

* extension[batchUtilization] 1..1 MS
* extension[batchUtilization] ^short = "Batch Utilization"
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined] * Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS
* extension[batchUtilization].valueCodeableConcept from PqcmcBatchUtilizationTerminology (required)
* extension[batchQuantity] 1..1 MS
* extension[batchQuantity] ^short = "Batch Size"
* extension[batchQuantity] ^definition = "The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]"
* extension[batchQuantity].valueQuantity MS
* extension[additionalInformation] MS
* extension[additionalInformation] ^short = "Additional Information"
* extension[additionalInformation] ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined]
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc.
"""
* extension[container] 1..* MS
* extension[container] ^short = "Container"
* extension[container].extension[lotNumber].valueString 1..1 MS
* extension[container].extension[lotNumber] ^short = "Container Lot Number"
* extension[container].extension[lotNumber] ^definition = """A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot.
 Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container). This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
 """
* extension[container].extension[type] 1..1 MS
* extension[container].extension[type] ^short = "Container Type"
* extension[container].extension[type]
* extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[container].extension[type].valueCodeableConcept 1..1 MS
* extension[container].extension[type].valueCodeableConcept from PqcmcContainerTypeTerminology (required)
* extension[container].extension[quantity] 1..1 MS
* extension[container].extension[quantity] ^short = "Container Fill per Container Size"
* extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit
 Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: tablets, mL.
 Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
 Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: mL, L, cc.
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

Profile: SubstanceContainerClosure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-container-closure
Title: "Drug Substance Container Closure"
Description: "Description and coding of the container closure system. Profile on Drug Substance profile."

* meta.profile 0..1 MS
* extension contains  pq-container-closure-extension named containerClosure 1..1 MS
* . obeys cmc-when-unii-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* insert UniiAndUniProtCodes
* insert ShortSetSubstanceNames

Profile: DrugSubstanceImpurities
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-impurities
Title: "Substance Impurities"
Description: "Drug Substance Impurities"
* meta.profile 0..1 MS
* . obeys cmc-when-unii-required
* . obeys cmc-substance-structure-graphic-required
* . obeys cmc-name-isbt
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* characterization 0..* MS
* characterization.technique.text 1..1 MS
* characterization.form.text 0..1 MS
* characterization.form.text ^short = "Form"
* characterization.form.text ^definition = ""
* characterization.description 0..1 MS
* characterization.description ^short = "Analytical Instrument Data File Type Narrative Text"
* characterization.description ^definition = "The description or justification in support of the interpretation of the data file. [Source: SME Defined]."
* characterization.file 0..1 MS
* characterization.file ^short = "Analysis Graphic"
* characterization.file ^definition = """The pictorial representation of the data. [Source: SME Defined] Examples: spectrum, chromatogram.
Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the instrumental output for the molecule -- CH3OH
"""
* characterization.file.data 1..1 MS
* characterization.file.title 1..1 MS
* structure MS
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = """Molecular Formula: An expression which states the number and type of atoms present in a molecule of a substance or sequence for biotechnology products. [Source: SME Defined]
Biopolymer Sequence: TBD
"""
* structure.technique MS
* structure.technique ^short = "Substance Characterization Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation.format 0..1 MS
* structure.representation.format ^short = "Structural Representation Type"
* structure.representation.format ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.format.coding from PqcmcChemicalStructureDataFileTypeTerminology (required)
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
 """
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Substance Structure Graphic"
* structure.representation.document ^definition = """A pictorial representation of the structure of the drug substance. [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for use in eCTD'
 Example: This is the representation of the molecule CH3OH, or the sequence SHLVEALALVAGERG."""
* structure.representation.document only Reference(Base64DocumentReference)
* insert UniiAndUniProtCodes
* insert SubstanceNames

* relationship 0..* MS
* relationship.substanceDefinitionReference ^short = "The substance definition of an impurity of the Drug Substance"
* relationship.substanceDefinitionReference only Reference( ImpuritySubstance )
* relationship.type.text = "Impurity"
* relationship.type.text ^short = "Impurity"