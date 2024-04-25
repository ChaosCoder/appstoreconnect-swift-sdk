// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BundleIDCapability: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case bundleIDCapabilities = "bundleIdCapabilities"
	}

	public struct Attributes: Codable, Equatable {
		public var capabilityType: CapabilityType?
		public var settings: [CapabilitySetting]?

		public init(capabilityType: CapabilityType? = nil, settings: [CapabilitySetting]? = nil) {
			self.capabilityType = capabilityType
			self.settings = settings
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.capabilityType = try values.decodeIfPresent(CapabilityType.self, forKey: "capabilityType")
			self.settings = try values.decodeIfPresent([CapabilitySetting].self, forKey: "settings")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(capabilityType, forKey: "capabilityType")
			try values.encodeIfPresent(settings, forKey: "settings")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
