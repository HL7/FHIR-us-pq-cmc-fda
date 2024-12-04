RuleSet: child(parent,child)
* {parent}
  * ^property[+].code = #child
  * ^property[=].valueCode = {child}

CodeSystem: NCItHierarchySupplement
Id: cmc-hierarchy-supplement
Title: "PQ-CMC-FDA NCIt Hieararchy Supplement"
Description: """Provides hierarchical relationships for value sets as a CodeSystem supplement to the NCI Thesaurus (NCIt) """
* ^experimental = false
* ^status = #draft
* ^publisher = "NCI Thesaurus (NCIt)"
* ^copyright = "PQ-CMC-FDA Temporary Codes are either in the NCI Thesaurus (NCIt) or are in the process of being included in NCIt. When all codes are in NCIt, they will migrate to the HL7 Terminology (THO). License Note Unless otherwise indicated, all text within NCI products is free of copyright and may be reused without our permission. Credit the National Cancer Institute as the source. For more licensing information see: [https://www.cancer.gov/policies/copyright-reuse](https://www.cancer.gov/policies/copyright-reuse)"
* ^supplements = Canonical(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl)
* ^content = #supplement
* ^property[+].code = #child
* ^hierarchyMeaning = #is-a
// uri MUST be in quotes or it won't work
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#child"
* ^property[=].description = "Defines which codes are children"
* ^property[=].type = #code
// * #C60819
* insert child(#C60819,#C204845)
* insert child(#C60819,#C205001)
* insert child(#C60819,#C81183)
* insert child(#C60819,#C205003)
* insert child(#C60819,#C205007)
* insert child(#C60819,#C205015)
* insert child(#C60819,#C205018)
* insert child(#C60819,#C205020)
* insert child(#C60819,#C205028)
* insert child(#C60819,#C62352)
* insert child(#C60819,#C171277)
* insert child(#C60819,#C205038)
* insert child(#C60819,#C64858)
* insert child(#C60819,#C205006)
//* #C134249
// * #C134250
* insert child(#C134250,#C205004)
* insert child(#C134250,#C205019)
* insert child(#C134250,#C134115)
* insert child(#C134250,#C205050)
// * #C133961
// * #C205026
* insert child(#C205026,#C138990)
* insert child(#C205026,#C139027)
* insert child(#C205026,#C134262)
* insert child(#C205026,#C134261)
// * #C138993
// * #C134252
// * #C134253
// * #C205012
// * #C193381
* insert child(#C193381,#C205024) 
// * #C134255
// * #C134256
// * #C205027
// * #C134257
// * #C134260
// * #C134263
// * #C133974
// * #C133975
// * #C134264
// * #C63394
// * #C103201
// * #C205029
// * #C60821
// * #C64832
// * #C25483
* insert child(#C25483,#C205022)
* insert child(#C25483,#C205017)
* insert child(#C25483,#C205209)
* insert child(#C25483,#C205053)
* insert child(#C25483,#C205021)
* insert child(#C25483,#C205016)
* insert child(#C25483,#C205206)
* insert child(#C25483,#C205045)
* insert child(#C25483,#C205036)
* insert child(#C25483,#C205011)
* insert child(#C25483,#C205010)
* insert child(#C25483,#C205009)
* insert child(#C25483,#C205037)
* insert child(#C25483,#C205025)
* insert child(#C25483,#C205034)
* insert child(#C25483,#C205033)
* insert child(#C25483,#C205035)
* insert child(#C25483,#C205005)
* insert child(#C25483,#C205044)
* insert child(#C25483,#C205043)
* insert child(#C25483,#C205042)
// * #C134266
// * #C205049
// * #C133979
// * #C134267
// * #C134269
// * #C205030
// * #C134270
// * #C133983
// * #C134272
// * #C133985
// * #C205032
// * #C134276
// * #C134277
// * #C134278
// * #C134113
// * #C134114
// * #C200004
// * #C205023
// * #C205041
// * #C18951
* insert child(#C18951,#C16643)
* insert child(#C18951,#C205054)
* insert child(#C18951,#C205031)
* insert child(#C18951,#C205002)
* insert child(#C18951,#C205008)
// * #C205000
// * #C205013
// * #C74723
// * #C204971
* insert child(#C204971,#C205039)
* insert child(#C204971,#C205040)
* insert child(#C204971,#C205052)
* insert child(#C204971,#C205047)
* insert child(#C204971,#C205048)
* insert child(#C204971,#C205051)
* insert child(#C204971,#C205014)
* insert child(#C204971,#C204890)
* insert child(#C204971,#C134254)
* insert child(#C204971,#C134002)

// Different value set that still requires hierarchies
// Should this be its own supplement? 

// * #C45299 "Gas"
// * #C45298 "Liquid"
* insert child(#C45298,#C154598) // "Liquid" -> "Solution"
// * #C149895 "Semi-solid"
// * #C45300 "Solid"
* insert child(#C45300,#C154433) // "Solid" -> "Capsule"
* insert child(#C45300,#C154605) // "Solid" -> "Tablet"


