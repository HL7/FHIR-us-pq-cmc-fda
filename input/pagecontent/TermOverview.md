# Terminology (DRAFT)

The PQ-CMC controlled terminology has been developed by the FDA Drug Quality reviewers to enhance the structuring and standardization of ICH CTD Module 3 Quality content. The FDA-created terminology has been shared for public commentary via the Federal Register Notice(s) over the past several years. Feedback from those notices has been incorporated to refine the terminology, ensuring it is thoroughly vetted by CMC experts within the biopharmaceutical industry. PQ-CMC terminology establishes a foundational framework and value lists for structured CMC domains, allowing further extensions as new use cases and jurisdiction-specific requirements emerge. The controlled terminology is only applicable to the coded data elements, providing precise terminology binding for each coded entry. The terms *PQ-CMC*, *CMC*, and *Pharmaceutical Quality* are often used interchangeably.

The majority of the PQ-CMC terminology is registered in the US National Cancer Institute's (NCI) Enterprise Vocabulary Service (EVS) – NCI Thesaurus (NCIt). There are a few exceptions to this, and these are documented below.

## Terminology Registered in NCI Thesaurus (NCIt)

There are over 40 controlled terminology sets registered in NCIt for PQ-CMC. The terminology subset name corresponds closely with the name of the data element. Each value or term is assigned a unique "C" code, and these “C” codes are referenced in this IG. 

The latest PQ-CMC Terminology can be downloaded from the NCI EVS FTP site:  
 https://evs.nci.nih.gov/ftp1/FDA/PQCMC/

> Note: These terminology lists are evolving. As new terms are identified, they are registered in NCIt. The NCI EVS publishes their terminology lists monthly with clear documentation and change logs.

In HL7 FHIR, NCI Thesaurus has been registered as a valid external `CodeSystem` source to support this and other FHIR Implementation Guides. Some helpful links:

- https://terminology.hl7.org/codesystems.html
- https://terminology.hl7.org/CodeSystem-v3-nciThesaurus.html
- https://terminology.hl7.org/NamingSystem-v3-nciThesaurus.html

## Unit of Measure (UoM) Value List

The Unified Code for Units of Measure (UCUM) is a standardized system of codes for unambiguously representing units of measure. It is widely used in healthcare data exchange, including pharmaceutical and regulatory submissions. Consistent use of UCUM ensures interoperability and precision in scientific and clinical documentation.  
 [More on UCUM](https://ucum.org)

This IG is bound to the UCUM UoM value list as available in the HL7 FHIR Terminology server. PQ-CMC **does not** bind to NCIt “C” codes for unit of measures. The rationale is that UCUM is an industry-established standard and is independently published.

To ensure interoperability, HL7 FHIR requires all IGs to reference the UCUM UoM value list available on the HL7 Terminology server.

> The UoM values in the HL7 Terminology server exceed 10,000 terms. Below is a curated list of the most commonly used UCUM codes in this IG. The list will expand as other CMC domains are added.

| UCUM Code      | Unit Description                     |
|-|--|
| {actuation}    | actuation                            |
| [Amb'a'1'U]    | Amb a 1 units                        |
| [arb'U]        | arbitrary unit                       |
| [Btu]          | British thermal unit                 |
| {Can}          | Can                                  |
| cm             | centimeter                           |
| cP             | centiPoise                           |
| [CFU]          | colony forming unit                  |
| m3             | cubic meter                          |
| d              | day                                  |
| Cel            | degree Celsius                       |
| [degF]         | degree Fahrenheit                    |
| deg            | degree                               |
| [EU]           | Ehrlich unit                         |
| U              | enzyme Unit                          |
| [gal_us]       | Queen Anne's wine gallon             |
| g              | gram                                 |
| h              | hour                                 |
| [in_i]         | inch (international)                 |
| [iU]           | international unit                   |
| K              | Kelvin                               |
| {kDa}          | kiloDalton                           |
| kg             | kilogram                             |
| kgf            | kilogram-force                       |
| [lbf_av]       | pound force                          |
| L              | liter                                |
| m              | meter                                |
| ug             | microgram                            |
| ug/{actuation} | micrograms per actuation             |
| uL             | microliter                           |
| umol           | micromole                            |
| um             | micrometer                           |
| umho           | micromho                             |
| mg             | milligram                            |
| mL             | milliliter                           |
| mm             | millimeter                           |
| mmol           | millimole                            |
| mosm           | milliosmole                          |
| mS             | milliSiemens                         |
| min            | minute                               |
| mol            | mole                                 |
| mo             | month                                |
| ng             | nanogram                             |
| nm             | nanometer                            |
| nmol           | nanomole                             |
| N              | Newton                               |
| 1              | dimensionless quantity               |
| [oz_av]        | ounce (US and British)               |
| [ppb]          | part per billion                     |
| [ppm]          | part per million                     |
| [pptr]         | part per trillion                    |
| [ppth]         | parts per thousand                   |
| {tot}          | particles total count                |
| pg             | picogram                             |
| pmol           | picomole                             |
| [pt_us]        | pint                                 |
| [lb_av]        | pound (US and British)               |
| [psi]          | pound per square inch                |
| [qt_us]        | quart                                |
| rad            | radian                               |
| s              | second                               |
| m2             | square meter                         |
| {tbl}          | tablets                              |
| u              | unified atomic mass unit             |
| (m2.d)         | meter squared in 24 hours            |
| {Vial}         | Vial                                 |
| wk             | week                                 |
| a              | year                                 |
| [pH]           | pH                                   |
| [dqt_us]       | dry quart                            |
| [dpt_us]       | dry pint                             |
| mho            | mho                                  |
| ms             | millisecond                          |
| S              | Siemens                              |
| [NTU]          | Nephelometric Turbidity Unit         |
| [FNU]          | Formazin Nephelometric Unit          |
| {JTU}          | Jackson Turbidity Unit               |
| mg%            | milligram per deciliter              |
| %{WeightToWeight}   | percent WeightToWeight          |
| %{WeightToVolume}   | percent WeightToVolume          |
| %              | percent                              |
| %{VolumeToVolume}   | percent VolumeToVolume          |

## ICH Context of Use

**ICH Context of Use** refers to a code list from the International Council of Harmonisation’s (ICH) electronic implementation of the CTD (Common Technical Document). The code list “indicates the CTD heading/section the information and document applies to.”

Examples:
- `ich_3.2.p.1`
- `ich_3.2.s.6`

Registered as an external source in HL7 FHIR to support Implementation Guides:

- https://terminology.hl7.org/CodeSystem-ICHContextOfUse.html  
- http://terminology.hl7.org/NamingSystem/ICHContextOfUse

## Universal Protein Resource (UniProt)

**UniProt** is a comprehensive, freely accessible database for protein sequences and functional annotation. It is a collaboration between:

- European Bioinformatics Institute (EBI)
- Protein Information Resource (PIR)
- Swiss Institute of Bioinformatics (SIB)

It includes:
- UniProt Knowledgebase (UniProtKB)
- UniProt Reference Clusters (UniRef)
- UniProt Archive (UniParc)
- UniProt Metagenomic and Environmental Sequences database

[More on UniProt](https://www.uniprot.org)

In PQ/CMC, this identifier is optional in ICH CTD sections 3.2.S.1 and 3.2.S.2.3 for identifying a substance.

Example:  
- Protein: *Minor histocompatibility antigen HA-1*  
- UniProt Accession Number: `O78181`

In HL7 FHIR, UniProt is a registered external identifier source:

- https://terminology.hl7.org/identifiers.html  
- http://terminology.hl7.org/NamingSystem/UniProt
