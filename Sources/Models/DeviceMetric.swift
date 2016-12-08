//
//  DeviceMetric.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DeviceMetric) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Measurement, calculation or setting capability of a medical device.

Describes a measurement, calculation or setting capability of a medical device.
*/
open class DeviceMetric: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceMetric" }
	}
	
	/// Describes the calibrations that have been performed or that are required to be performed.
	public var calibration: [DeviceMetricCalibration]?
	
	/// Indicates the category of the observation generation process. A DeviceMetric can be for example a setting,
	/// measurement, or calculation.
	public var category: DeviceMetricCategory?
	
	/// Describes the color representation for the metric. This is often used to aid clinicians to track and identify
	/// parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the
	/// parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2-
	/// magenta.
	public var color: DeviceMetricColor?
	
	/// Unique identifier of this DeviceMetric.
	public var identifier: Identifier?
	
	/// Describes the measurement repetition time.
	public var measurementPeriod: Timing?
	
	/// Indicates current operational state of the device. For example: On, Off, Standby, etc.
	public var operationalStatus: DeviceMetricOperationalStatus?
	
	/// Describes the link to the parent DeviceComponent.
	public var parent: Reference?
	
	/// Describes the link to the source Device.
	public var source: Reference?
	
	/// Type of metric.
	public var type: CodeableConcept?
	
	/// Unit of metric.
	public var unit: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: DeviceMetricCategory, identifier: Identifier, type: CodeableConcept) {
		self.init()
		self.category = category
		self.identifier = identifier
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		calibration = try createInstances(of: DeviceMetricCalibration.self, for: "calibration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? calibration
		category = createEnum(type: DeviceMetricCategory.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors) ?? category
		if nil == category && !presentKeys.contains("category") {
			errors.append(FHIRValidationError(missing: "category"))
		}
		color = createEnum(type: DeviceMetricColor.self, for: "color", in: json, presentKeys: &presentKeys, errors: &errors) ?? color
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		measurementPeriod = try createInstance(type: Timing.self, for: "measurementPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? measurementPeriod
		operationalStatus = createEnum(type: DeviceMetricOperationalStatus.self, for: "operationalStatus", in: json, presentKeys: &presentKeys, errors: &errors) ?? operationalStatus
		parent = try createInstance(type: Reference.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		source = try createInstance(type: Reference.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		unit = try createInstance(type: CodeableConcept.self, for: "unit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unit
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "calibration", using: self.calibration, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
		self.color?.decorate(json: &json, withKey: "color", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.measurementPeriod?.decorate(json: &json, withKey: "measurementPeriod", errors: &errors)
		self.operationalStatus?.decorate(json: &json, withKey: "operationalStatus", errors: &errors)
		self.parent?.decorate(json: &json, withKey: "parent", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.unit?.decorate(json: &json, withKey: "unit", errors: &errors)
	}
}


/**
Describes the calibrations that have been performed or that are required to be performed.
*/
open class DeviceMetricCalibration: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceMetricCalibration" }
	}
	
	/// Describes the state of the calibration.
	public var state: DeviceMetricCalibrationState?
	
	/// Describes the time last calibration has been performed.
	public var time: Instant?
	
	/// Describes the type of the calibration method.
	public var type: DeviceMetricCalibrationType?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		state = createEnum(type: DeviceMetricCalibrationState.self, for: "state", in: json, presentKeys: &presentKeys, errors: &errors) ?? state
		time = try createInstance(type: Instant.self, for: "time", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? time
		type = createEnum(type: DeviceMetricCalibrationType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.state?.decorate(json: &json, withKey: "state", errors: &errors)
		self.time?.decorate(json: &json, withKey: "time", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

