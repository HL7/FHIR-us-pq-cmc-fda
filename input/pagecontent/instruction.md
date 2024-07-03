###Understanding FHIR
	<p>
    This implementation guide is based on the HL7 <a href="{{site.data.fhir.path}}index.html">FHIR</a> standard.  It uses terminology, notations and design principles that are
    specific to FHIR.  Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well
    as general guidance on how to read FHIR specifications.  Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following
    prior to reading the rest of this implementation guide.
  </p>

- 
			<a href="{{site.data.fhir.path}}overview.html">FHIR overview</a>

- 
			<a href="{{site.data.fhir.path}}overview-dev.html">Developer's introduction</a>

			<a href="{{site.data.fhir.path}}datatypes.html">FHIR data types</a>

- 
			<a href="{{site.data.fhir.path}}terminologies.html">Using codes</a>

- 
			<a href="{{site.data.fhir.path}}references.html">References between resources</a>

- 
			<a href="{{site.data.fhir.path}}formats.html">How to read resource &amp; profile definitions</a>

- 
			<a href="{{site.data.fhir.path}}resource.html">Base resource</a>

- 
			<a href="{{site.data.fhir.path}}search.html">Search</a>


	<p>
    This IG only contains only bundles of the document type because the bundle instances will be delivered with a eCTD filing.  Any implementation adapting these for use in a FHIR server should read <a href="{{site.data.fhir.path}}http.html">RESTful operations</a>
  </p>


	<h4>Resources</h4>
	<p>
    This implementation guide defines profiles on several resources.  Implementations are expected to be conformant with these profiles to be conformant with this implementation guide.
  </p>
	<table class="grid">
		<tbody>
			<tr>
				<th>Based on FHIR Resource</th>
				<th>SDC Profile(s)</th>
				<th>Purpose</th>
			</tr>
<!--			<tr>
				<td>
					<a href="sdc-structuredefinition.html">SDC Data Element (DE) Profile</a>
				</td>
				<td>
					<a href="{{site.data.fhir.path}}structuredefinition.html">StructureDefinition</a>
				</td>
				<td>Used to define data elements using FHIR logical models that can be referenced in questionnaires and can be used to auto-populate form data</td>
			</tr>-->
			<tr>
				<td rowspan="12">
					<a href="{{site.data.fhir.path}}questionnaire.html">Questionnaire</a>
				</td>
				<td>
					<a href="StructureDefinition-sdc-questionnaire.html">SDC Base Questionnaire Profile</a>
				</td>
				<td>Used to define form definitions that may be downloaded for manual and/or automatic population</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-search.html">Search Questionnaire Profile</a>
				</td>
				<td>Defines properties that must be supported for systems that support searching for and returning Questionnaires</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-render.html">Advanced Rendering Questionnaire Profile</a>
				</td>
				<td>Defines additional capabilities for controlling the rendering of the questionnaire</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-behave.html">Advanced Behavior Questionnaire Profile</a>
				</td>
				<td>Defines additional capabilities for controlling data entry and calculating values within the questionnaire</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-pop-obsn.html">Populatable Questionnaire - Observation Profile</a>
				</td>
				<td>Defines elements that support auto-population and pre-population of questionnaires using the Observation-based population mechanism</td>
			</tr>
      <tr>
        <td>
          <a href="StructureDefinition-sdc-questionnaire-pop-exp.html">Populatable Questionnaire - Expression Profile</a>
        </td>
        <td>Defines elements that support auto-population and pre-population of questionnaires using the Expression-based population mechanism</td>
      </tr>
      <tr>
        <td>
          <a href="StructureDefinition-sdc-questionnaire-pop-smap.html">Populatable Questionnaire - StructureMap Profile</a>
        </td>
        <td>Defines elements that support auto-population and pre-population of questionnaires using the Structure-based population mechanism</td>
      </tr>

			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-extr-obsn.html">Extractable Questionnaire - Observation Profile</a>
				</td>
				<td>Defines elements that allow conversion of a QuestionnaireResponse to an Observation resource or Bundle of Observation resources using the Observation-based extraction mechanism</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-extr-defn.html">Extractable Questionnaire - Definition Profile</a>
				</td>
				<td>Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-extr-smap.html">Extractable Questionnaire - StructureMap Profile</a>
				</td>
				<td>Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the StructureMap-based extraction mechanism</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-adapt.html">Adaptive Questionnaire Profile</a>
				</td>
				<td>Defines the metadata that should be present to embed an adaptive Questionnaire as part of a QuestionnaireResponse</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaire-adapt-srch.html">Adaptive Questionnaire - search Profile</a>
				</td>
				<td>Defines the metadata that should be present to support searching for adaptive questionnaires</td>
			</tr>
			<tr>
				<td rowspan="2">
					<a href="{{site.data.fhir.path}}questionnaireresponse.html">QuestionnaireResponse</a>
				</td>
				<td>
					<a href="StructureDefinition-sdc-questionnaireresponse.html">SDC Questionnaire Response Profile</a>
				</td>
				<td>Used to share instance data captured using questionnaire forms</td>
			</tr>
			<tr>
				<td>
					<a href="StructureDefinition-sdc-questionnaireresponse-adapt.html">Adaptive Questionnaire Response Profile</a>
				</td>
				<td>Represents a response to a questionnaire that is dynamically built as each question is answered</td>
			</tr>
			<tr>
				<td>
					<a href="{{site.data.fhir.path}}valueset.html">ValueSet</a>
				</td>
				<td>
					<a href="StructureDefinition-sdc-valueset.html">SDC Value Set Profile</a>
				</td>
				<td>Used to define collections of allowed values for data elements and for questions in questionnaires</td>
			</tr>
			<tr>
				<td>
					<a href="{{site.data.fhir.path}}codesystem.html">CodeSystem</a>
				</td>
				<td>
					<a href="StructureDefinition-sdc-codesystem.html">SDC Code System Profile</a>
				</td>
				<td>Used to define allowed values for data elements and for questions in questionnaires</td>
			</tr>
			<tr>
				<td>
					<a href="{{site.data.fhir.path}}metadatatypes.html#UsageContext">UsageContext</a>
				</td>
				<td>
					<a href="StructureDefinition-sdc-usagecontext.html">SDC Usage Context Profile</a>
				</td>
				<td>Constraints on the codes and values of UsageContext to help ensure consistent usage in SDC Questionnaires</td>
			</tr>
		</tbody>
	</table>
	<p>
    Additional resources such as <a href="{{site.data.fhir.path}}patient.html">Patient</a>, <a href="{{site.data.fhir.path}}practitioner.html">Practitioner</a>,
    <a href="{{site.data.fhir.path}}binary.html">Binary</a>, <a href="{{site.data.fhir.path}}conceptmap.html">ConceptMap</a>, <a href="{{site.data.fhir.path}}structuremap.html">StructureMap</a>,
    <a href="{{site.data.fhir.path}}provenance.html">Provenance</a>, <a href="{{site.data.fhir.path}}auditevent.html">AuditEvent</a> and others are also
    likely to be used in SDC solutions, though no SDC-specific profiles have been created for them.
    <!-- Todo: decide how explicit the list of relevant sections needs to be -->
	</p>

	<a name="terminologyops"> </a>
	<h4>Terminology Operations</h4>
	<p>
    In addition to the QuestionnaireResponse <a href="populate.html">population operations</a>, <a href="OperationDefinition-QuestionnaireResponse-extract.html">extract operation</a>, <a href="OperationDefinition-Questionnaire-next-question.html">next-question operation</a> and <a href="OperationDefinition-Questionnaire-process-response.html">process response operation</a>, it will be useful for Form Filler and Form Manager systems to support some of FHIR's
    <a href="{{site.data.fhir.path}}terminology-service.html">terminology service</a> capabilities - specifically the
    <a href="{{site.data.fhir.path}}operation-valueset-expand.html">Valueset Expand</a> and
    <a href="{{site.data.fhir.path}}operation-valueset-validate-code.html">Validate code</a>
    operations.
  </p>

  <a name="conformance"> </a>
  <h4>Conformance and Must Support</h4>
	<p>
    FHIR defines the notion of <a href="{{site.data.fhir.path}}conformance-rules.html#mustSupport">Must Support</a> to help establish conformance expectations for systems.  The specific meaning of
    "must support" is left to be defined in individual implementation guides.  For the purposes of <i>this</i> implementation guide, "must support" shall be interpreted as follows:
  </p>

- Conformant systems SHALL be capable of sending and receiving the data element</li>
- When a system persists a resource instance, all "must support" elements SHALL be persisted and retrieved with other elements</li>
- Where an element affects the display or validation of a Questionnaire and a system performs either or both of those operations, the behavior established by the value
      of the element SHALL be performed</li>









###  Diagrams and General Notes on Bundles

Each of the Composition profiles is contained in a specified bundle of the document type. They each have a page under the eCTD Profiles tab. The example bundles are not specific to any particular product and should not be examined for any sense of chemical or biological science. All examples are fictitious but sometimes based on real chemical compounds. All sources were augmented with values required by this standard or altered with more current names or completely additional data to illustrate a profile feature. All attempts were made to produce realistic content and challenge formatting within XML. Some element examples have been added into the mix to demonstrate their syntax. The diagram below contains a legend for the Composition profile diagrams.

<div>{%include legend.svg%}</div>

For more information about the profiles found in any of the diagrams, look on the [Artifacts page](artifacts.html) for details about the specific requirements. 

### Referencing Bundled Resources

All entries in the bundle must have an identifier to support the ability for them to be referenced within the document. Unless there is a unique identifier and system available, provide a Uniform Resource Identifier (URI): Generic Syntax as the identifier. More information is available at: [https://datatracker.ietf.org/doc/html/rfc3986/](https://datatracker.ietf.org/doc/html/rfc3986/). The system should be entered as “urn:ietf:rfc:3986”.

Although FHIR allows for multiple ways to reference other resources, they are not all appropriate for the PQ/CMC use case because the receiving endpoint is not a FHIR server. Resources cannot be referenced using a URL to a server. They must be added in a bundle together with the other resources required by the composition to have everything available in one XML file.

### Narrative Generation

Human readable representation or visualization of the content of the PQ/CMC Bundles is required. The location for this in the narrative element of the text element for the domainResource of the Composition which is required for document type Bundle resources. Some PQ/CMC bundles involve complex data and relies on many resources to convey meaningful content. Because the Composition resource provides the context for all the other resources in the Bundle it is preferred to enter all the human readable content in the Narrative of Composition. The Composition Narrative will embody the whole (including the Resources in the Bundle it refers to), so that it represents the full document. All other resources shall have the status value="empty". 

The div element within the narrative is limited to XHTML content. This is a restricted set of formatting directions. A narrative transform has been developed that formats valid XML files for each of the Bundle profiles. The narrative transform can be downloaded on the Downloads page. Its use is not required, however any other means of creating the narrative must display all content for each bundle that this transform supports. If the data is displayed in a table, and an alternative representation is used, an alternative narrative must present those elements in a table. The narrative transform is an HTML page with javaSripts. It reads the file, displays its process and previews the inserted human readable XHTML. After review, a user can save the file. It only saves to the download directory. The examples of the Bundle resources are displayed with their respective styles. The downloadable examples and those accessible from the Artifacts page have the IG default build style applied. Any content in the any div.text element is cleared and replaced by the narrative transform. Saved XML files may be opened in any browser to view the content; however Firefox and Chrome are suggested.

### Markdown Supported by Narrative Transform

There are many elements defined by the markdown datatype. The sytlesheets are restricted to GitHub flavor of Markdown. Line feeds must be double spaces. Not all markdown features are supported.
#### Supported
* Headers <h1>, <h2> and <h3>
* Emphasis
* Unordered Lists with asterisk only
* Ordered Lists
* Links
* Blockqoutes
* Backslash Escapses: restricted to asterisk, underscore, curly braces, Parenthesis, plus sign and minus sign

#### Not Supported
* Emoji
* Fenced Code Blocks
* Images -  Images should be entered according to the profile Base64DocumentReference. The text associated with the image can refer to it.
* Issue References
* Task Lists
* Tables - These have not been tested. Use at your own risk and test with the narrative transform
* Username Mentions

#### Narrative Transform Steps

* Download from the [Downloads page](downloads.html).  Respond “Keep” if the files system objects to saving the download. Unblock the zipfile.
* UnZip the file. 
* Open Transform.html in a browser. The page displays as shown below.

<table style="margin: 0px auto;"><tr><td><img src="emptyxmlStyler_Transform.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold"> Narrative Transform HTML Page </p>

* Click on “Choose file” then select a bundle file. The Narrative Transform detects the bundle type. All bundles in this IG are supported.
* The Narrative Transform does not validate the bundle. If the XML is not displayed, an error message appears. If this happens, check the XML file.
* The transformed XML bundle will show in the text area. Verify that this is the bundle and save the updated file by clicking the “Save XML Bundle file” at the bottom of the page. You may have to scroll down the page to see the button.
* Enter a new file name for the new XML bundle file.
* Confirm by clicking “OK”. Note: Due to Cross-Origin Resource Sharing (CORS), the phrase “This page says” cannot be changed. 
* To process another bundle, simply click on “Choose file” and select the bundle file.

<table style="margin: 0px auto;"><tr><td><img src="fill_Transform.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold">  Narrative Transform Text Area and Save Button  </p>

* To process another file, simply open another file.

### Versioning of Bundles
Any versioning of bundles is for the application sponsor's usage.  The status of all bundles is "active". The eCTD software will replace all prior bundles versions and the latest bundle will be the current version.

### Examples

Bundle examples contain one instance of a profile when the cardinality for that profile is one, and two instances of a profile when the cardinality is one to many. There are many bundles that will contain ten or more entries of the same type of profile, such as product composition, batch formula, quality specifications and stability reports.

Although JSON is supported by FHIR and this IG, bundles will be submitted within the eCTD in XML format.

