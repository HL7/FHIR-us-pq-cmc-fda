Profile: EctdComposition32S60
Parent: Composition
Id: ectd-composition-32s60
Title: "eCTD Substance Container Closure System Composition"
Description: "The fields needed to represent the Substance Container Closure Systems to be included under the eCTD 3.2.S.6.0 eCTD heading. References Sponsor Organization and Substance Container Closure"

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32S60 "Substance Container Closure System"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
  * ^definition = """
    Substance Container Closure System to be included under the 3.2.S.6.0 eCTD heading.
  """
  * code = $SectionTypes#32S60 "Substance Container Closure System"
  * title 1..1 MS
  * entry 1..1 MS
  * insert PQReference(entry)
  * entry only Reference(SubstanceContainerClosure)