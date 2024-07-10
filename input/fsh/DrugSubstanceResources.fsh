Extension: StrengthExtension
Id:  strength-extension
Title: "Strength Extension"
Description: "Values required in Ingredient.substance.strength"
* ^context[+].type = #element
* ^context[=].expression = "Ingredient.substance.strength"
* extension contains
    strengthType 1..1 MS and
    contentPercent 1..1 MS and
    strengthOperator 0..1 MS
* extension[strengthType].value[x] only CodeableConcept
* extension[strengthType].value[x] from PqcmcStrengthTypeTerminology (required)
* extension[strengthType] ^short = "Strength Type (for API)"
* extension[strengthType] ^definition = """A physical (content) or activity measurement of the strength of the ingredient. [Source: SME Defined]
Example: Mass, Activity
"""
* extension[contentPercent].value[x] only decimal
* extension[contentPercent] ^short = "Product Ingredient Content Percent"
* extension[contentPercent] ^definition = """The percentage of the component in the drug product. [Source: SME Defined]
Example: Product Total Weight = 1200 mg and Product Ingredient Amount = 325 mg, so Product Ingredient Content Percent = 27.08
"""
* extension[strengthOperator].value[x] only CodeableConcept
* extension[strengthOperator].value[x] from PqcmcStrengthOperatorTerminology (required)
* extension[strengthOperator] ^short = "Strength Operator"
* extension[strengthOperator] ^definition = """A mathematical symbol that denotes equality or inequality between two values
Note: This is typically applicable to biologics """

Profile: PolymorphicForm
Parent: SubstanceDefinition
Id: pqcmc-polymorphic-form
Title: "Polymorphic Form"
Description: "Alternate structure present in the drug substance"

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* structure 0..1 MS
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance or sequence for biotechnology products. [Source: SME Defined]"
* structure.technique 0..1 MS
* structure.technique ^short = "Substance Characterisation Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterisation of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
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
* structure.representation.representation ^short = "Structural Representation"
* structure.representation.representation ^definition = """A machine readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM, etc.

Note: If the UNII for the substa is submitted (i.e., the substance exists in GSRS), then this does not have to be included in the submission.

NOTE: SDF files are now accepted thru eCTD. 
"""
* structure.representation.document 0..1 MS
* structure.representation.document only Reference(Base64DocumentReference)
* code 0..1 MS
* code.code.coding.system = $UNII
* code.code.coding ^short = "UNII"
* code.code.coding ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* insert ShortSetSubstanceNames

Profile: ComponentSubstance
Parent: SubstanceDefinition
Id: pqcmc-component-substance
Title: "Component Substance"
Description: "Any raw material intended for use in the manufacture of a drug substance, or any ingredient intended for use in the manufacture of a drug product including those that may not appear in such drug product."
* meta.profile 1..1 MS
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* . obeys cmc-source-material
* identifier 0..1
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* grade 1..1
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade.coding from PqcmcQualityBenchmarkTerminology (required)
* manufacturer 0..1 MS
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* supplier only Reference(CodedOrganization)
* structure MS
//* structure obeys cmc-representation-or-document
* structure.representation 1..*
* structure.representation.representation 0..1 MS
* structure.representation.format 0..1
* structure.representation.format.coding from PqcmcChemicalStructureDataFileTypeTerminology (required)
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Substance Structure Graphic"
* structure.representation.document ^definition = """A pictorial representation of the structure of the substance. [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the molecule CH3OH, or the sequence SHLVEALALVAGERG.
"""
* structure.representation.document only Reference(Base64DocumentReference)
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames

* sourceMaterial 0..1 MS
* sourceMaterial.type 0..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = "A classification that provides the origin of the raw material. [Source: SME Defined]"
* sourceMaterial.type.coding from PqcmcSourceTypeTerminology (required)
* sourceMaterial.genus 0..1 MS
* sourceMaterial.genus.coding 0..0
* sourceMaterial.genus.text 1..1
* sourceMaterial.genus.text ^short = "Source Organism"
* sourceMaterial.genus.text ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species 0..1 MS
* sourceMaterial.species ^short = "Source Organism"
* sourceMaterial.species ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species.coding 0..0
* sourceMaterial.species.text 1..1
* sourceMaterial.part 0..1 MS
* sourceMaterial.part ^short = "Source Organism Part"
* sourceMaterial.part ^definition = """A fragment of the source organism. [Source: SME Defined]
Examples: secretions, material from a specific organ, tissue or portion of the organism such as liver, pancreas, blood or from bark or seed of a plant.
IDMP 11238 definition & examples: Entity of anatomical origin of source material within an organism.
Cartilage, Root and Stolon, whole plant is considered as a part, Aerial part of the plant, Leaf, Tuberous Root, whole animal """
* sourceMaterial.part.coding 0..0
* sourceMaterial.part.text 1..1
* insert CountryOfOrigin

Profile: DrugProductComponent
Parent: Ingredient
Id: pqcmc-component
Title: "Drug Product Component"
Description: "The amount details about the drug product components to define the product composition in a product unit. Use composition."

* meta.profile 1..1 MS
* .extension contains pq-additional-info-extension named additional-info 0..1 MS
* .extension[additional-info] ^short = "Drug Product Component Additional Information"
* .extension[additional-info] ^definition = """A placeholder for providing any comments that are relevant to the component. [Source: SME Defined]
Examples: removed during process, adjusted for loss on drying, etc.
"""
* status.code
* role from  PqcmcDrugProductComponentFunctionCategoryTerminology (required)
* for ^short = "Reference to MedicinalProductDefinition"
* substance obeys cmc-strength-type-cases2
* substance.code MS
* substance.code ^short = "Ingredient Substance"
* substance.code only CodeableReference(ComponentSubstance)
* substance.strength 1..1 MS
* substance.strength.extension contains strength-extension named strengthFactors 1..1 MS
* substance.strength.presentation[x] 1..1 MS
* substance.strength.presentation[x] only Ratio or Quantity
* substance.strength.presentationRatio 0..1 MS
* substance.strength.presentationRatio.numerator 1..1 MS
* substance.strength.presentationRatio.numerator.value ^short = "Product Ingredient Amount Numeric Numerator"
* substance.strength.presentationRatio.numerator.value ^definition = """Specifies the quantity of an ingredient in a single dose unit (e.g., one tablet, capsule) of the drug product. [Source: SME Defined]
Example: if the tablet contains 325 mg of the ingredient in each unit dose, then Product Ingredient Numeric Numerator = 325
"""
* substance.strength.presentationRatio.numerator.value 1..1 MS
* substance.strength.presentationRatio.numerator.unit 1..1 MS
* substance.strength.presentationRatio.numerator.unit ^short = "Product Ingredient Amount Numeric Numerator UOM"
* substance.strength.presentationRatio.numerator.unit ^definition = """The labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI EVS C117055]
Example: mg"""
* substance.strength.presentationRatio.numerator.code 1..1 MS
* substance.strength.presentationRatio.numerator.code from  PqcmcUnitsMeasureTerminology (required)
* substance.strength.presentationRatio.denominator 1..1 MS
* substance.strength.presentationRatio.denominator.value  ^short = "Product Ingredient Amount Numeric Denominator"
* substance.strength.presentationRatio.denominator.value  ^definition = """Specifies the quantity of the ingredient(s) consistent with this single dose unit (e.g., one tablet, capsule) of drug product. [Source: SME Defined]
Example: if the tablet contains 325 mg of the ingredient in each unit dose, then Product Ingredient Numeric Denominator = 1
"""
* substance.strength.presentationRatio.denominator.value 1..1 MS
* substance.strength.presentationRatio.denominator.unit 1..1 MS
* substance.strength.presentationRatio.denominator.code 1..1 MS
* substance.strength.presentationRatio.denominator.code from  PqcmcUnitsMeasureTerminology (required)

* substance.strength.presentationQuantity 0..1 MS
* substance.strength.presentationQuantity.value 1..1 MS
* substance.strength.presentationQuantity.value ^short = "Product Ingredient Amount Numeric"
* substance.strength.presentationQuantity.value ^definition = """TSpecifies the quantity of an ingredient in a single dose unit (e.g., one tablet, capsule) of the drug product. [Source: SME Defined]
Example: if the tablet contains 325 mg of the ingredient in each unit dose, then Product Ingredient Numeric Numerator = 325
"""
* substance.strength.presentationQuantity.unit 1..1
* substance.strength.presentationQuantity.code 1..1
* substance.strength.presentationQuantity.code from  PqcmcUnitsMeasureTerminology (required)
* substance.strength.textPresentation 1..1 MS
* substance.strength.textPresentation ^short = "Strength Textual"
* substance.strength.textPresentation ^definition = "A written description of the strength of the ingredient. [Source: SME Defined]"


Profile: ExcipientRaw
Parent: SubstanceDefinition
Id: pqcmc-excipient
Title: "Excipient Drug Substance"
Description: "Provides sufficient information to identify an inactive substance and raw materials and its source when stability data is required in the submission."

* meta.profile 1..1 MS
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* . obeys cmc-source-material
* identifier 0..1
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* grade 1..1
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade from PqcmcQualityBenchmarkTerminology (required)
* manufacturer 0..* MS
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* supplier only Reference(CodedOrganization)
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames

* sourceMaterial 1..1 MS
* sourceMaterial.type 1..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined]
Example: cat hair would be an Animal source type """
* sourceMaterial.type.coding from PqcmcSourceTypeTerminology (required)
* sourceMaterial.genus 0..1 MS
* sourceMaterial.genus.coding 0..0
* sourceMaterial.genus.text 1..1
* sourceMaterial.genus.text ^short = "Source Organism"
* sourceMaterial.genus.text ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species 0..1 MS
* sourceMaterial.species ^short = "Source Organism"
* sourceMaterial.species ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species.coding 0..0
* sourceMaterial.species.text 1..1
* sourceMaterial.part 0..1 MS
* sourceMaterial.part ^short = "Source Organism Part"
* sourceMaterial.part ^definition = """A fragment of the source organism. [Source: SME Defined]
Examples: secretions, material from a specific organ, tissue or portion of the organism such as liver, pancreas, blood or from bark or seed of a plant.
IDMP 11238 definition & examples: Entity of anatomical origin of source material within an organism.
Cartilage, Root and Stolon, whole plant is considered as a part, Aerial part of the plant, Leaf, Tuberous Root, whole animal """
* sourceMaterial.part.coding 0..0
* sourceMaterial.part.text 1..1
* insert CountryOfOrigin

Profile: RoutineSubstanceDefinition
Parent: SubstanceDefinition
Id: pqcmc-routine-drug-substance
Title: "Routine Drug Substance"
Description: "Provides sufficient information to identify a drug substance. Profile on Drug Substance profile."
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
"""
* grade 1..1
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade.coding from PqcmcQualityBenchmarkTerminology (required)
* manufacturer 1..1 MS
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* supplier only Reference(CodedOrganization)
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames
* sourceMaterial 0..0 MS

Profile: DrugSubstanceNomenclatureStructure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-nomenclature-structure
Title: "Substance General Information"
Description: "Substance General Information containting Drug Substance (Active Ingredient) nomenclature (2.3.S.1.1) and Substance Structure (2.3.S.1.2) profile."
* meta.profile 1..1 MS
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* manufacturer 1..1 MS
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* supplier only Reference(CodedOrganization)
* molecularWeight 0..1 MS
* molecularWeight ^short = "Molecular Weight"
* molecularWeight ^definition = "The average mass of a molecule of a compound compared to ¹/₁₂ the mass of carbon 12 and calculated as the sum of the atomic weights of the constituent atoms. [Source: Merriam Webster]"
* molecularWeight.amount 1..1 MS
* molecularWeight.amount.unit ^short = "Molecular Weight UOM"
* molecularWeight.amount.unit ^definition = """The labeled unit of measure for the molecular weight. [Source: Adapted for NCI EVS C117055]
 """
* molecularWeight.amount.code 1..1 MS
* molecularWeight.amount.code from PqcmcUnitsMeasureTerminology (required)
* . obeys cmc-structure-required
* . obeys cmc-substance-structure-graphic-required
* structure 1..1 MS
//* structure obeys cmc-representation-or-document
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = """Molecular Formula: An expression which states the number and type of atoms present in a molecule of a substance or sequence for biotechnology products. [Source: SME Defined]
Biopolymer Sequence: TBD
"""
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Characterisation Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterisation of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
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
* insert UniiAndUniProtCodes(1)
* insert SubstanceNames

* relationship 0..* MS
* relationship.substanceDefinitionReference ^short = "The substance definition of a polyphorm of the Drug Substance"
* relationship.substanceDefinitionReference only Reference( PolymorphicForm )
* relationship.type.text = "Polymorph"
* relationship.type.text ^short = "Polymorph"



RuleSet: SubstanceNames
* name 1..* MS
* name ^short = "Subtance Name"
* name ^definition = """Substance Name is identified by its Substance Type. Substance Type: Identifies the source that assigned the product ingredient name. [Source: SME Defined]
Examples: GSRS Preferred Term, Systematic Name, INN, USP/NF
"""
* name obeys cmc-name-preferred
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding" //element(*,SubstanceDefinition)/name/type/coding/code
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  sys 0..1 MS and
  sub 0..1 MS and
  brand 0..1 MS and
  // comn 0..1 MS and
  gsrs 0..1 MS and
  usp 0..1 MS and
  cas 0..1 MS and
  inn 0..1 MS and
  usan 0..1 MS and
  iupac 0..1 MS and
  isbt 0..1 MS

* name[sys].name 1..1 MS
* name[sys].name ^short = "Systematic"
* name[sys].name ^definition = """A name derived directly from the chemical structure. [Source: SME Defined]
"""
* name[sys].type 1..1 MS
* name[sys].type.coding 1..1 MS
* name[sys].type.coding = $NCIT#C203357	"Systematic Name"

* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A non-branded nor registered name that meant for common use."""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = $NCIT#C97054	"Generic Name"

* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """The part of the name or logo associated with a specific product or service identifying and distinguishing it from varieties of the same product or service marketed by competing companies.
"""
* name[brand].type 1..1 MS
* name[brand].type.coding 1..1 MS
* name[brand].type.coding = $NCIT#C71898	"Brand"

// * name[comn].name 1..1 MS
// * name[comn].name ^short = "Common"
// * name[comn].name ^definition = """The generally used, literal identifier of the entity."""
// * name[comn].type 1..1 MS
// * name[comn].type.coding 1..1 MS
// * name[comn].type.coding = $NCIT#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred Term"
* name[gsrs].name ^definition = """Default display name identified within FDA Global Substance Registration System (GSRS)."""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = $NCIT#C203355 "GSRS Preferred Term"

* name[usp].name 1..1 MS
* name[usp].name ^short = "USP-NF Established Name"
* name[usp].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Pharmacopeia (USP) and excipients by the National Formulary (NF). [Source: SME Defined]
"""
* name[usp].type 1..1 MS
* name[usp].type.coding 1..1 MS
* name[usp].type.coding = $NCIT#C203358	"USP-NF Established Name"

* insert CompanyName

* name[cas].name 1..1 MS
* name[cas].name ^short = "CAS Number"
* name[cas].name ^definition = """Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org]
Example: CAS [103-90-2]
"""
* name[cas].type 1..1 MS
* name[cas].type.coding 1..1 MS
* name[cas].type.coding = $NCIT#C54682	"CAS Number"

* name[inn].name 1..1 MS
* name[inn].name ^short = "INN" 
* name[inn].name ^definition = """International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/] Example: Paracetamol
"""
* name[inn].type 1..1 MS
* name[inn].type.coding 1..1 MS
* name[inn].type.coding = $NCIT#C142585	"INN"

* name[usan].name 1..1 MS
* name[usan].name ^short = "USAN"
* name[usan].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined] Example: acetaminophen
"""
* name[usan].type 1..1 MS
* name[usan].type.coding 1..1 MS
* name[usan].type.coding = $NCIT#C96973	"USAN"

* name[iupac].name 1..1 MS
* name[iupac].name ^short = "IUPAC Name" 
* name[iupac].name ^definition = """A name assigned to a chemical substance according to the systematic nomenclature rules defined by the International Union of Pure and Applied Chemistry (IUPAC) [Source: SME Defined] 
Example: N- (4-hydroxyphenyl)acetamide
"""
* name[iupac].type 1..1 MS
* name[iupac].type.coding 1..1 MS
* name[iupac].type.coding = $NCIT#C203356	"IUPAC Name"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT-128 DIN"
* name[isbt].name ^definition = """It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
"""
* name[isbt].type 1..1 MS
* name[isbt].type.coding 1..1 MS
* name[isbt].type.coding = $NCIT#C95517	"ISBT-128 DIN"

* name.preferred 0..1 MS
* name.preferred ^short = "True when the name type is Substance Name"

RuleSet: ShortSetSubstanceNames
* name 1..* MS
* name ^short = "Substance Name"
* name ^definition = """Substance Name is identified by its Substance Type.
Substance Type | Product Part Ingredient Name Type: Identifies the source that assigned the product ingredient name. [Source: SME Defined]
Examples: GSRS Preferred Term, Systematic Name, INN, USP/NF
"""
* name obeys cmc-name-preferred
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding" //element(*,SubstanceDefinition)/name/type/coding/code
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  sub 0..1 MS and
  // comn 0..1 MS and
  gsrs 0..1 MS and
  isbt 0..1 MS
* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic Name"
* name[sub].name ^definition = """A non-branded nor registered name that meant for common use."""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = $NCIT#C97054	"Generic Name"

// * name[comn].name 1..1 MS
// * name[comn].name ^short = "Common"
// * name[comn].name ^definition = """TThe generally used, literal identifier of the entity."""
// * name[comn].type 1..1 MS
// * name[comn].type.coding 1..1 MS
// * name[comn].type.coding = $NCIT#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred Term"
* name[gsrs].name ^definition = """Default display name identified within FDA Global Substance Registration System (GSRS).
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = $NCIT#C203355 "GSRS Preferred Term"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT-128 DIN" 
* name[isbt].name ^definition = """It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
"""
* name[isbt].type 1..1 MS
* name[isbt].type.coding 1..1 MS
* name[isbt].type.coding = $NCIT#C95517	"ISBT-128 DIN"
* name.preferred 0..1 MS
* name.preferred ^short = "True when the name type is Substance Name"

RuleSet: CompanyName
* name contains comp 0..1 MS
* name[comp].name 1..1 MS
* name[comp].name ^short = "Company ID/Code"
* name[comp].name ^definition = """An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type 1..1 MS
* name[comp].type.coding 1..1
* name[comp].type.coding = $NCIT#C203354	"Company ID/Code"

RuleSet: UniiAndUniProtCodes(cardinality)
// lots of things derived from substanceDefinition use code
// for unii and uniprot codes 
* code {cardinality}..* MS
  * ^definition = """
  
Implementation Note: the cardinality represents the business rule for unii, uniprot, or some other code being required"""
  * code 1..1 MS
    * coding 1..1 MS
      * ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
    * coding contains
        unii 0..1 and
        uniProt 0..1
    * coding[unii]
      * system = $UNII
      * ^short = "UNII"
      * ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
    * coding[uniProt]
      * system = $UNIPROT
      * ^short = "UniProt ID"
      * ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""

RuleSet: CountryOfOrigin
* sourceMaterial.countryOfOrigin 0..1 MS 
  * obeys cmc-iso-genc-overlap
  * ^short = "Source Organism Country of Origin"
  * ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"
  * coding 1..1 MS
    * code 1..1 MS
      * obeys cmc-only-ISO-3166-1-alpha-3

//*Stage 2 --------------------------------------------------------------------------------------------------------------*/

Profile: DrugSubstanceCharacterisation
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-characterisation
Title: "Drug Substance"
Description: "Drug Substance (Active Ingredient) nomenclature and characterisation."
* meta.profile 0..1 MS
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* obeys cmc-substance-characterisation-content-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* manufacturer 0..1 MS
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* supplier only Reference(CodedOrganization)
* insert SubstanceCharacterization
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames

* relationship 0..* MS
//* relationship obeys cmc-substance-relationship  not needed  since this resource is for illustraion.
* relationship.substanceDefinitionReference only Reference(ImpuritySubstance)

Profile: ImpuritySubstance
Parent: SubstanceDefinition
Id: pqcmc-drug-product-substance-impurity
Title: "Drug Substance Impurity"
Description: "Any component of the drug substance that is not the chemical entity for procduct composition."
* meta.profile 0..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from PqcmcImpurityClassificationTerminology (required)
* classification ^short = "Impurity Classification"
* classification ^definition = """A categorization of impurities based on its origin. [Source: SME Defined]
Examples: Degradation Product, Inorganic, Process Related/Process, Product Related, Leachables.
"""
* insert SubstanceCharacterization
* structure 0..1 MS
//* structure obeys cmc-representation-or-document
* structure.technique MS
* structure.technique ^short = "Impurity Substance Characterisation Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterisation of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique.text 1..1 MS
* structure.representation MS
* structure.representation.format 0..1 MS
* structure.representation.format ^short = "Drug Substance Impurity Method Type| Drug Product Impurity Method Type"
* structure.representation.format ^definition = "The technique used to elucidate the structure or characterisation of the impurity. [Source: SME Defined]"
* structure.representation.format.coding from PqcmcChemicalStructureDataFileTypeTerminology (required)
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Impurity Chemical Structure Data File"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: Structured Data File (SDF), MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
"""
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Impurity Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the impurity substance. [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for use in eCTD' Example: This is the representation of the molecule CH3OH, or the sequence SHLVEALALVAGERG."
* structure.representation.document only Reference(Base64DocumentReference)

// impurities might be unknown and not have Unii's
* insert UniiAndUniProtCodes(0)
* insert ShortSetSubstanceNames
* insert CompanyName

RuleSet: SubstanceCharacterization
* characterization MS
  * technique
    * ^definition = """The technique used to elucidate the structure ore characterization of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
    * text 1..1 MS
      * ^short = "Substance Characterisation Technique"
  * description 0..1 MS
    * ^short = "Analytical Instrument Data File Narrative Text"
    * ^definition = ""
  * file 0..* MS
    * ^short = "Impurity Analysis Graphic | Impurity Analytical Instrument Data File"
    * ^definition = """Impurity Analysis Graphic: The pictorial representation of the data. [Source: SME Defined] Examples: spectrum, chromatogram.
Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the instrumental output for the molecule -- CH3OHA pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]

Impurity Analytical Instrument Data File: The transport format for data exchange. [Source: SME Defined]
Example: JCAMP, ADX, ADF.
"""
  * file only PqcmcAttachment

Profile: DrugProductIngredient
Parent: Ingredient
Id: pqcmc-dp-ingredient
Title: "Drug Product Batch Formula Ingredient"
Description: "The amount details about the drug product ingredients in the batch. Use for Batch Formula."

* meta.profile 0..1 MS
* identifier 0..1 MS
* substance.code 1..1 MS
* substance.code ^short = "Ingredient Substance"
* substance.code only CodeableReference(pqcmc-routine-drug-substance or pqcmc-excipient)
* substance.strength 1..* MS
* substance obeys cmc-percent-quantity-ingredient
  * strength 1..2 MS
    * concentration[x] 1..1 MS
    * concentration[x] only Quantity
    * concentrationQuantity from PqcmcUnitsMeasureTerminology (required)
//-------------------------Batch Analysis------------------------------------------------------------------------------------//
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

