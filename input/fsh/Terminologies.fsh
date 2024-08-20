ValueSet: PqcmcImpurityClassificationTerminology	
Id: pqcmc-impurity-classification-terminology	
Title: "Impurity Classification Terminology"	
Description: "Terminology used to qualify the information pertaining to impurity classifications in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."	
* ^experimental = false
* ^status = #draft
* $NCIT#C176816 "Degradation Product"	
* $NCIT#C185190 "Elemental Impurities"	
* $NCIT#C176815 "Residual Solvent"	
* $NCIT#C134001 "Inorganic"	
* $NCIT#C176812 "Process Related/Process"	
* $NCIT#C185192 "Leachables"	
* $NCIT#C176813 "Product Related"	
* $NCIT#C92081 "Microbiological"

ValueSet: PqcmcBatchUtilizationTerminology	
Id: pqcmc-batch-utilization-terminology	
Title: "Batch utilization Terminology"	
Description: "Terminology used to qualify the information pertaining to batch utilization in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."	
	
* ^experimental = false
* ^status = #draft
* $NCIT#C133994 "Bioequivalence"	
* $NCIT#C133992 "Clinical"	
* $NCIT#C133990 "Commercial"	
* $NCIT#C133991 "Development"	
* $NCIT#C133993 "Validation"	
* $NCIT#C185328 "Stability Study"

CodeSystem: CmcRelationshipTypes
Id: cmc-relationship-types
Title: "Relationship Types Codes"
Description: "Local value set of all codes in the Relationship Types code system.Codes temporarily defined as part of the PQ-CMC-FDA implementation guide.  These will eventually migrate into an officially maintained terminology (likely either NCIt or HL7's UTG code systems)"
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* #parent "Parent"
* #child "Child"
* #primary "Primary"

ValueSet: CmcRelationshipTypesVS
Id: cmc-relationship-types-vs
Title: "Relationship Types Terminology"
Description: "Local value set of all codes in Relationship Types codes"

* ^experimental = false
* ^status = #draft
* include codes from system CmcRelationshipTypes

ValueSet: CmcProductNameTypesVS
Id: cmc-product-name-types-vs
Title: "Product Name Types Terminology"
Description: "Local value set of all codes in the Code system."

* ^experimental = false
* ^status = #draft
* include codes from system CmcProductNameTypes

CodeSystem: CmcProductNameTypes
Id: cmc-product-name-types
Title: "Product Name Types Code Types"
Description: "Indicates patent or trademark status. Codes temporarily defined as part of the PQ-CMC-FDA implementation guide.  These will eventually migrate into an officially maintained terminology (likely either NCIt or HL7's UTG code systems)"

* ^caseSensitive = true
* ^experimental = false
* ^status = #draft

* #PROP "Proprietary"
* #NON "Non-Proprietary"

ValueSet: PqcmcTestCategoryTerminology
Id: pqcmc-test-category-terminology
Title: "Test Category Terminology"
Description: "Terminology used to qualify the information pertaining to test categories in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C60819 "Assay"
* $NCIT#C204845 "Active Ingredient Content"
* $NCIT#C205001 "Adventitious Agents (Safety)"
* $NCIT#C81183 "Amino Acid Content"
* $NCIT#C205003 "Bioburden"
* $NCIT#C205007 "Counterion Content"
* $NCIT#C205015 "Excipient"
* $NCIT#C205018 "Host Cell DNA"
* $NCIT#C205020 "In Vitro or In Vivo Test for Viral Contaminants"
* $NCIT#C205028 "Percent Conjugate"
* $NCIT#C62352 "Purity"
* $NCIT#C171277 "Nucleic Acid Content"
* $NCIT#C205038 "Solvate Content"
* $NCIT#C64858 "Total Protein"
* $NCIT#C205006 "Cell and Gene Therapy Product Characterization Assay"
* $NCIT#C134249 "Container Closure Integrity"
* $NCIT#C134250 "Uniformity"
* $NCIT#C205004 "Blend Uniformity"
* $NCIT#C205019 "IPC Content Uniformity"
* $NCIT#C134115 "Uniformity of Dosage Unit"
* $NCIT#C205050 "Uniformity in Containers"
* $NCIT#C133961 "Deliverable Volume/Fill Volume"
* $NCIT#C205026 "Organoleptic"
* $NCIT#C138990 "Description/Appearance"
* $NCIT#C139027 "Odor"
* $NCIT#C134262 "Color of Solution"
* $NCIT#C134261 "Clarity of Solution"
* $NCIT#C138993 "Identification"
* $NCIT#C134252 "Disintegration"
* $NCIT#C134253 "Dissolution"
* $NCIT#C205012 "Droplet Size"
* $NCIT#C193381 "Foreign and Particulate Matter"
* $NCIT#C205024  "Metal Detection"
* $NCIT#C134255 "Loss on Drying"
* $NCIT#C134256 "Microbial Limits"
* $NCIT#C205027 "Osmolality/Osmolarity"
* $NCIT#C134257 "Particle Size Distribution"
* $NCIT#C134260 "Bulk Density"
* $NCIT#C134263 "Conductivity"
* $NCIT#C133974 "Crystallinity"
* $NCIT#C133975 "Friability"
* $NCIT#C134264 "Hardness"
* $NCIT#C63394 "Melting Point"
* $NCIT#C103201 "Optical Rotation"
* $NCIT#C205029 "pH"
* $NCIT#C60821 "Solubility"
* $NCIT#C64832 "Specific Gravity"
* $NCIT#C25483 "Material Properties/Measurements"
* $NCIT#C205022 "Individual Weight"
* $NCIT#C205017 "Group Weight"
* $NCIT#C205209 "Average Weight"
* $NCIT#C205053 "Weight Variation"
* $NCIT#C205021 "Individual Fill Weight"
* $NCIT#C205016 "Group Fill Weight"
* $NCIT#C205206 "Average Fill Weight"
* $NCIT#C205045 "Target Group Weight Gain %"
* $NCIT#C205036 "Shell Weight"
* $NCIT#C205011 "Orifice Location"
* $NCIT#C205010 "Orifice Diameter"
* $NCIT#C205009 "Orifice Depth"
* $NCIT#C205037 "Drilled Side (Single or Double)"
* $NCIT#C205025 "Number of Orifices"
* $NCIT#C205034 "Ribbon Thickness"
* $NCIT#C205033 "Ribbon Density"
* $NCIT#C205035 "Seam Thickness"
* $NCIT#C205005 "Lock Length"
* $NCIT#C205044 "Tablet/Capsule Length"
* $NCIT#C205043 "Tablet/Capsule Diameter"
* $NCIT#C205042 "Tablet Thickness"
* $NCIT#C134266 "Tap Density"
* $NCIT#C205049 "Transdermal Properties"
* $NCIT#C133979 "Viscosity/Rheological Properties"
* $NCIT#C134267 "Plume Geometry"
* $NCIT#C134269 "Polymorphism"
* $NCIT#C205030 "Porosity"
* $NCIT#C134270 "Potency"
* $NCIT#C133983 "Pyrogenicity/Endotoxin"
* $NCIT#C134272 "Reconstitution Time"
* $NCIT#C133985 "Redispersibility"
* $NCIT#C205032 "Refractive Index"
* $NCIT#C134276 "Residue on Ignition"
* $NCIT#C134277 "Spray Pattern"
* $NCIT#C134278 "Sterility"
* $NCIT#C134113 "Syringe Functionality"
* $NCIT#C134114 "Total Organic Carbon"
* $NCIT#C200004 "Cytotoxicity"
* $NCIT#C205023 "Mechanical Integrity"
* $NCIT#C205041 "Surface Area"
* $NCIT#C18951 "Post-translational Modifications"
* $NCIT#C16643 "Glycosylation"
* $NCIT#C205054 "Thrombin Peptide Map"
* $NCIT#C205031 "Sialylation"
* $NCIT#C205002 "Amidation"
* $NCIT#C205008 "Deamidation"
* $NCIT#C205000 "Functional Assays"
* $NCIT#C205013 "Elemental Analysis"
* $NCIT#C74723 "Turbidity"
* $NCIT#C204971 "Impurity"
* $NCIT#C205039 "Specified Identified Impurity"
* $NCIT#C205040 "Specified Unidentified Impurity"
* $NCIT#C205052 "Unspecified Impurity"
* $NCIT#C205047 "Total Impurities"
* $NCIT#C205048 "Total Unknown Impurities"
* $NCIT#C205051 "Identified Impurity under IT, Monitored as Unspecified"
* $NCIT#C205014 "Elemental Impurity"
* $NCIT#C204890 "Impurity Chemical"
* $NCIT#C134254 "Impurities/Degradation Products/Related Substances"
* $NCIT#C134002 "Residual Solvent"

ValueSet: PqcmcNamePartTerminology
Id: pqcmc-name-part-terminology
Title: "Name Part Terminology"
Description: "Terminology used to qualify the information pertaining to Name Part data in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NamePartType#CON "container name"
* $NamePartType#DEV "device name"
* $NamePartType#FLAV "FlavorName"
* $NamePartType#FORMUL "FormulationPartName"
* $NamePartType#FRM "form name"
* $NamePartType#INV "invented name"
* $NamePartType#POPUL "TargetPopulationName"
* $NamePartType#SCI "scientific name"
* $NamePartType#STR "strength name"
* $NamePartType#TIME "TimeOrPeriodName"
* $NamePartType#TMK "trademark name"
* $NamePartType#USE "intended use name"

ValueSet: PqcmcProductPartType
Id: pqcmc-product-part-type
Title: "Product Part Type Terminology"
Description: "A category of terminology used to qualify the information pertaining to the product part type in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C203896 "Blend"
* $NCIT#C42890 "Bead"
* $NCIT#C203897 "Capsule Shell"
* $NCIT#C25450 "Coating"
* $NCIT#C202489 "Dispersion"
* $NCIT#C42938 "Granules"
* $NCIT#C66831 "Layer"
* $NCIT#C203898 "Minitablets"
* $NCIT#C42986 "Solution"
* $NCIT#C42998 "Tablet"

ValueSet: PqcmcProductPartIngredientPhysicalLocation
Id: pqcmc-product-part-ingredient-physical-location
Title: "Ingredient Location Terminology"
Description: "A category of terminology used to qualify the information pertaining to the location of an ingredient within a product in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C203881 "Active core/granulate"
* $NCIT#C203882 "Extragranular"
* $NCIT#C203883 "Intragranular"

ValueSet: PqcmcReleaseProfile
Id: pqcmc-release-profile
Title: "Release Profile Terminology"
Description: "A category of terminology used to qualify the information pertaining to release profile in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C42730 "Delayed-Release Profile"
* $NCIT#C42713 "Extended-Release Profile"
* $NCIT#C42669 "Immediate Release Profile"
* $NCIT#C48660 "Not Applicable"

ValueSet: PqcmcReleaseMechanism
Id: pqcmc-release-mechanism
Title: "Release Mechanism Terminology"
Description: "A category of terminology used to qualify the information pertaining to release mechanism in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C203359 "Matrix"
* $NCIT#C203360 "Osmotic Pump"
* $NCIT#C203361 "Reservoir"

ValueSet: PqcmcCoatingPurpose
Id: pqcmc-coating-purpose
Title: "Coating Purpose Terminology"
Description: "A category of terminology used to qualify the information pertaining to the coating purpose in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C203884 "Appearance/Identification"
* $NCIT#C203885 "Consumption Enhancement"
* $NCIT#C203887 "Delayed Release"
* $NCIT#C203888 "Drug Layering"
* $NCIT#C203889 "Extended Release"
* $NCIT#C203890 "Irritant Suppression"
* $NCIT#C203886 "Content Isolation"
* $NCIT#C203891 "Odor Masking"
* $NCIT#C203892 "Protective"
* $NCIT#C203893 "Seal"
* $NCIT#C203894 "Site of Action"
* $NCIT#C203895 "Taste Masking"

ValueSet: PqcmcCapsuleClassificationCategory
Id: capsule-classification-category
Title: "Capsule Shell Classification  Terminology"
Description: "A category of terminology used to qualify the information pertaining to the classification of a capsule in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C203348 "Hard Gelatin Capsule Shell"
* $NCIT#C203349 "Hard HPMC Capsule Shell"
* $NCIT#C203350 "Hard Pullulan Capsule Shell"
* $NCIT#C203351 "Hard PVA Capsule Shell"
* $NCIT#C203352 "Hard Starch Capsule Shell"
* $NCIT#C203353 "Soft Gelatin Capsule Shell"

ValueSet: PqcmcSubstanceNameType
Id: pqcmc-substance-name-type
Title: "Substance Name Type"
Description: "A category of terminology used to quality the information pertaining to the type of substance name in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C71898 "Brand"
* $NCIT#C97054 "Generic Name"
* $NCIT#C203355 "GSRS Preferred Term"
* $NCIT#C203357 "Systematic Name"
* $NCIT#C203358 "USP-NF Established Name"
* $NCIT#C54682 "CAS Number"
* $NCIT#C142585 "INN"
* $NCIT#C96973 "USAN"
* $NCIT#C203356 "IUPAC Name"
* $NCIT#C95517 "ISBT-128 DIN"
* $NCIT#C203354 "Company ID/Code"

ValueSet: SubstanceClassification
Id: substance-classification
Title: "Substance Classification"
Description: "Substance classes"

* ^experimental = false
* ^status = #draft
* $NCIT#C48807 "Chemical"
* $NCIT#C45305 "Mixture"
* $NCIT#C706 "Nucleic Acids"
* $NCIT#C48803 "Polymer"
* $NCIT#C17021 "Protein"
// * $NCIT#4 "Protein - Other"
// * $NCIT#5 "Protein - Vaccine"
*  $NCIT#C3641132 "Structurally Diverse Substance"
// * $NCIT#7 "Structurally Diverse Substance - Immunoglobulin"
// * $NCIT#6 "Structurally Diverse Substance - Vaccine"
// * $NCIT#10 "Structurally Diverse Substance - Allergen"
// * $NCIT#11 "Structurally Diverse Substance - Cell therapy"
// * $NCIT#9 "Structurally Diverse Substance - Herbal"
// * $NCIT#12 "Structurally Diverse Substance - Other"
// * $NCIT#8 "Structurally Diverse Substance - Blood derived"

ValueSet: PqcmcProductCharacteristic
Id: pqcmc-product-characteristic
Title: "Code System PQCMC Product Characteristic"
Description: "Product Characteristic for the characteristic element in ManufacturedItemDefinition for product composition."

* ^experimental = false
* ^status = #draft

* $NCIT#OvrRelsProf "Product Overall Release Profile"
* $NCIT#OvrRelsMech "Product Overall Release Mechanism"
* $NCIT#CoatInd "Coating Indicator"
* $NCIT#TabLayCnt "Tablet Layer Count"
* $NCIT#BeaTypCnt "Tablet Bead Type Count"
* $NCIT#CapConCnt "Capsule Constituent Count"
* $NCIT#CapClass "Capsule Classification Category"
* $NCIT#Schematic "Product Schematic"
* $NCIT#WgtTyp "Product Weight Type"
* $NCIT#TotWgtNum "Product Total Weight Numeric Numerator"
* $NCIT#TotWgtDen "Product Total Weight Numeric Denominator"
* $NCIT#TotWgtTxt "Total Weight Textual"
* $NCIT#TotWgtOper "Total Weight Operator"
* $NCIT#PPiD "Product Part Identifier"
* $NCIT#PPiDref "Product Part Identifier Reference"
* $NCIT#RelsProf "Product Part Release Profile"
* $NCIT#RelsMech "Product Part Release Mechanism"
* $NCIT#CoatPurpose "Coating Product Part Purpose"
* $NCIT#Color "Product Part Color Description"
* $NCIT#ContPercent "Product Part Content Percent"
* $NCIT#AddInfo "Product Part Additional Information"
* $NCIT#StrnType "Strength Type (for API)"
* $NCIT#AmtOper "Product Part Ingredient Amount Operator"
* $NCIT#AmtText "Product Part Ingredient Amount Textual"
* $NCIT#QualStd "Quality Standard"
* $NCIT#Sterile "Sterile Product Indicator"

ValueSet: CmcCompSectionTypesVS
Id: cmc-comp-section-types-vs
Title: "eCTD sections Terminology"
Description: "Value set of all codes in Code system PQCMC Comp Section Types for bindings that require a value set instead of the code system."
* ^experimental = false
* ^status = #draft

* include codes from system PqcmcCompSectionTypes

CodeSystem: PqcmcCompSectionTypes
Id: pqcmc-comp-section-types
Title: "Code System PQCMC Comp Section Types"
Description: "Classification of a section of a PQ/CMC composition/document generally based on eCTD Module 3 section numbering for product and substance. A composition can have many section codes. Codes temporarily defined as part of the PQ-CMC-FDA implementation guide.  These will eventually migrate into an officially maintained terminology (likely either NCIt or HL7's UTG code systems)."

* ^caseSensitive = true
* ^experimental = false
* ^status = #draft

* #32S10 "Substance General Information"
* #32S11 "Substance Nomenclature"
* #32S12 "Substance Structure"
* #32S13 "Substance General Properties"
* #32S20 "Substance Manufacture"
* #32S21 "Substance Manufacturers"
* #32S22 "Substance Description of Manufacturing Process and Process Controls"
* #32S23 "Substance Control of Materials"
* #32S231 "Raw Material Specification"
* #32S24 "Substance Controls of Critical Steps and Intermediates"
* #32S25 "Substance Process Validation and/or Evaluation"
* #32S26 "Substance Manufacturing Process Development"
* #32S3 "Substance Characterisation"
* #32S31 "Substance Elucidation of Structure and other Characteristics"
* #32S32 "Substance Impurities"
* #32S40 "Substance Control of Drug Substance"
* #32S41 "Substance Specification"
* #32S42 "Substance Analytical Procedures"
* #32S43 "Substance Validation of Analytical Procedures"
* #32S44 "Substance Batch Analyses"
* #32S45 "Substance Justification of Specification"
* #32S50 "Substance Reference Standards or Materials"
* #32S60 "Substance Container Closure System"
* #32S70 "Substance Stability"
* #32S71 "Substance Stability Summary and Conclusions"
* #32S72 "Substance Postapproval Stability Protocol and Stability Commitment"
* #32S73 "Substance Stability Data"
* #32P10 "Product Description and Composition of the Drug Product"
* #32P11 "Product Description"
* #32P12 "Product Composition"
* #32P13 "Product Container Closure Description"
* #32P20 "Product Pharmaceutical Development"
* #32P21 "Product Components of the Drug Product"
* #32P22 "Product Drug Product"
* #32P23 "Product Manufacturing Process Development"
* #32P24 "Product Container Closure System"
* #32P25 "Product Microbiological Attributes"
* #32P26 "Product Compatibility"
* #32P30 "Product Manufacture"
* #32P31 "Product Manufacturers"
* #32P32 "Product Batch Formula"
* #32P33 "Product Description of Manufacturing Process and Process Controls"
* #32P34 "Product Controls of Critical Steps and Intermediates"
* #32P35 "Product Process Validation and/or Evaluation"
* #32P40 "Product Control of Excipients"
* #32P41 "Excipients Specification"
* #32P42 "Product Analytical Procedures"
* #32P43 "Product Validation of Analytical Procedures"
* #32P44 "Product Justification of Specifications"
* #32P45 "Product Excipients of Human or Animal Origin"
* #32P46 "Product Novel Excipients"
* #32P50 "Product name dosage form"
* #32P51 "Product Specification"
* #32P52 "Product Analytical Procedures"
* #32P53 "Product Validation of Analytical Procedures"
* #32P54 "Product Batch Analyses"
* #32P55 "Product Characterisation of Impurities"
* #32P56 "Product Justification of Specifications"
* #32P60 "Product Reference Standards or Materials"
* #32P70 "Product Container Closure System"
* #32P80 "Product Stability"
* #32P81 "Product Stability Summary and Conclusion"
* #32P82 "Product Postapproval Stability Protocol and Stability Commitment"
* #32P83 "Product Stability Data"
* #SP4151 "Quality Specification"
* #SP4454 "Batch Analyses"
* #SP7383 "Stability Data"
* #SP7181 "Stability Summary and Conclusion"

//ValueSet: PqcmcChemicalStructureDataFileOriginTerminology
//Id: pqcmc-chemical-structure-datafile-origin-terminology
//Title: "Chemical Structure Datafile Origin Terminology"
//Description: "Terminology used to qualify the information pertaining to chemical structure data file origins in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
//* $NCIT#C16275 "Calculated"
//* $NCIT#C133995 "Experimental"

ValueSet: PqcmcQualitySpecificationSectionTypes
Id: cmc-specification-types-vs
Title: "Specification Type Terminology"
Description: "Local value set of all codes in Specification Type codes"
* ^experimental = false
* ^status = #draft
* $SectionTypes#32P51 "Product Specification"
* $SectionTypes#32S41 "Substance Specification"
* $SectionTypes#32P40 "Product Control of Excipients"

ValueSet: PqcmcChemicalStructureDataFileTypeTerminology
Id: pqcmc-chemical-structure-datafile-type-terminology
Title: "Chemical Structure Data File Type Terminology"
Description: "Terminology used to qualify the information pertaining to chemical structure data file types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C54683 "InChI File (small molecule)"
* $NCIT#C133997 "mmCIF (large molecules)"
* $NCIT#C133910 "MOLFILE"
* $NCIT#C49039 "PDB"
* $NCIT#C133996 "SDF"
* $NCIT#C54684 "SMILES"
* $NCIT#C85435 "SVG"

ValueSet: PqcmcClosureTypeTerminology
Id: pqcmc-closure-type-terminology
Title: "Closure Type Terminology"
Description: "Terminology used to qualify the information pertaining to closure types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft

* $NCIT#C96113 "Child-resistant, Metal"
* $NCIT#C96114 "Child-resistant, Plastic"
* $NCIT#C96115 "Continuous Thread, Metal"
* $NCIT#C96116 "Continuous Thread, Plastic"
* $NCIT#C96117 "Tamper-evident, Metal"
* $NCIT#C96118 "Tamper-evident, Plastic"
* $NCIT#C96119 "Vacuum, Metal"
* $NCIT#C96120 "Tamper-evident, Composite"
* $NCIT#C96121 "Vacuum, Plastic"
* $NCIT#C96122 "Vacuum, Composite"
* $NCIT#C96123 "Press-on/twist-off, Metal"
* $NCIT#C96124 "Press-on, Composite"
* $NCIT#C96125 "Crown, Metal"
* $NCIT#C96126 "Lug, Metal"
* $NCIT#C96127 "Roll-on, Metal"
* $NCIT#C96128 "Flip-Top (Dispensing), Plastic"
* $NCIT#C96129 "Hinged (Dispensing), Plastic"
* $NCIT#C96130 "Linerless, Plastic"
* $NCIT#C96131 "Pump (Dispensing), Plastic"
* $NCIT#C96132 "Push-pull (Dispensing), Plastic"
* $NCIT#C96133 "Snap-on Cap, Plastic"
* $NCIT#C96134 "Snip-tip (Dispensing), Plastic"
* $NCIT#C96135 "Toggle-swing (Dispensing), Plastic"
* $NCIT#C96136 "Trigger Sprayer (Dispensing), Plastic"
* $NCIT#C96137 "Twist Open/Close (Dispensing), Plastic"
* $NCIT#C96138 "Valved (Dispensing), Plastic"
* $NCIT#C96139 "Stopper"
* $NCIT#C96140 "Tie"

ValueSet: PqcmcConformanceCriteriaTerminology
Id: pqcmc-conformance-to-criteria-terminology
Title: "Conformance to Criteria Terminology"
Description: "Terminology used to qualify the information pertaining to conformance to criteria in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
* ^experimental = false
* ^status = #draft
* $NCIT#C80262 "Conforms"
* $NCIT#C133998 "Does not conform"

ValueSet: PqcmcContainerTypeTerminology
Id: pqcmc-container-type-terminology
Title: "Container Type Terminology"
Description: "Terminology used to qualify the information pertaining to container types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft

* $NCIT#C43165 "AMPULE"
* $NCIT#C43166 "APPLICATOR"
* $NCIT#C43167 "BAG"
* $NCIT#C43168 "BLISTER PACK"
* $NCIT#C43169 "BOTTLE"
* $NCIT#C43170 "BOTTLE, DISPENSING"
* $NCIT#C43171 "BOTTLE, DROPPER"
* $NCIT#C43172 "BOTTLE, GLASS"
* $NCIT#C43173 "BOTTLE, PLASTIC"
* $NCIT#C43174 "BOTTLE, PUMP"
* $NCIT#C43175 "BOTTLE, SPRAY"
* $NCIT#C43176 "BOTTLE, UNIT-DOSE"
* $NCIT#C43177 "BOTTLE, WITH APPLICATOR"
* $NCIT#C43178 "BOX"
* $NCIT#C43179 "BOX, UNIT-DOSE"
* $NCIT#C43180 "CAN"
* $NCIT#C43181 "CANISTER"
* $NCIT#C96143 "Canisters, lined"
* $NCIT#C92708 "CAPSULE"
* $NCIT#C43182 "CARTON"
* $NCIT#C43183 "CARTRIDGE"
* $NCIT#C43184 "CASE"
* $NCIT#C43185 "CELLO PACK"
* $NCIT#C43186 "CONTAINER"
* $NCIT#C43187 "CUP"
* $NCIT#C43188 "CUP, UNIT-DOSE"
* $NCIT#C43189 "CYLINDER"
* $NCIT#C43190 "DEWAR"
* $NCIT#C43191 "DIALPACK"
* $NCIT#C96141 "Dish, Petri"
* $NCIT#C43192 "DOSE PACK"
* $NCIT#C43193 "DRUM"
* $NCIT#C96144 "Flask"
* $NCIT#C79135 "FLEXIBLE INTERMEDIATE BULK CONTAINER"
* $NCIT#C16738 "INHALER"
* $NCIT#C43194 "INHALER, REFILL"
* $NCIT#C43195 "JAR"
* $NCIT#C43196 "JUG"
* $NCIT#C43197 "KIT"
* $NCIT#C48626 "NOT STATED"
* $NCIT#C43233 "PACKAGE"
* $NCIT#C43198 "PACKAGE, COMBINATION"
* $NCIT#C43199 "PACKET"
* $NCIT#C79136 "PAIL"
* $NCIT#C82332 "PATCH"
* $NCIT#C96142 "Plate, Microwell"
* $NCIT#C43200 "POUCH"
* $NCIT#C43201 "SUPERSACK"
* $NCIT#C43202 "SYRINGE"
* $NCIT#C43203 "SYRINGE, GLASS"
* $NCIT#C43204 "SYRINGE, PLASTIC"
* $NCIT#C43205 "TABMINDER"
* $NCIT#C43206 "TANK"
* $NCIT#C53438 "TRAY"
* $NCIT#C42794 "TUBE"
* $NCIT#C43207 "TUBE, WITH APPLICATOR"
* $NCIT#C43226 "VIAL"
* $NCIT#C43208 "VIAL, DISPENSING"
* $NCIT#C43209 "VIAL, GLASS"
* $NCIT#C43210 "VIAL, MULTI-DOSE"
* $NCIT#C43211 "VIAL, PATENT DELIVERY SYSTEM"
* $NCIT#C43212 "VIAL, PHARMACY BULK PACKAGE"
* $NCIT#C43213 "VIAL, PIGGYBACK"
* $NCIT#C43214 "VIAL, PLASTIC"
* $NCIT#C43215 "VIAL, SINGLE-DOSE"
* $NCIT#C43216 "VIAL, SINGLE-USE"

//ValueSet:alueSet: PqcmcCoPackagedIndicatorTerminology
//Id: pqcmc-copackaged-indicator-terminology
//Title: "Co-packaged Indicator Terminology"
//Description: "Terminology used to qualify the information pertaining to copackaged indicators in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
//* $NCIT#C49487 "No"
//* $NCIT#C49488 "Yes"

ValueSet: PqcmcDrugProductComponentFunctionCategoryTerminology
Id: pqcmc-drug-product-component-function-category-terminology
Title: "Drug Product Component Function Category Terminology"
Description: "Terminology used to qualify the information pertaining to drug product component function categories in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft

* $NCIT#C82533 "Active Ingredient"
* $NCIT#C2140 "Adjuvant"
* $NCIT#C42637 "Inactive Ingredient"

//ValueSet: PqcmcDrugSubstanceProductIndicatorTerminology
//Id: pqcmc-drug-substance-product-indicator-terminology
//Title: "Drug substance Product Indicator Terminology"
//Description: "Terminology used to qualify the information pertaining to drug substance product indicators in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
//* $NCIT#C1909 "Product"
//* $NCIT#C45306 "SUBSTANCE"

ValueSet: PqcmcExcipientFunctionTerminology
Id: pqcmc-excipient-function-terminology
Title: "Excipient Function Terminology"
Description: "Terminology used to qualify the information pertaining to excipient functions in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft

* $NCIT#C176637 "Absorption modifier"
* $NCIT#C89528 "Adhesive"
* $NCIT#C176642 "Adsorbent"
* $NCIT#C176643 "Air displacement"
* $NCIT#C275 "Antioxidant"
* $NCIT#C42647 "Binder"
* $NCIT#C70815 "Buffering agent"
* $NCIT#C176644 "Bulking agent"
* $NCIT#C176645 "Carrier"
* $NCIT#C360 "Chelating agent"
* $NCIT#C42656 "Coloring agent"
* $NCIT#C176646 "Complexing agent"
* $NCIT#C53306 "Cryoprotectant"
* $NCIT#C176647 "Denaturant"
* $NCIT#C42648 "Disintegrant"
* $NCIT#C42662 "Dispersing agent"
* $NCIT#C927 "Vehicle"
* $NCIT#C176638 "Effervescent agent"
* $NCIT#C176632 "Emollient"
* $NCIT#C73477 "Emulsifying Excipient"
* $NCIT#C176633 "Emulsion stabilizing agent"
* $NCIT#C42650 "Filler"
* $NCIT#C176648 "Film coating agent"
* $NCIT#C176634 "Foam stabilizing agent"
* $NCIT#C176649 "Free radical scavenger"
* $NCIT#C176650 "Gelling agent"
* $NCIT#C42654 "Anticaking agent"
* $NCIT#C176651 "Humectant"
* $NCIT#C42653 "Lubricant"
* $NCIT#C176652 "Lyophilization aid"
* $NCIT#C176653 "Matrix-forming agent"
* $NCIT#C176654 "Microencapsulating agent"
* $NCIT#C176655 "Ointment base"
* $NCIT#C176656 "Opacifier"
* $NCIT#C176660 "Polymers for ophthalmic use"
* $NCIT#C176635 "Organoleptic agent"
* $NCIT#C176657 "Osmotic agent"
* $NCIT#C55826 "Plasticizer"
* $NCIT#C176659 "Polishing agent"
* $NCIT#C42659 "Preservative"
* $NCIT#C42657 "Ink"
* $NCIT#C176661 "Propellant"
* $NCIT#C176639 "Reducing agent"
* $NCIT#C176662 "Release modifying agent"
* $NCIT#C176640 "Solubilizing agent"
* $NCIT#C45790 "Solvent"
* $NCIT#C176636 "Stabilizer"
* $NCIT#C176663 "Suppository base"
* $NCIT#C42739 "Surfactant"
* $NCIT#C42660 "Suspending agent"
* $NCIT#C176641 "Tonicity agent"
* $NCIT#C176664 "Transdermal delivery component"
* $NCIT#C176665 "Transfer ligand"
* $NCIT#C176666 "Viscosity modifier"
* $NCIT#C176667 "Water-repelling agent"
* $NCIT#C176668 "Wetting agent"
* $NCIT#C176658 "pH modifier"

ValueSet: PqcmcQualityBenchmarkTerminology
Id: pqcmc-quality-benchmark-terminology
Title: "Quality Benchmark Terminology"
Description: "Terminology used to qualify the information pertaining to quality benchmarks in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C176793 "BP"
* $NCIT#C134009 "Company Standard"
* $NCIT#C134007 "EP"
* $NCIT#C134008 "JP"
* $NCIT#C134006 "USP-NF"

ValueSet: PqcmcSourceTypeTerminology
Id: pqcmc-source-type-terminology
Title: "Source Type Terminology"
Description: "Terminology used to qualify the information pertaining to source types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C14182 "Animal"
* $NCIT#C18634 "Animal Sources"
* $NCIT#C48807 "Chemical"
* $NCIT#C14225 "Human"
* $NCIT#C14227 "Insect"
* $NCIT#C14329 "Microbial"
* $NCIT#C14258 "Plant"

ValueSet: PqcmcSpecificationStatusTerminology
Id: pqcmc-specification-status-terminology
Title: "Specification Status Terminology"
Description: "Terminology used to qualify the information pertaining to specification statuses in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C25425 "Approved"
* $NCIT#C48660 "Not Applicable"
* $NCIT#C134011 "Not Approved"
* $NCIT#C134012 "Reported in a CBE or AR"
* $NCIT#C134010 "Tentatively Approved"

ValueSet: PqcmcSpecificationTypeTerminology
Id: pqcmc-specification-type-terminology
Title: "Specification Type Terminology"
Description: "Terminology used to qualify the information pertaining to specification types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C134021 "Drug Product"
* $NCIT#C134022 "Drug Substance"
* $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents"

ValueSet: PqcmcOrgIdentifierTypeTerminology
Id: pqcmc-org-identifier-type-terminology
Title: "Organization-Site Identifier Terminology"
Description: "Terminology used to qualify the information pertaining to the sponsor or testing site unique identifier types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C134005 "CFN"
* $NCIT#C134003 "DUNS"
* $NCIT#C134004 "FEI"
* $NCIT#C17998 "Unknown"

ValueSet: PqcmcStrengthTypeTerminology
Id: pqcmc-strength-type-terminology
Title: "Strength Type Terminology"
Description: "Terminology used to qualify the information pertaining to strength types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C45420 "Activity"
* $NCIT#C168628 "Mass"

ValueSet: PqcmcTestMethodOriginTerminology
Id: pqcmc-test-method-origin-terminology
Title: "Test Method Origin Terminology"
Description: "Terminology used to qualify the information pertaining to test method origins in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C96164 "CFR"
* $NCIT#C96102 "Compendial"
* $NCIT#C96103 "Proprietary"

ValueSet: PqcmcTestUsageTerminology
Id: pqcmc-test-usage-terminology
Title: "Test Usage Terminology"
Description: "Terminology used to qualify the information pertaining to test usage in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C134029 "Release"
* $NCIT#C134030 "Stability"

ValueSet: SplPharmaceuticalDosageFormTerminology
Id: spl-pharmaceutical-dosage-form-terminology
Title: "Pharmaceutical Dosage Form Terminology"
Description: "Terminology used for representation of the information on pharmaceutical product dosage form in the framework of the SPL documents."

* ^experimental = false
* ^status = #draft

* $NCIT#C100103 "CELLULAR SHEET"
* $NCIT#C113106 "INJECTABLE FOAM"
* $NCIT#C124794 "TABLET, CHEWABLE, EXTENDED RELEASE"
* $NCIT#C134876 "Chewable Gel"
* $NCIT#C147579 "Tablet with Sensor"
* $NCIT#C17423 "DRUG DELIVERY SYSTEM"
* $NCIT#C25158 "CAPSULE"
* $NCIT#C25394 "PILL"
* $NCIT#C28944 "CREAM"
* $NCIT#C29167 "LOTION"
* $NCIT#C29269 "MOUTHWASH"
* $NCIT#C42679 "DOUCHE"
* $NCIT#C42763 "DRESSING"
* $NCIT#C42887 "AEROSOL"
* $NCIT#C42888 "AEROSOL, FOAM"
* $NCIT#C42889 "AEROSOL, SPRAY"
* $NCIT#C42890 "BEAD"
* $NCIT#C42892 "BAR, CHEWABLE"
* $NCIT#C42893 "TABLET, CHEWABLE"
* $NCIT#C42894 "GUM, CHEWING"
* $NCIT#C42895 "CAPSULE, COATED"
* $NCIT#C42896 "CAPSULE, COATED PELLETS"
* $NCIT#C42897 "TABLET, COATED"
* $NCIT#C42898 "SOLUTION, CONCENTRATE"
* $NCIT#C42899 "INJECTION, SOLUTION, CONCENTRATE"
* $NCIT#C42901 "CRYSTAL"
* $NCIT#C42902 "CAPSULE, DELAYED RELEASE"
* $NCIT#C42903 "GRANULE, DELAYED RELEASE"
* $NCIT#C42904 "CAPSULE, DELAYED RELEASE PELLETS"
* $NCIT#C42905 "TABLET, DELAYED RELEASE"
* $NCIT#C42906 "GEL, DENTIFRICE"
* $NCIT#C42907 "PASTE, DENTIFRICE"
* $NCIT#C42908 "POWDER, DENTIFRICE"
* $NCIT#C42909 "GRANULE, EFFERVESCENT"
* $NCIT#C42910 "TABLET, EFFERVESCENT"
* $NCIT#C42911 "PATCH, EXTENDED RELEASE, ELECTRICALLY CONTROLLED"
* $NCIT#C42912 "ELIXIR"
* $NCIT#C42913 "EMULSION"
* $NCIT#C42914 "INJECTION, EMULSION"
* $NCIT#C42915 "ENEMA"
* $NCIT#C42916 "CAPSULE, EXTENDED RELEASE"
* $NCIT#C42917 "CAPSULE, COATED, EXTENDED RELEASE"
* $NCIT#C42918 "PELLETS, COATED, EXTENDED RELEASE"
* $NCIT#C42920 "FILM, EXTENDED RELEASE"
* $NCIT#C42921 "GRANULE, FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42922 "INSERT, EXTENDED RELEASE"
* $NCIT#C42923 "PATCH, EXTENDED RELEASE"
* $NCIT#C42924 "SUPPOSITORY, EXTENDED RELEASE"
* $NCIT#C42925 "SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42926 "INJECTION, SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42927 "TABLET, EXTENDED RELEASE"
* $NCIT#C42928 "CAPSULE, FILM COATED, EXTENDED RELEASE"
* $NCIT#C42929 "EXTRACT"
* $NCIT#C42930 "TABLET, FILM COATED, EXTENDED RELEASE"
* $NCIT#C42931 "TABLET, FILM COATED"
* $NCIT#C42932 "FILM"
* $NCIT#C42933 "GAS"
* $NCIT#C42934 "GEL"
* $NCIT#C42935 "SOLUTION, GEL FORMING, EXTENDED RELEASE"
* $NCIT#C42936 "CAPSULE, GELATIN COATED"
* $NCIT#C42937 "GLOBULE"
* $NCIT#C42938 "GRANULE"
* $NCIT#C42939 "GRANULE, FOR SOLUTION"
* $NCIT#C42940 "GRANULE, FOR SUSPENSION"
* $NCIT#C42942 "IMPLANT"
* $NCIT#C42943 "PELLET, IMPLANTABLE"
* $NCIT#C42944 "INHALANT"
* $NCIT#C42945 "INJECTION, SOLUTION"
* $NCIT#C42946 "INJECTION"
* $NCIT#C42947 "IRRIGANT"
* $NCIT#C42948 "JELLY"
* $NCIT#C42949 "LINIMENT"
* $NCIT#C42950 "INJECTION, LIPID COMPLEX"
* $NCIT#C42951 "INJECTION, SUSPENSION, LIPOSOMAL"
* $NCIT#C42952 "LIPSTICK"
* $NCIT#C42953 "LIQUID"
* $NCIT#C42954 "CAPSULE, LIQUID FILLED"
* $NCIT#C42955 "LOZENGE"
* $NCIT#C42956 "INJECTION, POWDER, LYOPHILIZED, FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42957 "INJECTION, POWDER, LYOPHILIZED, FOR SOLUTION"
* $NCIT#C42958 "INJECTION, POWDER, LYOPHILIZED, FOR SUSPENSION"
* $NCIT#C42959 "INJECTION, POWDER, LYOPHILIZED, FOR LIPOSOMAL SUSPENSION"
* $NCIT#C42960 "AEROSOL, METERED"
* $NCIT#C42961 "POWDER, METERED"
* $NCIT#C42962 "SPRAY, METERED"
* $NCIT#C42963 "TABLET, MULTILAYER, EXTENDED RELEASE"
* $NCIT#C42964 "TABLET, MULTILAYER"
* $NCIT#C42965 "OIL"
* $NCIT#C42966 "OINTMENT"
* $NCIT#C42967 "PASTE"
* $NCIT#C42968 "PATCH"
* $NCIT#C42969 "PELLET"
* $NCIT#C42970 "PLASTER"
* $NCIT#C42971 "AEROSOL, POWDER"
* $NCIT#C42972 "POWDER"
* $NCIT#C42973 "POWDER, FOR SOLUTION"
* $NCIT#C42974 "INJECTION, POWDER, FOR SOLUTION"
* $NCIT#C42975 "POWDER, FOR SUSPENSION"
* $NCIT#C42976 "INJECTION, POWDER, FOR SUSPENSION"
* $NCIT#C42977 "INJECTION, POWDER, FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42979 "RINSE"
* $NCIT#C42980 "SALVE"
* $NCIT#C42981 "SHAMPOO"
* $NCIT#C42982 "SHAMPOO, SUSPENSION"
* $NCIT#C42983 "SOAP"
* $NCIT#C42984 "FILM, SOLUBLE"
* $NCIT#C42985 "TABLET, SOLUBLE"
* $NCIT#C42986 "SOLUTION"
* $NCIT#C42987 "SOLUTION, FOR SLUSH"
* $NCIT#C42988 "INJECTION, SUSPENSION, SONICATED"
* $NCIT#C42989 "SPRAY"
* $NCIT#C42990 "SPRAY, SUSPENSION"
* $NCIT#C42991 "STICK"
* $NCIT#C42992 "TABLET, SUGAR COATED"
* $NCIT#C42993 "SUPPOSITORY"
* $NCIT#C42994 "SUSPENSION"
* $NCIT#C42995 "INJECTION, SUSPENSION"
* $NCIT#C42996 "SYRUP"
* $NCIT#C42997 "TABLET, DELAYED RELEASE PARTICLES"
* $NCIT#C42998 "TABLET"
* $NCIT#C42999 "TABLET, ORALLY DISINTEGRATING"
* $NCIT#C43000 "TINCTURE"
* $NCIT#C43001 "TROCHE"
* $NCIT#C43003 "WAFER"
* $NCIT#C43525 "DISC"
* $NCIT#C47892 "TAMPON"
* $NCIT#C47897 "TAPE"
* $NCIT#C47898 "SWAB"
* $NCIT#C47912 "SPONGE"
* $NCIT#C47913 "POULTICE"
* $NCIT#C47914 "STRIP"
* $NCIT#C47915 "INTRAUTERINE DEVICE"
* $NCIT#C47916 "KIT"
* $NCIT#C48624 "NOT APPLICABLE"
* $NCIT#C60884 "CLOTH"
* $NCIT#C60891 "CONCENTRATE"
* $NCIT#C60897 "CREAM, AUGMENTED"
* $NCIT#C60926 "FIBER, EXTENDED RELEASE"
* $NCIT#C60927 "FOR SOLUTION"
* $NCIT#C60928 "FOR SUSPENSION"
* $NCIT#C60929 "FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C60930 "GEL, METERED"
* $NCIT#C60931 "INJECTABLE, LIPOSOMAL"
* $NCIT#C60933 "INSERT"
* $NCIT#C60934 "LIQUID, EXTENDED RELEASE"
* $NCIT#C60957 "LOTION, AUGMENTED"
* $NCIT#C60958 "LOTION/SHAMPOO"
* $NCIT#C60984 "OINTMENT, AUGMENTED"
* $NCIT#C60985 "PASTILLE"
* $NCIT#C60988 "RING"
* $NCIT#C60992 "SOLUTION/DROPS"
* $NCIT#C60994 "SOLUTION, GEL FORMING/DROPS"
* $NCIT#C60995 "SUSPENSION/DROPS"
* $NCIT#C60997 "TABLET, COATED PARTICLES"
* $NCIT#C61004 "TABLET, FOR SOLUTION"
* $NCIT#C61005 "TABLET, FOR SUSPENSION"
* $NCIT#C61006 "TABLET, ORALLY DISINTEGRATING, DELAYED RELEASE"
* $NCIT#C64884 "POWDER, EFFERVESCENT"
* $NCIT#C64984 "INTRACAMERAL"
* $NCIT#C69067 "GRANULE, EXTENDED RELEASE"
* $NCIT#C87536 "SMOKE STICK"
* $NCIT#C87537 "SMOKE PAPER"
* $NCIT#C87538 "INTRARUMINAL DEVICE, EXTENDED RELEASE"
* $NCIT#C87539 "TAG"
* $NCIT#C87540 "GRANULE FOR SUSPENSION, DELAYED RELEASE"
* $NCIT#C87541 "POWDER, LYOPHILIZED"
* $NCIT#C87542 "PENDANT"

ValueSet: PqcmcUnitsMeasure
Id: pqcmc-units-of-measure
Title: "Units Of Measure Terminology"
Description: "Terminology used to qualify the information pertaining to units of measure in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents.
Note: Includes SPL Unit of Presentation Terminology"

* ^experimental = false
* ^status = #draft

* $UCUM#{actuation} "actuation"
* $UCUM#[Amb'a'1'U] "Amb a 1 units"
* $UCUM#[arb'U] "arbitrary unit"
* $UCUM#[Btu] "British thermal unit"
* $UCUM#{Can} "Can"
* $UCUM#cm "centimeter"
* $UCUM#cP "centiPoise"
* $UCUM#[CFU] "colony forming unit"
* $UCUM#m3 "cubic meter"
* $UCUM#d "day"
* $UCUM#Cel "degree Celsius"
* $UCUM#[degF] "degree Fahrenheit"
* $UCUM#deg "degree"
* $UCUM#[EU] "Ehrlich unit"
* $UCUM#U "enzyme Unit"
* $UCUM#[gal_us] "Queen Anne's wine gallon"
* $UCUM#g "gram"
* $UCUM#h "hour"
* $UCUM#[in_i] "inch (international)"
* $UCUM#[iU] "international unit"
* $UCUM#K "Kelvin"
* $UCUM#{kDa} "kiloDalton"
* $UCUM#kg "kilogram"
* $UCUM#kgf "kilogram-force"
* $UCUM#[lbf_av] "pound force"
* $UCUM#L "liter"
* $UCUM#m "meter"
* $UCUM#ug "microgram"
* $UCUM#ug/{actuation} "micrograms per actuation"
* $UCUM#uL "microliter"
* $UCUM#umol "micromole"
* $UCUM#um "micrometer"
* $UCUM#umho "micromho"
* $UCUM#mg "milligram"
* $UCUM#mL "milliliter"
* $UCUM#mm "millimeter"
* $UCUM#mmol "millimole"
* $UCUM#mosm "milliosmole"
* $UCUM#mS "milliSiemens"
* $UCUM#min "minute"
* $UCUM#mol "mole"
* $UCUM#mo "month"
* $UCUM#ng "nanogram"
* $UCUM#nm "nanometer"
* $UCUM#nmol "nanomole"
* $UCUM#N "Newton"
* $UCUM#1 "1*"
* $UCUM#[oz_av] "ounce (US and British)"
* $UCUM#[ppb] "part per billion"
* $UCUM#[ppm] "part per million"
* $UCUM#[pptr] "part per trillion"
* $UCUM#[ppth] "parts per thousand"
* $UCUM#{tot} "particles total count"
* $UCUM#pg "picogram"
* $UCUM#pmol "picomole"
* $UCUM#[pt_us] "pint"
* $UCUM#[lb_av] "pound (US and British)"
* $UCUM#[psi] "pound per square inch"
* $UCUM#[qt_us] "quart"
* $UCUM#rad "radian"
* $UCUM#s "second"
* $UCUM#m2 "square meter"
* $UCUM#{tbl} "tablets"
* $UCUM#u "unified atomic mass unit"
* $UCUM#(m2.d) "meter squared in 24 hours"
* $UCUM#{Vial} "Vial"
* $UCUM#wk "week"
* $UCUM#a "year"
* $UCUM#[pH] "[pH]"
* $UCUM#[dqt_us] "dry quart"
* $UCUM#[dpt_us] "dry pint"
* $UCUM#mho "mho"
* $UCUM#ms "millisecond"
* $UCUM#S "Siemens"
* $UCUM#[NTU] "Nephelometric Turbidity Unit"
* $UCUM#[FNU] "Formazin Nephelometric Unit"
* $UCUM#{JTU} "Jackson Turbidity Unit"
* $UCUM#mg% "milligram per deciliter"
* $UCUM#%{WeightToWeight} "percent WeightToWeight"  
* $UCUM#%{WeightToVolume} "percent WeightToVolume"
* $UCUM#% "percent"
* $UCUM#%{VolumeToVolume} "percent VolumeToVolume"

ValueSet: SplDrugRouteofAdministrationTerminology
Id: spl-drug-route-of-administration-terminology
Title: "Drug Route Of Administration Terminology"
Description: "Terminology used for representation of the information on pharmaceutical product route of administration in the framework of the Structured Product Labeling documents."

* ^experimental = false
* ^status = #draft
* $NCIT#C132737 "Intracanalicular"
* $NCIT#C28161 "INTRAMUSCULAR"
* $NCIT#C38192 "AURICULAR (OTIC)"
* $NCIT#C38193 "BUCCAL"
* $NCIT#C38194 "CONJUNCTIVAL"
* $NCIT#C38197 "DENTAL"
* $NCIT#C38198 "SOFT TISSUE"
* $NCIT#C38200 "HEMODIALYSIS"
* $NCIT#C38203 "IONTOPHORESIS"
* $NCIT#C38205 "ENDOCERVICAL"
* $NCIT#C38206 "ENDOSINUSIAL"
* $NCIT#C38207 "INTRATHORACIC"
* $NCIT#C38208 "ENDOTRACHEAL"
* $NCIT#C38209 "ENTERAL"
* $NCIT#C38210 "EPIDURAL"
* $NCIT#C38211 "EXTRA-AMNIOTIC"
* $NCIT#C38212 "EXTRACORPOREAL"
* $NCIT#C38215 "INFILTRATION"
* $NCIT#C38216 "RESPIRATORY (INHALATION)"
* $NCIT#C38217 "INTRACORONAL, DENTAL"
* $NCIT#C38218 "INTRACORONARY"
* $NCIT#C38219 "INTERSTITIAL"
* $NCIT#C38220 "INTRA-ABDOMINAL"
* $NCIT#C38221 "INTRA-AMNIOTIC"
* $NCIT#C38222 "INTRA-ARTERIAL"
* $NCIT#C38223 "INTRA-ARTICULAR"
* $NCIT#C38224 "INTRABILIARY"
* $NCIT#C38225 "INTRABRONCHIAL"
* $NCIT#C38226 "INTRABURSAL"
* $NCIT#C38227 "INTRACARDIAC"
* $NCIT#C38228 "INTRACARTILAGINOUS"
* $NCIT#C38229 "INTRACAUDAL"
* $NCIT#C38230 "INTRACAVERNOUS"
* $NCIT#C38231 "INTRACAVITARY"
* $NCIT#C38232 "INTRACEREBRAL"
* $NCIT#C38233 "INTRACISTERNAL"
* $NCIT#C38234 "INTRACORNEAL"
* $NCIT#C38235 "INTRACORPORUS CAVERNOSUM"
* $NCIT#C38236 "INTRACRANIAL"
* $NCIT#C38238 "INTRADERMAL"
* $NCIT#C38239 "INTRADISCAL"
* $NCIT#C38240 "INTRADUCTAL"
* $NCIT#C38241 "INTRADUODENAL"
* $NCIT#C38242 "INTRADURAL"
* $NCIT#C38243 "INTRAEPIDERMAL"
* $NCIT#C38245 "INTRAESOPHAGEAL"
* $NCIT#C38246 "INTRAGASTRIC"
* $NCIT#C38247 "INTRAGINGIVAL"
* $NCIT#C38248 "INTRAHEPATIC"
* $NCIT#C38249 "INTRAILEAL"
* $NCIT#C38250 "INTRALESIONAL"
* $NCIT#C38251 "INTRALUMINAL"
* $NCIT#C38252 "INTRALYMPHATIC"
* $NCIT#C38253 "INTRAMEDULLARY"
* $NCIT#C38254 "INTRAMENINGEAL"
* $NCIT#C38255 "INTRAOCULAR"
* $NCIT#C38256 "INTRAOVARIAN"
* $NCIT#C38257 "INTRAPERICARDIAL"
* $NCIT#C38258 "INTRAPERITONEAL"
* $NCIT#C38259 "INTRAPLEURAL"
* $NCIT#C38260 "INTRAPROSTATIC"
* $NCIT#C38261 "INTRAPULMONARY"
* $NCIT#C38262 "INTRASINAL"
* $NCIT#C38263 "INTRASPINAL"
* $NCIT#C38264 "INTRASYNOVIAL"
* $NCIT#C38265 "INTRATENDINOUS"
* $NCIT#C38266 "INTRATESTICULAR"
* $NCIT#C38267 "INTRATHECAL"
* $NCIT#C38268 "INTRATUBULAR"
* $NCIT#C38269 "INTRATUMOR"
* $NCIT#C38270 "INTRATYMPANIC"
* $NCIT#C38271 "URETHRAL"
* $NCIT#C38272 "INTRAUTERINE"
* $NCIT#C38273 "INTRAVASCULAR"
* $NCIT#C38274 "INTRAVENOUS BOLUS"
* $NCIT#C38276 "INTRAVENOUS"
* $NCIT#C38277 "INTRAVENTRICULAR"
* $NCIT#C38278 "INTRAVESICAL"
* $NCIT#C38279 "INTRAVENOUS DRIP"
* $NCIT#C38280 "INTRAVITREAL"
* $NCIT#C38281 "IRRIGATION"
* $NCIT#C38282 "LARYNGEAL"
* $NCIT#C38283 "TRANSMUCOSAL"
* $NCIT#C38284 "NASAL"
* $NCIT#C38285 "NASOGASTRIC"
* $NCIT#C38286 "OCCLUSIVE DRESSING TECHNIQUE"
* $NCIT#C38287 "OPHTHALMIC"
* $NCIT#C38288 "ORAL"
* $NCIT#C38289 "OROPHARYNGEAL"
* $NCIT#C38290 "OTHER"
* $NCIT#C38291 "PARENTERAL"
* $NCIT#C38292 "PERIARTICULAR"
* $NCIT#C38293 "PERINEURAL"
* $NCIT#C38294 "PERIODONTAL"
* $NCIT#C38295 "RECTAL"
* $NCIT#C38296 "RETROBULBAR"
* $NCIT#C38297 "SUBARACHNOID"
* $NCIT#C38298 "SUBCONJUNCTIVAL"
* $NCIT#C38299 "SUBCUTANEOUS"
* $NCIT#C38300 "SUBLINGUAL"
* $NCIT#C38301 "SUBMUCOSAL"
* $NCIT#C38304 "TOPICAL"
* $NCIT#C38305 "TRANSDERMAL"
* $NCIT#C38307 "TRANSPLACENTAL"
* $NCIT#C38308 "TRANSTRACHEAL"
* $NCIT#C38309 "TRANSTYMPANIC"
* $NCIT#C38310 "UNASSIGNED"
* $NCIT#C38311 "UNKNOWN"
* $NCIT#C38312 "URETERAL"
* $NCIT#C38313 "VAGINAL"
* $NCIT#C38633 "ELECTRO-OSMOSIS"
* $NCIT#C38675 "CUTANEOUS"
* $NCIT#C38676 "PERCUTANEOUS"
* $NCIT#C38677 "PERIDURAL"
* $NCIT#C48623 "NOT APPLICABLE"
* $NCIT#C65103 "SUBGINGIVAL"
* $NCIT#C79137 "INTRAMAMMARY"
* $NCIT#C79138 "INTRALINGUAL"
* $NCIT#C79139 "INTRARUMINAL"
* $NCIT#C79141 "INTRANODAL"
* $NCIT#C79142 "INTRAOMENTUM"
* $NCIT#C79143 "SUBRETINAL"
* $NCIT#C79144 "INTRAEPICARDIAL"
* $NCIT#C79145 "TRANSENDOCARDIAL"

ValueSet: PqcmcManufacturedDoseFormTerminology
Id: pqcmc-manufactured-dose-form-terminology
Title: "Manufactured Dose Form Terminology"
Description: "Terminology used to qualify the information pertaining to the manufactured dose form."
* ^experimental = false
* ^status = #draft
* $NCIT#C48623 "NOT APPLICABLE"
* $NCIT#C154554 "Lozenge Dosage Form Category"
* $NCIT#C154433 "Capsule Dose Form Category"
* $NCIT#C154605 "Tablet Dosage Form Category"

ValueSet: PqcmcGraphicalFileTypes
Id: pqcmc-graphical-file-types
Title: "Graphical File Types"
Description: "The acceptable file types that can be used in graphical files"
* ^experimental = false
* ^status = #draft
* urn:ietf:bcp:13#image/jpeg
* urn:ietf:bcp:13#image/png
* urn:ietf:bcp:13#image/svg
* urn:ietf:bcp:13#image/gif
* urn:ietf:bcp:13#image/tiff

ValueSet: PqcmcAnalyticalInstrumentDataTypes
Id: pqcmc-analytical-instrument-data-types
Title: "Analytical Instrument Data File Types"
Description: "The acceptable file types that can be used in Analytical Instrument Data Files"
* ^experimental = false
* ^status = #draft
* urn:ietf:bcp:13#application/x-jcamp-dx "JCAMP Spectroscopic Data (.jdx, .dx)"

ValueSet: PqcmcStructureDataTypes
Id: pqcmc-structure-data-types
Title: "Structure Data Types"
Description: "The acceptable file types that can be used in Structure Data Files (MOL,SDF,INCHI,etc)"
* ^experimental = false
* ^status = #draft
* urn:ietf:bcp:13#application/x-mdl-sdfile "Structure-Data File (.sdf)"
* urn:ietf:bcp:13#application/x-mdl-molfile "Molfile (.mol)"
* urn:ietf:bcp:13#application/x-cif "Crystallographic Information File (.cif)"
* urn:ietf:bcp:13#application/x-inchi "IUPAC International Chemical Identifier (.inchi)"

ValueSet: PqcmcPercentageUnits
Id: pqcmc-percentage-units
Title: "Percentage Units"
Description: "Units of Measure terminologies that represent the concept of a percentage"
* ^experimental = false
* ^status = #draft
* $UCUM#mg% "milligram per deciliter"
* $UCUM#%{WeightToWeight} "percent WeightToWeight"
* $UCUM#%{WeightToVolume} "percent WeightToVolume"
* $UCUM#% "percent"
* $UCUM#%{VolumeToVolume} "percent VolumeToVolume"

ValueSet: PqcmcNonPercentageUnits
Id: pqcmc-non-percentage-units
Title: "Non-Percentage Units"
Description: "Units of Measure terminologies that do not represent percentages"
* ^experimental = false
* ^status = #draft
* include codes from valueset PqcmcUnitsMeasure
* exclude codes from valueset PqcmcPercentageUnits