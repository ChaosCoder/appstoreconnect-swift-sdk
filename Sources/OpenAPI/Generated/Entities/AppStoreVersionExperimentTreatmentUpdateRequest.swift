// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppStoreVersionExperimentTreatmentUpdateRequest: Codable, Equatable {
	public var data: Data

	public struct Data: Codable, Equatable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case appStoreVersionExperimentTreatments
		}

		public struct Attributes: Codable, Equatable {
			public var name: String?
			public var appIconName: String?

			public init(name: String? = nil, appIconName: String? = nil) {
				self.name = name
				self.appIconName = appIconName
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.name = try values.decodeIfPresent(String.self, forKey: "name")
				self.appIconName = try values.decodeIfPresent(String.self, forKey: "appIconName")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(name, forKey: "name")
				try values.encodeIfPresent(appIconName, forKey: "appIconName")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
