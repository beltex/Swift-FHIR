//
//  GuidanceResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The formal response to a guidance request.
 *
 *  A guidance response is the formal response to a guidance request, including any output parameters returned by the
 *  evaluation, as well as the description of any proposed actions to be taken.
 */
open class GuidanceResponse: DomainResource {
	override open class var resourceType: String {
		get { return "GuidanceResponse" }
	}
	
	/// Encounter or Episode during which the response was returned.
	public var context: Reference?
	
	/// Additional required data.
	public var dataRequirement: [DataRequirement]?
	
	/// Messages resulting from the evaluation of the artifact or artifacts.
	public var evaluationMessage: [Reference]?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// A reference to a knowledge module.
	public var module: Reference?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// When the guidance response was processed.
	public var occurrenceDateTime: DateTime?
	
	/// The output parameters of the evaluation, if any.
	public var outputParameters: Reference?
	
	/// Device returning the guidance.
	public var performer: Reference?
	
	/// Reason for the response.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason for the response.
	public var reasonReference: Reference?
	
	/// Proposed actions, if any.
	public var requestGroup: Reference?
	
	/// The id of the request associated with this response, if any.
	public var requestId: String?
	
	/// success | data-requested | data-required | in-progress | failure.
	public var status: String?
	
	/// Patient the request was performed for.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(module: Reference, status: String) {
		self.init()
		self.module = module
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dataRequirement"] {
			presentKeys.insert("dataRequirement")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dataRequirement = try DataRequirement.instantiate(fromArray: val, owner: self) as? [DataRequirement]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dataRequirement"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["evaluationMessage"] {
			presentKeys.insert("evaluationMessage")
			if let val = exist as? [FHIRJSON] {
				do {
					self.evaluationMessage = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "evaluationMessage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "evaluationMessage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["module"] {
			presentKeys.insert("module")
			if let val = exist as? FHIRJSON {
				do {
					self.module = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "module"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "module", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "module"))
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["occurrenceDateTime"] {
			presentKeys.insert("occurrenceDateTime")
			if let val = exist as? String {
				self.occurrenceDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "occurrenceDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["outputParameters"] {
			presentKeys.insert("outputParameters")
			if let val = exist as? FHIRJSON {
				do {
					self.outputParameters = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outputParameters"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outputParameters", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? FHIRJSON {
				do {
					self.performer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCodeableConcept"] {
			presentKeys.insert("reasonCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestGroup"] {
			presentKeys.insert("requestGroup")
			if let val = exist as? FHIRJSON {
				do {
					self.requestGroup = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestGroup"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestGroup", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestId"] {
			presentKeys.insert("requestId")
			if let val = exist as? String {
				self.requestId = val
			}
			else {
				errors.append(FHIRValidationError(key: "requestId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = dataRequirement.map() { $0.asJSON(errors: &errors) }
		}
		if let evaluationMessage = self.evaluationMessage {
			json["evaluationMessage"] = evaluationMessage.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let module = self.module {
			json["module"] = module.asJSON(errors: &errors)
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let occurrenceDateTime = self.occurrenceDateTime {
			json["occurrenceDateTime"] = occurrenceDateTime.asJSON()
		}
		if let outputParameters = self.outputParameters {
			json["outputParameters"] = outputParameters.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON(errors: &errors)
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON(errors: &errors)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON(errors: &errors)
		}
		if let requestGroup = self.requestGroup {
			json["requestGroup"] = requestGroup.asJSON(errors: &errors)
		}
		if let requestId = self.requestId {
			json["requestId"] = requestId.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		
		return json
	}
}
