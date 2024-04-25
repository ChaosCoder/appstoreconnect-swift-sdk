// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterAchievementLocalizationUpdateRequest: Codable, Equatable {
	public var data: Data

	public struct Data: Codable, Equatable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case gameCenterAchievementLocalizations
		}

		public struct Attributes: Codable, Equatable {
			public var name: String?
			public var beforeEarnedDescription: String?
			public var afterEarnedDescription: String?

			public init(name: String? = nil, beforeEarnedDescription: String? = nil, afterEarnedDescription: String? = nil) {
				self.name = name
				self.beforeEarnedDescription = beforeEarnedDescription
				self.afterEarnedDescription = afterEarnedDescription
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.name = try values.decodeIfPresent(String.self, forKey: "name")
				self.beforeEarnedDescription = try values.decodeIfPresent(String.self, forKey: "beforeEarnedDescription")
				self.afterEarnedDescription = try values.decodeIfPresent(String.self, forKey: "afterEarnedDescription")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(name, forKey: "name")
				try values.encodeIfPresent(beforeEarnedDescription, forKey: "beforeEarnedDescription")
				try values.encodeIfPresent(afterEarnedDescription, forKey: "afterEarnedDescription")
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
