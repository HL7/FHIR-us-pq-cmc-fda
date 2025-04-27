Instance: GMS90Powder-BatchAnalysis-202010901
InstanceOf: pqcmc-batch-analysis
Title: "Batch Analysis for Glycerol Monostearate 90PCT Powder"
Description: "Batch Analysis conforming to pqcmc-batch-analysis for Lot 2020100901"
Usage: #inline
* extension[qualitySpecification]
  * extension[specification].valueString = "GB15612-1995"
  * extension[specificationVersion].valueString = "2020"
  * extension[specificationSubtitle].valueString = "Quality Specification for Glycerol Monostearate 90PCT powderM"
* identifier.value = "Batch_Analysis_002"
* status = #final
* code.text = "Batch analysis report for GMS90 Powder"
* subject.display = "Glycerol Monostearate 90PCT powder" // change this to a subject reference 
* effectiveDateTime = 2020-10-09
* performer.display = "WELLGO CHEMICAL TECHNOLOGY Co.,LTD" // make this an organization and make the manufacuter in the Subtance
* result[+] = Reference(GMS90-Appearance)
* result[+] = Reference(GMS90-TotalMonostearate)
* result[+] = Reference(GMS90-FreeGlycerol)
* result[+] = Reference(GMS90-Fats)
* result[+] = Reference(GMS90-HeavyMetals)

Instance: GMS90-Appearance
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Appearance and Organoleptic"
Description: "Example result - string acceptance criteria.  This method is both Organoleptic and an Appearance test."
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205026 "Organoleptic"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "GMS90 Odor"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a) // or create a new test site
* valueString = "No unpleasant odor"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Pellet form without unpleasant odor"
* method.text = "Evaluation of Crude Drugs"

Instance: GMS90-TotalMonostearate
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - TotalMonostearate"
Description: "Example result - lower limit acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C60819 "Assay"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Assay Monostearate"
* effectiveDateTime = 2020-10-02
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 98.7 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 95 '%' "percent"
* referenceRange.text = "≥ 95%"
* method.text = "Assay of Total Monostearate"

Instance: GMS90-FreeGlycerol
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Free Glycerol"
Description: "Example result - numeric upper only range acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C60819 "Assay"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "Assay - Free Glycerol"
* effectiveDateTime = 2020-10-04
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a) 
* valueQuantity = 0.8 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 1.5 '%' "percent"
* referenceRange.text = "≤ 1.5%"
* method.text = "Assay of Free Glycerol"

Instance: GMS90-Fats
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Fats and fixed oils"
Description: "Example result - group tests conform"

* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-05
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Fat and Oil passed all test in method"  // check notes on if this is required when has memeber used
* method.text = "Fats and Fixed Oils"
* hasMember[+] = Reference(GMS90-AcidValue)
* hasMember[+] = Reference(GMS90-MeltingPoint)
* hasMember[+] = Reference(GMS90-IodineValue)
* hasMember[+] = Reference(GMS90-SaponificationValue)

Instance: GMS90-AcidValue
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Acid Value"
Description: "Example result - upper limit acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueQuantity.value = 1.0
* valueQuantity.unit = "mgKOH/g"         // figure out these units
* valueQuantity.code = #mgKOH/g
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 2.0 'mgKOH/g' "[mgKOH/g]"
* referenceRange.text = "≤ 2.0 mgKOH/g"
* method.text = "Acid Value"

Instance: GMS90-MeltingPoint
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Melting Point"
Description: "Example result - range acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
// or create a new test site for all tests
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 66.3 'Cel' "degree Celsius"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 60.0 'Cel' "degree Celsius"
  * extension[high].valueQuantity = 70.0 'Cel' "degree Celsius"
* referenceRange.text = "60.0-70.0 °C"
* method.text = "Melting Point"

Instance: GMS90-IodineValue
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - IodineValue"
Description: "Example result - uppper limit numeric acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 0.8 'g/100g' "[g/100g]"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 4.0 'g/100g' "[g/100g]"  // figure out these units
* referenceRange.text = "≤ 4.0 g/100g"
* method.text = "Iodine Value"

Instance: GMS90-SaponificationValue
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - SaponificationValue"
Description: "Example result - range numeric complex unit acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* code
  * coding = $NCIT#C96102 "Compendial"  
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueQuantity = 158 'mgKOH/g' "[mgKOH/g]"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 155 'mgKOH/g' "[mgKOH/g]"
  * extension[high].valueQuantity = 165 'mgKOH/g' "[mgKOH/g]"
* referenceRange.text = "155-165 mgKOH/g"
* method.text = "Saponification Value"

Instance: GMS90-HeavyMetals
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - HeavyMetals"
Description: "Example result - multiple tests in method acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-05
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "All regulated elements passed the acceptance criteria defined in USP <233> "
* method.text = "Heavy Metals"
* hasMember[+] = Reference(GMS90-Arsenic)
* hasMember[+] = Reference(GMS90-Lead)
* hasMember[+] = Reference(GMS90-Mercury)
* hasMember[+] = Reference(GMS90-Cadmium)

Instance: GMS90-Arsenic
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Arsenic (HeavyMetals)"
Description: "Example result - first member in group"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 2 'pH' "[pH]"
* referenceRange.text = "≤ 2 mg/kg"
* method.text = "Arsenic"

Instance: GMS90-Lead
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation -Lead (HeavyMetals)"
Description: "Example result - second member in group"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 5.0 'pH' "[pH]"
* referenceRange.text = "≤ 5 mg/kg"
* method.text = "Lead"

Instance: GMS90-Mercury
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Mercury (HeavyMetals)"
Description: "Example result - high only acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 1 'pH' "[pH]"
* referenceRange.text = "≤ 1 mg/kg"
* method.text = "Mercury"
* valueString = "Qualified"

Instance: GMS90-Cadmium
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Cadmium (HeavyMetals)"
Description: "Example result - text acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"

* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* method.text = "Cadmium"
* referenceRange.text = "Conforms"

