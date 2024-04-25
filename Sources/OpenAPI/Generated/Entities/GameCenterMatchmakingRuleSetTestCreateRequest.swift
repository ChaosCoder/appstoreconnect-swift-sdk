// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterMatchmakingRuleSetTestCreateRequest: Codable, Equatable {
	public var data: Data
	public var included: [IncludedItem]?

	public struct Data: Codable, Equatable {
		public var type: `Type`
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case gameCenterMatchmakingRuleSetTests
		}

		public struct Relationships: Codable, Equatable {
			public var matchmakingRuleSet: MatchmakingRuleSet
			public var matchmakingRequests: MatchmakingRequests

			public struct MatchmakingRuleSet: Codable, Equatable {
				public var data: Data

				public struct Data: Codable, Equatable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case gameCenterMatchmakingRuleSets
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

			public struct MatchmakingRequests: Codable, Equatable {
				public var data: [Datum]

				public struct Datum: Codable, Equatable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case gameCenterMatchmakingTestRequests
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

				public init(data: [Datum]) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode([Datum].self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(matchmakingRuleSet: MatchmakingRuleSet, matchmakingRequests: MatchmakingRequests) {
				self.matchmakingRuleSet = matchmakingRuleSet
				self.matchmakingRequests = matchmakingRequests
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.matchmakingRuleSet = try values.decode(MatchmakingRuleSet.self, forKey: "matchmakingRuleSet")
				self.matchmakingRequests = try values.decode(MatchmakingRequests.self, forKey: "matchmakingRequests")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(matchmakingRuleSet, forKey: "matchmakingRuleSet")
				try values.encode(matchmakingRequests, forKey: "matchmakingRequests")
			}
		}

		public init(type: `Type`, relationships: Relationships) {
			self.type = type
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public enum IncludedItem: Codable, Equatable {
		case gameCenterMatchmakingTestPlayerPropertyInlineCreate(GameCenterMatchmakingTestPlayerPropertyInlineCreate)
		case gameCenterMatchmakingTestRequestInlineCreate(GameCenterMatchmakingTestRequestInlineCreate)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(GameCenterMatchmakingTestPlayerPropertyInlineCreate.self) {
				self = .gameCenterMatchmakingTestPlayerPropertyInlineCreate(value)
			} else if let value = try? container.decode(GameCenterMatchmakingTestRequestInlineCreate.self) {
				self = .gameCenterMatchmakingTestRequestInlineCreate(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (GameCenterMatchmakingTestPlayerPropertyInlineCreate, GameCenterMatchmakingTestRequestInlineCreate)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .gameCenterMatchmakingTestPlayerPropertyInlineCreate(let value): try container.encode(value)
			case .gameCenterMatchmakingTestRequestInlineCreate(let value): try container.encode(value)
			}
		}
	}

	public init(data: Data, included: [IncludedItem]? = nil) {
		self.data = data
		self.included = included
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
	}
}
