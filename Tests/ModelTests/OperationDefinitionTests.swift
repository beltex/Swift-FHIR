//
//  OperationDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-08.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OperationDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.OperationDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.OperationDefinition {
		return try SwiftFHIR.OperationDefinition(json: json)
	}
	
	func testOperationDefinition1() {
		do {
			let instance = try runOperationDefinition1()
			try runOperationDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OperationDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOperationDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationdefinition-example.json")
		
		XCTAssertEqual(inst.base?.reference, "OperationDefinition/Questionnaire-populate")
		XCTAssertEqual(inst.code, "populate")
		XCTAssertEqual(inst.comment, "Only implemented for Labs and Medications so far")
		XCTAssertEqual(inst.contact?[0].name, "System Administrator")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "beep@coyote.acme.com")
		XCTAssertEqual(inst.date?.description, "2015-08-04")
		XCTAssertEqual(inst.description_fhir, "Limited implementation of the Populate Questionnaire implemenation")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.instance, true)
		XCTAssertEqual(inst.kind, OperationKind(rawValue: "operation")!)
		XCTAssertEqual(inst.name, "Populate Questionnaire")
		XCTAssertEqual(inst.parameter?[0].max, "1")
		XCTAssertEqual(inst.parameter?[0].min, 1)
		XCTAssertEqual(inst.parameter?[0].name, "subject")
		XCTAssertEqual(inst.parameter?[0].type, "Reference")
		XCTAssertEqual(inst.parameter?[0].use, OperationParameterUse(rawValue: "in")!)
		XCTAssertEqual(inst.parameter?[1].documentation, "The partially (or fully)-populated set of answers for the specified Questionnaire")
		XCTAssertEqual(inst.parameter?[1].max, "1")
		XCTAssertEqual(inst.parameter?[1].min, 1)
		XCTAssertEqual(inst.parameter?[1].name, "return")
		XCTAssertEqual(inst.parameter?[1].type, "QuestionnaireResponse")
		XCTAssertEqual(inst.parameter?[1].use, OperationParameterUse(rawValue: "out")!)
		XCTAssertEqual(inst.publisher, "Acme Healthcare Services")
		XCTAssertEqual(inst.resource?[0], "Questionnaire")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.system, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, false)
		XCTAssertEqual(inst.url?.absoluteString, "http://h7.org/fhir/OperationDefinition/example")
		XCTAssertEqual(inst.version, "B")
		
		return inst
	}
}
