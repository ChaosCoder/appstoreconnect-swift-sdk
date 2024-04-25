// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterLeaderboardSetLocalization: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case gameCenterLeaderboardSetLocalizations
	}

	public struct Attributes: Codable, Equatable {
		public var locale: String?
		public var name: String?

		public init(locale: String? = nil, name: String? = nil) {
			self.locale = locale
			self.name = name
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.locale = try values.decodeIfPresent(String.self, forKey: "locale")
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(locale, forKey: "locale")
			try values.encodeIfPresent(name, forKey: "name")
		}
	}

	public struct Relationships: Codable, Equatable {
		public var gameCenterLeaderboardSet: GameCenterLeaderboardSet?
		public var gameCenterLeaderboardSetImage: GameCenterLeaderboardSetImage?

		public struct GameCenterLeaderboardSet: Codable, Equatable {
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboardSets
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct GameCenterLeaderboardSetImage: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboardSetImages
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(gameCenterLeaderboardSet: GameCenterLeaderboardSet? = nil, gameCenterLeaderboardSetImage: GameCenterLeaderboardSetImage? = nil) {
			self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
			self.gameCenterLeaderboardSetImage = gameCenterLeaderboardSetImage
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.gameCenterLeaderboardSet = try values.decodeIfPresent(GameCenterLeaderboardSet.self, forKey: "gameCenterLeaderboardSet")
			self.gameCenterLeaderboardSetImage = try values.decodeIfPresent(GameCenterLeaderboardSetImage.self, forKey: "gameCenterLeaderboardSetImage")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(gameCenterLeaderboardSet, forKey: "gameCenterLeaderboardSet")
			try values.encodeIfPresent(gameCenterLeaderboardSetImage, forKey: "gameCenterLeaderboardSetImage")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
