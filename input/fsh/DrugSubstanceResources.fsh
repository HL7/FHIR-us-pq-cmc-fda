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

Profile: DrugSubstance
Parent: SubstanceDefinition
Id: pqcmc-drug-substance
Title: "Drug Substance"
Description: "Drug Substance (Active Ingredient) nomenclature and characterization."
* . obeys cmc-structure-required
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
* supplier only Reference(MfgTestSiteOrganization)
* characterization 0..* MS
* characterization.technique.text 1..1 MS
* characterization.form.text 0..1 MS
* characterization.form.text ^short = "Form"
* characterization.form.text ^definition = ""
* characterization.description 0..1 MS
* characterization.description ^short = "Analytical Instrument Data File Narrative Text"
* characterization.description ^definition = ""
* characterization.file 0..1 MS
* characterization.file ^short = "Anlaysis Graphic"
* characterization.file ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
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
* molecularWeight.amount.code from PqcmcUnitsMeasureTerminology

* structure 1..1 MS
* structure obeys cmc-substance-structure-graphic-required
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique MS
* structure.technique ^short = "Substance Structure Technique"
* structure.technique ^definition = """The technique used to elucidate the structure of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.type.coding from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
 """
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
// $UNII  $UNIPROT  //element(*,SubstanceDefinition)/code/code/coding/system

* code MS
* code obeys cmc-when-unii-required
* code.code
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""

//element(*,SubstanceDefinition)/code/code/text/@value
//BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
//BR: isbt Applicable to blood products.
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  sys 0..1 MS and
  sub 0..1 MS and
  brand 0..1 MS and
  comn 0..1 MS and
  gsrs 0..1 MS and
  usp 0..1 MS and
  cas 0..1 MS and
  inn 0..1 MS and
  usan 0..1 MS and
  iupac 0..1 MS and
  isbt 0..1 MS and
  comp 0..1 MS
* name[sys].name 1..1 MS
* name[sys].name ^short = "Systematic"
* name[sys].name ^definition = """TDB [Source: SME Defined]
"""
* name[sys].type 1..1 MS
* name[sys].type.coding 1..1 MS
* name[sys].type.coding 1..1
* name[sys].type.coding = PqcmcSubstanceNameType#145 "Systematic"
* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"
* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type 1..1 MS
* name[brand].type.coding 1..1 MS
* name[brand].type.coding = PqcmcSubstanceNameType#137 "Brand"
* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"

* name[usp].name 1..1 MS
* name[usp].name ^short = "USP/NF"
* name[usp].name ^definition = """TDB [Source: SME Defined]
"""
* name[usp].type 1..1 MS
* name[usp].type.coding 1..1 MS
* name[usp].type.coding = PqcmcSubstanceNameType#147 "USP/NF"

* name[cas].name 1..1 MS
* name[cas].name ^short = "CAS Number"
* name[cas].name ^definition = """Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org]
Example: CAS [103-90-2]
 """
* name[cas].type 1..1 MS
* name[cas].type.coding 1..1 MS
* name[cas].type.coding = PqcmcSubstanceNameType#CAS "CAS Number"

* name[inn].name 1..1 MS
* name[inn].name ^short = "INN"
* name[inn].name ^definition = """International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/]
Example: Paracetamol
"""
* name[inn].type 1..1 MS
* name[inn].type.coding 1..1 MS
* name[inn].type.coding = PqcmcSubstanceNameType#INN "INN"

* name[usan].name 1..1 MS
* name[usan].name ^short = "USAN"
* name[usan].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined]
Example: acetaminophen
 """
* name[usan].type.coding 1..1
* name[usan].type.coding = PqcmcSubstanceNameType#USAN "USAN"

* name[iupac].name 1..1 MS
* name[iupac].name ^short = "IUPAC Name"
* name[iupac].name ^definition = """A name assigned to a chemical substance according to the systematic nomenclature rules defined by the International Union of Pure and Applied Chemistry (IUPAC) [Source: SME Defined]
Example: N- (4-hydroxyphenyl)acetamide
"""
* name[iupac].type 1..1 MS
* name[iupac].type.coding 1..1 MS
* name[iupac].type.coding = PqcmcSubstanceNameType#IUPAC "IUPAC"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT 128"
* name[isbt].name ^definition = """ISBT 128: It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
 """
* name[isbt].type.coding 1..1
* name[isbt].type.coding = PqcmcSubstanceNameType#ISBT "ISBT 128"

* name[comp].name 1..1 MS
* name[comp].name ^short = "Company Code"
* name[comp].name ^definition = """Company Code An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type.coding 1..1
* name[comp].type.coding = PqcmcSubstanceNameType#Company "Company ID/Code"

* name.preferred 0..1 MS
* name.preferred ^short = "???True when the name type is Substance Name???"
* name.preferred obeys cmc-name-preferred
* relationship 0..* MS
* relationship obeys cmc-substance-relationship
* relationship.substanceDefinitionReference only Reference(ImpuritySubstance or PolymorphicForm or ComponentSubstance)
* relationship.type.text
* relationship.type.text ^short = "Values: 'Polymorph', 'Raw Material', and 'Impurity'"
//* Is a rule set required so that if reference is PolymorphicForm text is "Polymorph",e if ComponentSubstance then text is "Raw Material" DrugSubstanceImpurity then text is "Impurity"

Profile: ImpuritySubstance
Parent: SubstanceDefinition
Id: pqcmc-drug-product-substance-impurity
Title: "Drug Substance Impurity"
Description: "Any component of the drug substance that is not the chemical entity for procduct composition."
* . obeys cmc-structure-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification MS
* classification ^short = "Impurity Classification"
* classification ^definition = """A categorization of impurities based on its origin. [Source: SME Defined]
Examples: Degradation Product, Inorganic, Process Related/Process, Product Related, Leachables.
"""
* classification.coding from PqcmcImpurityClassificationTerminology
* characterization MS
* characterization.technique.text 1..1 MS
* characterization.form.text 0..1 MS
* characterization.form.text ^short = "Form"
* characterization.form.text ^definition = ""
* characterization.description 0..1 MS
* characterization.description ^short = "Analytical Instrument Data File Narrative Text"
* characterization.description ^definition = ""
* characterization.file 0..1 MS
* characterization.file ^short = "Anlaysis Graphic"
* characterization.file ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
* characterization.file.data 1..1 MS
* characterization.file.title 1..1 MS
* structure 0..1 MS
* structure obeys cmc-representation-or-document
* structure.technique MS
* structure.technique ^short = "Substance Structure Technique"
* structure.technique ^definition = """The technique used to elucidate the structure of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Drug Substance Impurity Method Type| Drug Product Impurity Method Type"
* structure.representation.type.text ^definition = "The technique used to elucidate the structure or characterization of the impurity. [Source: SME Defined]"
* structure.representation.type.coding from PqcmcChemicalStructureDataFileTypeTerminology
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
* structure.representation.document ^definition = "A pictorial representation of the structure of the impurity. [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)

//element(*,SubstanceDefinition)/code/code/coding
* code MS
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  gsrs 0..1 MS and
  comn 0..1 MS and
  sub 0..1 MS

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"
* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

Profile: PolymorphicForm
Parent: SubstanceDefinition
Id: pqcmc-polymorphic-form
Title: "Polymorphic Form"
Description: "Alternate structure present in the drug substance"

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* structure 0..1 MS
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique 0..1 MS
* structure.technique ^short = "Substance Structure Technique"
* structure.technique ^definition = """The technique used to elucidate the structure of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.type.coding from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
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

* name 1..* MS
* name ^short = "Polymorphic Form Identification"
* name ^definition = """The designation of the polymorphs present in the drug substance. [Source: SME Defined]
Example: Polymorph A
"""
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  gsrs 0..1 MS and
  comn 0..1 MS and
  sub 0..1 MS

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"
* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

Profile: ComponentSubstance
Parent: SubstanceDefinition
Id: pqcmc-component-substance
Title: "Component Substance"
Description: "Any raw material intended for use in the manufacture of a drug substance, or any ingredient intended for use in the manufacture of a drug product including those that may not appear in such drug product."
* identifier 0..1
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* grade 1..1
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade.coding from PqcmcQualityBenchmarkTerminology
* manufacturer 0..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* structure MS
* structure obeys cmc-representation-or-document
* structure.representation 1..*
* structure.representation.representation 0..1 MS
* structure.representation.format 0..1
* structure.representation.format.text
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Substance Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
* code MS
* code obeys cmc-when-unii-required
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name 1..* MS
* name ^short = "Product Ingredient Name"
* name ^definition = "Any ingredient intended for use in the manufacture of a drug product, including those that may not appear in such drug product. [Source: (21 CFR 210.3 (b) (3)) PAC-ATLS 1998]"

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern of Product Ingredient Name Type"
* name contains
  sub 0..1 MS and
  brand 0..1 MS and
  comn 0..1 MS and
  gsrs 0..1 MS
* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type 1..1 MS
* name[brand].type.coding 1..1 MS
* name[brand].type.coding = PqcmcSubstanceNameType#137 "Brand"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"

* sourceMaterial 1..1 MS
* sourceMaterial.type 0..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined]
Example: cat hair would be an Animal source type """
* sourceMaterial.type.coding from PqcmcSourceTypeTerminology
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
* sourceMaterial.countryOfOrigin 0..1 MS
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin"
* sourceMaterial.countryOfOrigin ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"
* sourceMaterial.countryOfOrigin.coding 0..0
* sourceMaterial.countryOfOrigin.coding from genc-country-codes
* sourceMaterial.countryOfOrigin.text 1..1 MS

Profile: DrugProductComponent
Parent: Ingredient
Id: pqcmc-component
Title: "Drug Product Component"
Description: "The amount details about the drug product components to define the product composition in a product unit. Use composition."

* .extension contains pq-additional-info-extension named additional-info 0..1 MS
* .extension[additional-info] ^short = "Drug Product Component Additional Information"
* .extension[additional-info] ^definition = """A placeholder for providing any comments that are relevant to the component. [Source: SME Defined]
Examples: removed during process, adjusted for loss on drying, etc.
"""
* status.code
* for ^short = "Reference to MedicinalProductDefinition"
* substance.code MS
* substance.code ^short = "Ingredient Substance"
* substance.code only Reference(ComponentSubstance)
* substance.strength obeys cmc-strength-type-cases
* substance.strength obeys cmc-arbitrary-unit
* substance.strength 1..1 MS
* substance.strength.extension contains strength-extension named strengthFactors 1..1 MS
* substance.strength.presentation[x] 1..1 MS
* substance.strength.presentation[x] only Ratio or Quantity
* substance.strength.presentationRatio 0..1 MS
* substance.strength.presentationRatio.numerator 1..1 MS
* substance.strength.presentationRatio.numerator.value ^short = "Product Ingredient Amount Numeric Numerator"
* substance.strength.presentationRatio.numerator.value ^definition = "Specifies the quantity of an ingredient in a single unit of the drug product. [Source: SME Defined]"
* substance.strength.presentationRatio.numerator.value 1..1 MS
* substance.strength.presentationRatio.numerator.unit 1..1 MS
* substance.strength.presentationRatio.numerator.unit ^short = "Product Ingredient Amount Numeric Numerator UOM"
* substance.strength.presentationRatio.numerator.unit ^definition = """The labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI EVS C117055]
Example: mg]
"""
* substance.strength.presentationRatio.numerator.code 1..1 MS
* substance.strength.presentationRatio.numerator.code from  PqcmcUnitsMeasureTerminology
* substance.strength.presentationRatio.denominator 1..1 MS
* substance.strength.presentationRatio.denominator.value  ^short = "Product Ingredient Amount Numeric Denominator"
* substance.strength.presentationRatio.denominator.value  ^definition = "Specifies the quantity of the ingredient (s) consistent with this single unit of drug product. [Source: SME Defined]"
* substance.strength.presentationRatio.denominator.value 1..1 MS
* substance.strength.presentationRatio.denominator.unit 1..1 MS
* substance.strength.presentationRatio.denominator.code 1..1 MS
* substance.strength.presentationRatio.denominator.code from  PqcmcUnitsMeasureTerminology

* substance.strength.presentationQuantity 0..1 MS
* substance.strength.presentationQuantity.value 1..1 MS
* substance.strength.presentationQuantity.value ^short = "Product Ingredient Amount Numeric"
* substance.strength.presentationQuantity.value ^definition = """The labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI EVS C117055]
Example: mg]
"""
* substance.strength.presentationQuantity.unit 1..1
* substance.strength.presentationQuantity.code 1..1
* substance.strength.presentationQuantity.code from  PqcmcUnitsMeasureTerminology
* substance.strength.textPresentation 1..1 MS
* substance.strength.textPresentation ^short = "Strength Textual"
* substance.strength.textPresentation ^definition = "A written description of the strength of the ingredient. [Source: SME Defined]"

Profile: DrugProductIngredient
Parent: Ingredient
Id: pqcmc-dp-ingredient
Title: "Drug Product Batch Formula Ingredient"
Description: "The amount details about the drug product ingredients in the batch. Use for Batch Formula."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-dp-ingredient"
* identifier 0..1 MS
* substance.code 1..1 MS
* substance.code ^short = "Ingredient Substance"
* substance.code only Reference(pqcmc-routine-drug-substance)
* substance.strength 1..* MS
* substance.strength obeys cmc-percent-quantity-ingredient
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
* substance.strength[Weight].concentrationQuantity.value 1..1 MS
* substance.strength[Weight].concentrationQuantity.value ^short = "Ingredient Quanty Per Product Batch"
* substance.strength[Weight].concentrationQuantity.value ^definition = """Quantity: The concentration of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[Weight].concentrationQuantity.unit 1..1 MS
* substance.strength[Weight].concentrationQuantity.code 1..1 MS
* substance.strength[Weight].concentrationQuantity.code from PqcmcUnitsMeasureTerminology

* substance.strength[VolumeToVolume].concentrationQuantity.value 1..1 MS
* substance.strength[VolumeToVolume].concentrationQuantity.value ^short = "Percent Ingredient Quanty Per Product Batch"
* substance.strength[VolumeToVolume].concentrationQuantity.value ^definition = """Quantity expressed as Volume To Volume: The concentration of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[VolumeToVolume].concentrationQuantity.code = $NCIT#C48571 "%{VolumeToVolume}"

* substance.strength[WeightToVolume].concentrationQuantity.value 1..1 MS
* substance.strength[WeightToVolume].concentrationQuantity.value ^short = "Percent Ingredient Quanty Per Product Batch"
* substance.strength[WeightToVolume].concentrationQuantity.value ^definition = """Quantity expressed as Weight To Volume: The concentration of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[WeightToVolume].concentrationQuantity.code =  $NCIT#C48527 "%{WeightToVolume}"
* substance.strength[WeightToWeight].concentrationQuantity.value 1..1 MS
* substance.strength[WeightToWeight].concentrationQuantity.value ^short = "Percent Ingredient Quanty Per Product Batch"
* substance.strength[WeightToWeight].concentrationQuantity.value ^definition = """Quantity expressed as Weight To Weight: The concentration of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength[WeightToWeight].concentrationQuantity.code = $NCIT#C48528 "%{WeightToWeight}"

//* substance.strength.textConcentration ^short = "Strength Textual"
//* substance.strength.textConcentration ^definition = """A written description of the strength of the ingredient.[Source: SME Defined]
//Note: This is typically applicable to biologics
//Example: International Units for Enzymes
//"""

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
* extension[expirationDateClassification].valueCodeableConcept from PqcmcRetestDateClassificationTerminology

* extension[batchUtilization] 1..1 MS
* extension[batchUtilization] ^short = "Batch Utilization"
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined] * Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS
* extension[batchUtilization].valueCodeableConcept from PqcmcBatchUtilizationTerminology
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
* extension[container].extension[type].valueCodeableConcept from PqcmcContainerTypeTerminology
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
* extension[container].extension[closureType].valueCodeableConcept from PqcmcClosureTypeTerminology

Profile: DrugSubstanceBatch
Parent: Substance
Id: pqcmc-drug-substance-batch
Title: "Drug Substance Manufactured Batch"
Description: "Includes the properties of the drug substance as manufactured."

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
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* expiry 0..1 MS
* expiry ^short = "Retest Date"
* expiry ^definition = "The date after which samples of the drug substance should be examined to ensure compliance with the specification and thus suitable for use in the manufacture of a given drug product [Source: Adapted from Q1A(R2)]"
* expiry only dateTime

Profile: ExcipientRaw
Parent: SubstanceDefinition
Id: pqcmc-excipient
Title: "Excipient Drug Substance"
Description: "Provides sufficient information to identify an inactive substance and raw materials and its source when stability data is required in the submission."

* identifier 0..1
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* grade 1..1
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade.coding from PqcmcQualityBenchmarkTerminology
* manufacturer 0..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* code MS
* code obeys cmc-when-unii-required
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name 1..* MS
* name.name ^short = "Excipient Name"
* name.type = $NCIT#141 "GSRS Preferred"
* sourceMaterial 1..1 MS
* sourceMaterial.type 1..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined]
Example: cat hair would be an Animal source type """
* sourceMaterial.type.coding from PqcmcSourceTypeTerminology
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
* sourceMaterial.countryOfOrigin 0..1 MS
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin"
* sourceMaterial.countryOfOrigin ^definition = "The name of the country where the organism wagrademas reared. [Source: SME Defined]"
* sourceMaterial.countryOfOrigin.coding 1..
* sourceMaterial.countryOfOrigin.coding from genc-country-codes

Profile: RoutineSubstanceDefinition
Parent: SubstanceDefinition
Id: pqcmc-routine-drug-substance
Title: "Routine Drug Substance"
Description: "Provides sufficient information to identify a drug substance. Profile on Drug Substance profile."

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
"""
* grade 1..1
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade.coding from PqcmcQualityBenchmarkTerminology
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* name 1..* MS
* name ^short = "Product Ingredient Name"
* name ^definition = "Any ingredient intended for use in the manufacture of a drug product, including those that may not appear in such drug product. [Source: (21 CFR 210.3 (b) (3)) PAC-ATLS 1998]"

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern of Product Ingredient Name Type"
* name contains
  gsrs 0..1 MS and
  sub 0..1 MS and
  comn 0..1 MS

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"

* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

Profile: SubstanceContainerClosure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-container-closure
Title: "Drug Substance Container Closure"
Description: "Description and coding of the container closure system. Profile on Drug Substance profile."
* extension contains  pq-container-closure-extension named containerClosure 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* code MS
* code obeys cmc-when-unii-required
* code.code
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name MS
* name ^short = "Provide the preferred name identified in 3.2.S.1"
* name.preferred = true

Profile: DrugSubstanceNomenclature
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-nomenclature
Title: "Substance Nomenclature "
Description: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile."

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
* supplier only Reference(MfgTestSiteOrganization)
* molecularWeight 0..1 MS
* molecularWeight ^short = "Molecular Weight"
* molecularWeight ^definition = "The average mass of a molecule of a compound compared to ¹/₁₂ the mass of carbon 12 and calculated as the sum of the atomic weights of the constituent atoms. [Source: Merriam Webster]"
* molecularWeight.amount 1..1 MS
* molecularWeight.amount.unit ^short = "Molecular Weight UOM"
* molecularWeight.amount.unit ^definition = """The labeled unit of measure for the molecular weight. [Source: Adapted for NCI EVS C117055]
 """
* molecularWeight.amount.code 1..1 MS
* molecularWeight.amount.code from PqcmcUnitsMeasureTerminology

* code MS
* code obeys cmc-when-unii-required
* code.code
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice based on value pattern"
* name contains
  sys 0..1 MS and
  sub 0..1 MS and
  brand 0..1 MS and
  comn 0..1 MS and
  gsrs 0..1 MS and
  usp 0..1 MS and
  cas 0..1 MS and
  inn 0..1 MS and
  usan 0..1 MS and
  iupac 0..1 MS and
  isbt 0..1 MS and
  comp 0..1 MS
* name[sys].name 1..1 MS
* name[sys].name ^short = "Systematic"
* name[sys].name ^definition = """TDB [Source: SME Defined]
"""
* name[sys].type 1..1 MS
* name[sys].type.coding 1..1 MS
* name[sys].type.coding = PqcmcSubstanceNameType#145 "Systematic"

* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type 1..1 MS
* name[brand].type.coding 1..1 MS
* name[brand].type.coding = PqcmcSubstanceNameType#137 "Brand"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"

* name[usp].name 1..1 MS
* name[usp].name ^short = "USP/NF"
* name[usp].name ^definition = """TDB [Source: SME Defined]
"""
* name[usp].type 1..1 MS
* name[usp].type.coding 1..1 MS
* name[usp].type.coding = PqcmcSubstanceNameType#147 "USP/NF"

* name[cas].name 1..1 MS
* name[cas].name ^short = "CAS Number"
* name[cas].name ^definition = """Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org]
Example: CAS [103-90-2]
 """
* name[cas].type 1..1 MS
* name[cas].type.coding 1..1 MS
* name[cas].type.coding = PqcmcSubstanceNameType#CAS "CAS Number"

* name[inn].name 1..1 MS
* name[inn].name ^short = "INN"
* name[inn].name ^definition = """International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/]
Example: Paracetamol
"""
* name[inn].type 1..1 MS
* name[inn].type.coding 1..1 MS
* name[inn].type.coding = PqcmcSubstanceNameType#INN "INN"

* name[usan].name 1..1 MS
* name[usan].name ^short = "USAN"
* name[usan].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined]
Example: acetaminophen
 """
* name[usan].type 1..1 MS
* name[usan].type.coding 1..1
* name[usan].type.coding = PqcmcSubstanceNameType#USAN "USAN"

* name[iupac].name 1..1 MS
* name[iupac].name ^short = "IUPAC Name"
* name[iupac].name ^definition = """A name assigned to a chemical substance according to the systematic nomenclature rules defined by the International Union of Pure and Applied Chemistry (IUPAC) [Source: SME Defined]
Example: N- (4-hydroxyphenyl)acetamide
"""
* name[iupac].type 1..1 MS
* name[iupac].type.coding 1..1 MS
* name[iupac].type.coding = PqcmcSubstanceNameType#IUPAC "IUPAC"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT 128"
* name[isbt].name ^definition = """ISBT 128: It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
 """
* name[isbt].type 1..1 MS
* name[isbt].type.coding 1..1
* name[isbt].type.coding = PqcmcSubstanceNameType#ISBT "ISBT 128"

* name[comp].name 1..1 MS
* name[comp].name ^short = "Company Code"
* name[comp].name ^definition = """Company Code An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type 1..1 MS
* name[comp].type.coding 1..1
* name[comp].type.coding = PqcmcSubstanceNameType#Company "Company ID/Code"

* name.preferred 0..1 MS
* name.preferred ^short = "rue when the name type is GSRS preferred is Substance Name???"
* name.preferred obeys cmc-name-preferred
* relationship 0..* MS
* relationship.substanceDefinitionReference ^short = "The substance definition of a polyphorm of the Drug Substance"
* relationship.substanceDefinitionReference only Reference( PolymorphicForm )
* relationship.type.text = "Polymorph"
* relationship.type.text ^short = "Polymorph"

Profile: DrugSubstanceImpurities
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-impurities
Title: "Substance Impurities"
Description: "Drug Substance Impurities"

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
* characterization.description ^short = "Analytical Instrument Data File Narrative Text"
* characterization.description ^definition = ""
* characterization.file 0..1 MS
* characterization.file ^short = "Anlaysis Graphic"
* characterization.file ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
* characterization.file.data 1..1 MS
* characterization.file.title 1..1 MS
* structure MS
* structure obeys cmc-substance-structure-graphic-required
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique MS
* structure.technique ^short = "Substance Structure Technique"
* structure.technique ^definition = """The technique used to elucidate the structure of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.type.coding from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
 """
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
* code MS
* code obeys cmc-when-unii-required
* code.code
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #open
// specifically left open in case there is some other codes not considered.  Information gathering.
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding"
* name ^slicing.rules = #closed
* name contains
  sys 1..1 MS and
  sub 0..1 MS and
  brand 0..1 MS and
  comn 0..1 MS and
  gsrs 0..1 MS and
  usp 0..1 MS and
  cas 0..1 MS and
  inn 0..1 MS and
  usan 0..1 MS and
  iupac 0..1 MS and
  isbt 0..1 MS and
  comp 0..1 MS
* name[sys].name 1..1 MS
* name[sys].name ^short = "Systematic"
* name[sys].name ^definition = """TDB [Source: SME Defined]
"""
* name[sys].type 1..1 MS
* name[sys].type.coding 1..1 MS
* name[sys].type.coding = PqcmcSubstanceNameType#145 "Systematic"

* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type 1..1 MS
* name[brand].type.coding 1..1 MS
* name[brand].type.coding = PqcmcSubstanceNameType#137 "Brand"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"

* name[usp].name 1..1 MS
* name[usp].name ^short = "USP/NF"
* name[usp].name ^definition = """TDB [Source: SME Defined]
"""
* name[usp].type 1..1 MS
* name[usp].type.coding 1..1 MS
* name[usp].type.coding = PqcmcSubstanceNameType#147 "USP/NF"

* name[cas].name 1..1 MS
* name[cas].name ^short = "CAS Number"
* name[cas].name ^definition = """Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org]
Example: CAS [103-90-2]
 """
* name[cas].type 1..1 MS
* name[cas].type.coding 1..1 MS
* name[cas].type.coding = PqcmcSubstanceNameType#CAS "CAS Number"

* name[inn].name 1..1 MS
* name[inn].name ^short = "INN"
* name[inn].name ^definition = """International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/]
Example: Paracetamol
"""
* name[inn].type 1..1 MS
* name[inn].type.coding 1..1 MS
* name[inn].type.coding = PqcmcSubstanceNameType#INN "INN"

* name[usan].name 1..1 MS
* name[usan].name ^short = "USAN"
* name[usan].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined]
Example: acetaminophen
 """
* name[usan].type 1..1 MS
* name[usan].type.coding 1..1
* name[usan].type.coding = PqcmcSubstanceNameType#USAN "USAN"

* name[iupac].name 1..1 MS
* name[iupac].name ^short = "IUPAC Name"
* name[iupac].name ^definition = """A name assigned to a chemical substance according to the systematic nomenclature rules defined by the International Union of Pure and Applied Chemistry (IUPAC) [Source: SME Defined]
Example: N- (4-hydroxyphenyl)acetamide
"""
* name[iupac].type 1..1 MS
* name[iupac].type.coding 1..1 MS
* name[iupac].type.coding = PqcmcSubstanceNameType#IUPAC "IUPAC"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT 128"
* name[isbt].name ^definition = """ISBT 128: It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
 """
* name[isbt].type 1..1 MS
* name[isbt].type.coding 1..1
* name[isbt].type.coding = PqcmcSubstanceNameType#ISBT "ISBT 128"

* name[comp].name 1..1 MS
* name[comp].name ^short = "Company Code"
* name[comp].name ^definition = """Company Code An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type 1..1 MS
* name[comp].type.coding 1..1
* name[comp].type.coding = PqcmcSubstanceNameType#Company "Company ID/Code"

* name.preferred 0..1 MS
* name.preferred ^short = "???True when the name type is Substance Name???"
* name.preferred obeys cmc-name-preferred

* relationship 0..* MS
* relationship.substanceDefinitionReference ^short = "The substance definition of an impurity of the Drug Substance"
* relationship.substanceDefinitionReference only Reference( ImpuritySubstance )
* relationship.type.text = "Impurity"
* relationship.type.text ^short = "Impurity"


Profile: DrugSubstanceMolecularStructure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-molecular-structure
Title: "Drug Substance Molecular Structure"
Description: "Drug Substance (Active Ingredient) molecular structure. Profile on Drug Substance profile."

* . obeys cmc-structure-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* structure 1..1 MS
* structure obeys cmc-substance-structure-graphic-required
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Structure Technique"
* structure.technique ^definition = """The technique used to elucidate the structure of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.type.coding from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
 """
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
* code MS
* code obeys cmc-when-unii-required
* code.code
* code.code.coding
* code.code.coding ^slicing.discriminator.type = #pattern
* code.code.coding ^slicing.discriminator.path = "system"
* code.code.coding ^slicing.rules = #closed
* code.code.coding contains
    unii 0..1 and
    uniProt 0..1
* code.code.coding[unii].system = $UNII
* code.code.coding[unii] ^short = "UNII"
* code.code.coding[unii] ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* code.code.coding[uniProt].system = $UNIPROT
* code.code.coding[uniProt] ^short = "UniProt ID"
* code.code.coding[uniProt] ^definition = """The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
It is accessible at https://www.uniprot.org/
"""
* name 1..* MS
* name ^short = "Only one name required"
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding" //element(*,SubstanceDefinition)/name/type/coding/code
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  sys 0..1 MS and
  sub 0..1 MS and
  brand 0..1 MS and
  comn 0..1 MS and
  gsrs 0..1 MS and
  usp 0..1 MS and
  comp 0..1 MS
* name[sys].name 1..1 MS
* name[sys].name ^short = "Systematic"
* name[sys].name ^definition = """TDB [Source: SME Defined]
"""
* name[sys].type 1..1 MS
* name[sys].type.coding 1..1 MS
* name[sys].type.coding = PqcmcSubstanceNameType#145 "Systematic"

* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type 1..1 MS
* name[sub].type.coding 1..1 MS
* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"

* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type 1..1 MS
* name[brand].type.coding 1..1 MS
* name[brand].type.coding = PqcmcSubstanceNameType#137 "Brand"

* name[comn].name 1..1 MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type 1..1 MS
* name[comn].type.coding 1..1 MS
* name[comn].type.coding = PqcmcSubstanceNameType#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type.coding 1..1 MS
* name[gsrs].type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"

* name[usp].name 1..1 MS
* name[usp].name ^short = "USP/NF"
* name[usp].name ^definition = """TDB [Source: SME Defined]
"""
* name[usp].type 1..1 MS
* name[usp].type.coding 1..1 MS
* name[usp].type.coding = PqcmcSubstanceNameType#147 "USP/NF"

* name[comp].name 1..1 MS
* name[comp].name ^short = "Company Code"
* name[comp].name ^definition = """Company Code An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type 1..1 MS
* name[comp].type.coding 1..1
* name[comp].type.coding = PqcmcSubstanceNameType#Company "Company ID/Code"

* name.preferred 0..1 MS
* name.preferred ^short = "???True when the name type is Substance Name???"
* name.preferred obeys cmc-name-preferred
