//
//  DiagnosticReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (diagnosticreport.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as
 *  formatted reports.
 *
 *  The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and
 *  locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider
 *  information, and some mix of atomic results, images, textual and coded interpretation, and formatted representation
 *  of diagnostic reports.
 */
public class DiagnosticReport: FHIRResource
{
	override public class var resourceName: String {
		get { return "DiagnosticReport" }
	}
	
	/// Codes for the conclusion
	public var codedDiagnosis: [CodeableConcept]?
	
	/// Clinical Interpretation of test results
	public var conclusion: String?
	
	/// Physiologically Relevant time/time-period for report
	public var diagnosticDateTime: NSDate?
	
	/// Physiologically Relevant time/time-period for report
	public var diagnosticPeriod: Period?
	
	/// Id for external references to this report
	public var identifier: Identifier?
	
	/// Key images associated with this report
	public var image: [DiagnosticReportImage]?
	
	/// Reference to full details of imaging associated with the diagnostic report
	public var imagingStudy: [Reference]?
	
	/// Date this version was released
	public var issued: NSDate?
	
	/// Name/Code for this diagnostic report
	public var name: CodeableConcept?
	
	/// Responsible Diagnostic Service
	public var performer: Reference?
	
	/// Entire Report as issued
	public var presentedForm: [Attachment]?
	
	/// What was requested
	public var requestDetail: [Reference]?
	
	/// Observations - simple, or complex nested groups
	public var result: [Reference]?
	
	/// Biochemistry, Hematology etc.
	public var serviceCategory: CodeableConcept?
	
	/// Specimens this report is based on
	public var specimen: [Reference]?
	
	/// registered | partial | final | corrected +
	public var status: String?
	
	/// The subject of the report, usually, but not always, the patient
	public var subject: Reference?
	
	public convenience init(diagnosticDateTime: NSDate?, diagnosticPeriod: Period?, issued: NSDate?, name: CodeableConcept?, performer: Reference?, status: String?, subject: Reference?) {
		self.init(json: nil)
		if nil != diagnosticDateTime {
			self.diagnosticDateTime = diagnosticDateTime
		}
		if nil != diagnosticPeriod {
			self.diagnosticPeriod = diagnosticPeriod
		}
		if nil != issued {
			self.issued = issued
		}
		if nil != name {
			self.name = name
		}
		if nil != performer {
			self.performer = performer
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["codedDiagnosis"] as? [JSONDictionary] {
				self.codedDiagnosis = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["conclusion"] as? String {
				self.conclusion = val
			}
			if let val = js["diagnosticDateTime"] as? String {
				self.diagnosticDateTime = NSDate(json: val)
			}
			if let val = js["diagnosticPeriod"] as? JSONDictionary {
				self.diagnosticPeriod = Period(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["image"] as? [JSONDictionary] {
				self.image = DiagnosticReportImage.from(val, owner: self) as? [DiagnosticReportImage]
			}
			if let val = js["imagingStudy"] as? [JSONDictionary] {
				self.imagingStudy = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["issued"] as? String {
				self.issued = NSDate(json: val)
			}
			if let val = js["name"] as? JSONDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["performer"] as? JSONDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["presentedForm"] as? [JSONDictionary] {
				self.presentedForm = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["requestDetail"] as? [JSONDictionary] {
				self.requestDetail = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["result"] as? [JSONDictionary] {
				self.result = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["serviceCategory"] as? JSONDictionary {
				self.serviceCategory = CodeableConcept(json: val, owner: self)
			}
			if let val = js["specimen"] as? [JSONDictionary] {
				self.specimen = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Key images associated with this report.
 *
 *  A list of key images associated with this report. The images are generally created during the diagnostic process,
 *  and may be directly of the patient, or of treated specimens (i.e. slides of interest).
 */
public class DiagnosticReportImage: FHIRElement
{
	override public class var resourceName: String {
		get { return "DiagnosticReportImage" }
	}
	
	/// Comment about the image (e.g. explanation)
	public var comment: String?
	
	/// Reference to the image source
	public var link: Reference?
	
	public convenience init(link: Reference?) {
		self.init(json: nil)
		if nil != link {
			self.link = link
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["link"] as? JSONDictionary {
				self.link = Reference(json: val, owner: self)
			}
		}
	}
}

