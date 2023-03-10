tbd intro to page
### Document Bundle Graphs

The PQ/CMC Profile design and development of IG is being bound to the FHIR Build definition at [https://build.fhir.org/](https://build.fhir.org/) and NOT to the FHIR Release 4.5.0. 

###  Diagrams and General Notes on Bundles

Each of the Comopistion profiles is contained in a specified bundle of the document type. They each have a page under the eCTD Pofiles tab. The example bundles are not specific to any particuar product and should not be examined for any sense of chemical or biological science. Some examples are derived from an example of an acceptable FDA submission by Dr. Marcus Ferrone from Hyperpolarized MRI Technology Resource Center at the University of California at San Francisco, Patent application WO 2010/093854 and re-use data from the eStabilty Implementation Guide data. All sources were augmented with values required by this standard or altered with more current names or completely additional data to illustrate a profile feature. All attempts were made to produce realistic content and challenge formating within XML.  Some element examples have been added into the mix to demonstrate their syntax. This is a legend for those diagrams

<div>{%include legend.svg%}</div>

For more information about the profiles found in any of the diagrams, look on the [Artifacts page](Artifacts.html) for details about the specific requirements. 

### Narrative Generation

Human readable representation or visualization of the content of the PQ/CMC Bundles is required.   The location for this in the narrative element of the text element for the domainResource of the Composition which is required for document type Bundle resources.   Some PQ/CMC bundles involve complex data and relies on many resources to convey meaningful content.  Because the Composition resource provides the context for all the other resources in the Bundle it is preferred to enter all the human readable content in the Narrative of Composition.   The Composition Narrative will embody the whole (including the Resources in the Bundle it refers to), so that it represents the full document. All other resources shall have the status value="empty". 

The div element within the narrative is limited to XHTML content.  This is a restricted set of formatting directions.  Style sheets have been developed that format appropriate documents for each of the Bundle profiles.  They can be downloaded on the Downloads page.  Their use is not required, however all content that they display is required.   If the data is displayed in a table, and an alternative representation is used, it must present those elements in a table.  The stylesheets are free software and can be redistributed and/or modified under the terms of the GNU Lesser General Public License.  The examples of the Bundle resources are displayed with their respective styles.  The downloadable examplesand those accessible from the Artifacts page have the IG default build style applied.  They open in any browser to view the content; (Firefox and Chrome are best).

FHIR disallows links to XSL style sheets.  To interpret and run XSLT code requires an XSLT processor to transform the original XML Bundle file into one with the formatted Narrative.  A simple processor is the Saxon XSLT processor.  It is also free.  Directions for obtaining and running the Saxon processor follow.   Disregard if another processor is available for use.  All files submitted to the FDA must be in XML format.

#### **Installing an XSLT processor**

. The steps below will install the Saxon XSLT processor on Windows.

If it is not already present, install Java as follows:

·         Go to [https://www.oracle.com/java](https://www.oracle.com/java)  and choose Java for Developers / Java SE.

·         Download the JDK or JRE .exe for windows (x64 for 64 bit) and run it.

·         Go to [http://sourceforge.net/projects/saxon/files/](http://sourceforge.net/projects/saxon/files) , download the latest SaxonHE .zip file by clicking the download button

·         Unblock the zip file and unzip it to the c:\saxon folder.

#### **Run the XSLT code**

·         Open a command prompt in the data folder and use Saxon to process the XML with the XSLT code by envoking the jar file. This example is using the 11.3 version:

·         C:\>java -jar C:\Saxon\saxon-he-11.3.jar -s:C:\FHIR_files\Bundle-eCTD32p10Document.xml -xsl:C:\FHIR_files\pqcmcTemplate.xsl -o:C:\FHIR_files\formatedfile.xml    

·         Parameters: -s source (xml), -xsl transform file (xsl), -o output file (xml)

·         Open the output in a text editor or browser to check the content.

### Markdown Supported by Stylesheets
n
There are many elements defined by the markdown datatype.  The sytlesheets are restricted to GitHub flavor of Markdown. Line feeds must be double spaces.  Not all markdown features are supported.
#### Supported
* Headers <h1>, <h2> and <h3>
* Emphasis
* Unordered Lists with asterisk only
* Ordered Lists
* Links
* Blockqoutes
* Backslash Escapses: restricted to asterisk, underscore, curly braces, Parenthesis, plus sign and minus sign
* Fenced Code Blocks will only be supported for strucuture graphics not markdown fields.


#### Not Supported
* Images
* Username Mentions
* Issue References
* Task Lists
* Tables
* Emoji

### Referencing Bundled Resources

All entries in the bundle must have an identifer if they because they are referenced within the document.  Unless there is a unique identifier and system available, provide a Uniform Resource Identifier (URI): Generic Syntax as the identifer. More information is avabilabe at: [https://datatracker.ietf.org/doc/html/rfc3986/](https://datatracker.ietf.org/doc/html/rfc3986/).  The system should be entered as "urn:ietf:rfc:3986".

Althought FHIR allows for multiple ways to reference other resources, they are not all appropriate for the PQ/CMC use case because the receiving endpoint is not a FHIR server. Resources cannot be referenced using a URL to a server. They must be added in a bundle together with the other resources required by the composition to have everything available in one XML file.


### Versioning of Bundles
tbd write about eCTD and replace and versioning

### Images and Diagrams

tbd write about attachements vs inclusion of imaage in  markdown.  Also SVG prefered for 2d chem structure


### Examples

Bunle examples contain one instance of a profile when the cardinality for that profile is one and two when the cardinaltiy is one to many.  There are many bundles that will contain ten or more entries of the same type of profile, such as product composistion, batch formula, quality specifications and stability reports.  Althogh JSON is supported by FHIR and this IG, bundles will be submitted within the eCTD in XML format.

