//
//  StatusResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (statusresponse.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  StatusResponse resource.
 *
 *  This resource provides processing status, errors and notes from the processing of a resource.
 */
public class StatusResponse: FHIRResource
{
	override public class var resourceName: String {
		get { return "StatusResponse" }
	}
	
	/// Creation date
	public var created: NSDate?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Error code
	public var error: [Coding]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Notes
	public var notes: [StatusResponseNotes]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Processing outcome
	public var outcome: Coding?
	
	/// Request reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
			}
			if let val = js["error"] as? [JSONDictionary] {
				self.error = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["form"] as? JSONDictionary {
				self.form = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["notes"] as? [JSONDictionary] {
				self.notes = StatusResponseNotes.from(val, owner: self) as? [StatusResponseNotes]
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["outcome"] as? JSONDictionary {
				self.outcome = Coding(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["requestOrganization"] as? JSONDictionary {
				self.requestOrganization = Reference(json: val, owner: self)
			}
			if let val = js["requestProvider"] as? JSONDictionary {
				self.requestProvider = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
		}
	}
}


/**
 *  Notes.
 *
 *  Suite of processing note or additional requirements is the processing has been held.
 */
public class StatusResponseNotes: FHIRElement
{
	override public class var resourceName: String {
		get { return "StatusResponseNotes" }
	}
	
	/// Notes text
	public var text: String?
	
	/// display | print | printoper
	public var type: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

