### Understanding FHIR

This implementation guide is based on the HL7 [FHIR](http://hl7.org/fhir/R5/index.html)<span style="text-decoration:underline;"> </span>
It uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

  - [FHIR overview](http://hl7.org/fhir/R4/overview.html)

  - [Developer's introduction](http://hl7.org/fhir/R4/overview-dev.html)<span style="text-decoration:underline;"> </span>

  - [FHIR data types](http://hl7.org/fhir/R4/datatypes.html)<span style="text-decoration:underline;"> </span>

  - [Using codes](http://hl7.org/fhir/R4/terminologies.html)<span style="text-decoration:underline;"> </span>

  - [References between resources](http://hl7.org/fhir/R4/references.html)<span style="text-decoration:underline;"> </span>

  - [How to read resource & profile definitions](http://hl7.org/fhir/R4/formats.html)<span style="text-decoration:underline;"> </span>

  - [Base resource](http://hl7.org/fhir/R4/resource.html)<span style="text-decoration:underline;"> </span>

  This IG only contains only bundles of the document type because the bundle instances will be delivered with a eCTD filing.  Any implementation adapting these for use in a FHIR server should read [RESTful operations](http://hl7.org/fhir/R4/http.html)

#### Additional Considerations

FHIR defines the notion of [Must Support](http://hl7.org/fhir/R4/conformance-rules.html#mustSupport).  To help establish conformance expectations for systems. For the purposes of _this_ implementation guide, "must support" shall be interpreted as follows:
	Conformant systems SHALL be capable of sending and receiving the data element.
	When a system persists a resource instance, all "must support" elements SHALL be persisted and retrieved with other elements.
	
	Developers implementing the Invariants will need to be familiar with the [FHIRPath Specification](http://hl7.org/fhirpath)

<p>
    This implementation guide defines profiles on several resources.  Implementations are expected to be conformant with these profiles to be conformant with this implementation guide.
</p>

  <a name="conformance"> </a>
  <h4>Conformance and Must Support</h4>
	<p>
    FHIR defines the notion of <a href="{{site.data.fhir.path}}conformance-rules.html#mustSupport">Must Support</a> to help establish conformance expectations for systems.  The specific meaning of
    "must support" is left to be defined in individual implementation guides.  For the purposes of <i>this</i> implementation guide, "must support" shall be interpreted as follows:
  </p>

- Conformant systems SHALL be capable of sending and receiving the data element</li>
- When a system persists a resource instance, all "must support" elements SHALL be persisted and retrieved with other elements</li>
- Where an element affects the display or validation of a Questionnaire and a system performs either or both of those operations, the behavior established by the value of the element SHALL be performed</li>

###  Diagrams and General Notes on Bundles

FHIR bundles are used to group a collection of resources into a single package. This can include various resources like lab records, research studies, and more. Each Bundle profile defines a specific use case or standard for how resources should be bundled together. Profiles ensure that the bundles meet certain requirements and follow consistent formatting rules. The Composition profiles are categorized under various document types to better organize and define their use cases. Each profile in a bundle corresponds to a specific type of document or record. For FHIR in general, a Composition profile might be used for documents such as a discharge summary or a lab report. In this Implementation Guide (IG), the Composition profiles are used to itemize the elements required in a particular eCTD section. 
The diagram shown below functions as a legend for the symbols and notations used in the Composition profile diagrams. This is crucial for interpreting the relationships and details correctly. 

<div>{%include legend.svg%}</div>

For more detailed information about the profiles illustrated in the diagrams, users can refer to the Artifacts page and the profile pages linked in the diagrams. This page provides specifics about the requirements for each profile, helping users understand how to implement or use the profiles effectively. By examining the diagrams and referencing the profiles on the [Artifacts page](artifacts.html) and individual profile pages, users can gain a thorough understanding of how FHIR bundles in this IG are structured and how to apply the profiles in practice.

**Note**:  The example bundles provided in the eCTD bundle pages are not linked to any real products or substances. They are illustrative, sometimes using real chemical compounds for context, but their primary purpose is to demonstrate the profile features rather than actual scientific content. Values within these examples may be augmented or altered to fit the requirements of the standard or to illustrate specific features.

### Referencing Bundled Resources

All entries in the bundle must have an identifier to support the ability for them to be referenced within the document. Unless there is a unique identifier and system available, provide a Uniform Resource Identifier (URI): Generic Syntax as the identifier. More information is available at: [https://datatracker.ietf.org/doc/html/rfc3986/](https://datatracker.ietf.org/doc/html/rfc3986/). The system should be entered as “urn:ietf:rfc:3986”.

Although FHIR allows for multiple ways to reference other resources, they are not all appropriate for the PQ/CMC use case because the receiving endpoint is not a FHIR server. Resources cannot be referenced using a URL to a server. They must be added in a bundle together with the other resources required by the composition to have everything available in one XML file.

### Narrative Generation

**Overview of Requirements for PQ/CMC Bundles**

1. **Human Readable Representation**:
    * **Purpose**: PQ/CMC (Pharmaceutical Quality/Clinical Manufacturing Chemistry) bundles often contain complex data that needs to be presented in a human-readable format. This is crucial for ensuring that the information is comprehensible and accessible.
2. **Role of the Composition Resource**:
    * **Location**: The human-readable content should be included in the narrative element of the Composition resource. This is part of the domainResource of the Composition, which acts as the primary context for all other resources in the bundle.
    * **Significance**: By placing the content in the Narrative of the Composition, it ensures that the entire document, including all related resources, is represented comprehensively. PQ/CMC data is complex and using the Narrative text from individual profiles hinders a meaningful layout.
3. **Handling Other Resources**:
    * **Status**: All other resources within the bundle should have their status set to "empty". This indicates that they are not intended to carry human-readable content themselves but are referenced by the Composition.
4. **XHTML Formatting**:
    * **Limitations**: The div element within the narrative is restricted to XHTML content, a simplified subset of HTML. This ensures consistent formatting but limits the types of styling and content that can be included.
    * **Transform Tool**: A narrative transform tool has been developed to assist in converting valid XML files into XHTML for each Bundle profile. This tool formats the XML and previews the resulting XHTML content.
5. **Usage of the Narrative Transform**:
    * **Availability**: The narrative transform can be downloaded from the Downloads page.
    * **Functionality**: It provides an interface where users can view and save the XHTML content. The transform also ensures that all content is displayed correctly according to the bundle's profile requirements.
    * **Saving**: The saved files are stored in the user's download directory.
6. **Viewing Saved Files**:
    * **Browsers**: Saved XML files can be opened in any browser, though Firefox and Chrome are recommended for best results.

**Steps for Implementation:**

1. **Prepare the Human Readable Content**:
    * Create the narrative content for the Composition resource, ensuring that it accurately represents the data from all resources within the bundle.
2. **Use the Narrative Transform Tool**:
    * Download and use the narrative transform tool to format your XML files into XHTML. This tool will help ensure that the content adheres to the formatting constraints and is presented clearly.
3. **Review and Save**:
    * Review the XHTML output generated by the transform tool to ensure it meets your requirements. Save the file to your download directory.
4. **Open and Verify**:
    * Open the saved XHTML file in a web browser (preferably Firefox or Chrome) to verify that the content displays correctly.

By following these guidelines, you can ensure that the PQ/CMC bundle’s complex data is presented in a clear and standardized human-readable format, facilitating easier access and understanding.  Transform use is not required.  However alternate narrative generation must support a similar layout.  If data is presented in table format by the Transform Tool, then it is expected that an alternate generation method also presents the data in a table.

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

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="emptyxmlStyler_Transform.png" />

</figure>

{::options parse_block_html="true" /}

<p style="text-align: center; font-weight: bold"> Narrative Transform HTML Page </p>

* Click on “Choose file” then select a bundle file. The Narrative Transform detects the bundle type. All bundles in this IG are supported.
* The Narrative Transform does not validate the bundle. If the XML is not displayed, an error message appears. If this happens, check the XML file.
* The transformed XML bundle will show in the text area. Verify that this is the bundle and save the updated file by clicking the “Save XML Bundle file” at the bottom of the page. You may have to scroll down the page to see the button.
* Enter a new file name for the new XML bundle file.
* Confirm by clicking “OK”. Note: Due to Cross-Origin Resource Sharing (CORS), the phrase “This page says” cannot be changed. 
* To process another bundle, simply click on “Choose file” and select the bundle file.


{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="fill_Transform.png" />

</figure>

{::options parse_block_html="true" /}

<p style="text-align: center; font-weight: bold">  Narrative Transform Text Area and Save Button  </p>

* To process another file, simply open another file.

### Versioning of Bundles
Any versioning of bundles is for the application sponsor's usage.  The status of all bundles is "active". The eCTD software will replace all prior bundles versions and the latest bundle will be the current version.

### Examples

Bundle examples contain one instance of a profile when the cardinality for that profile is one, and two instances of a profile when the cardinality is one to many. There are many bundles that will contain ten or more entries of the same type of profile, such as product composition, batch formula, quality specifications and stability reports.

eCTD submission to the FDA will be in XML format. JSON format is supported by this IG because there are several use cases in the CMC domain where JSON representation may be helpful to the larger community. For example, there are commercial FHIR servers that only support JSON, the Industry PQ project supports both XML and JSON representations and since the submission to FDA is a downstream activity in the overall CMC data flow, it makes sense to provide flexibility for implementers and CMC vendors. Additionally, entities integrating the FHIR content in internal systems often prefer and may leverage the JSON representations.


