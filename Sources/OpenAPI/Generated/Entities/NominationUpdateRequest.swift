// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct NominationUpdateRequest: Codable, Equatable {
	public var data: Data

	public struct Data: Codable, Equatable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?
		public var relationships: Relationships?

		public enum `Type`: String, Codable, CaseIterable {
			case nominations
		}

		public struct Attributes: Codable, Equatable {
			public var name: String?
			public var type: `Type`?
			public var description: String?
			public var isSubmitted: Bool?
			public var isArchived: Bool?
			public var publishStartDate: Date?
			public var publishEndDate: Date?
			public var deviceFamilies: [DeviceFamily]?
			public var locales: [String]?
			public var supplementalMaterialsUris: [URL]?
			public var hasInAppEvents: Bool?
			public var isLaunchInSelectMarketsFirst: Bool?
			public var notes: String?
			public var isPreOrderEnabled: Bool?

			public enum `Type`: String, Codable, CaseIterable {
				case appLaunch = "APP_LAUNCH"
				case appEnhancements = "APP_ENHANCEMENTS"
				case newContent = "NEW_CONTENT"
			}

			public init(name: String? = nil, type: `Type`? = nil, description: String? = nil, isSubmitted: Bool? = nil, isArchived: Bool? = nil, publishStartDate: Date? = nil, publishEndDate: Date? = nil, deviceFamilies: [DeviceFamily]? = nil, locales: [String]? = nil, supplementalMaterialsUris: [URL]? = nil, hasInAppEvents: Bool? = nil, isLaunchInSelectMarketsFirst: Bool? = nil, notes: String? = nil, isPreOrderEnabled: Bool? = nil) {
				self.name = name
				self.type = type
				self.description = description
				self.isSubmitted = isSubmitted
				self.isArchived = isArchived
				self.publishStartDate = publishStartDate
				self.publishEndDate = publishEndDate
				self.deviceFamilies = deviceFamilies
				self.locales = locales
				self.supplementalMaterialsUris = supplementalMaterialsUris
				self.hasInAppEvents = hasInAppEvents
				self.isLaunchInSelectMarketsFirst = isLaunchInSelectMarketsFirst
				self.notes = notes
				self.isPreOrderEnabled = isPreOrderEnabled
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.name = try values.decodeIfPresent(String.self, forKey: "name")
				self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
				self.description = try values.decodeIfPresent(String.self, forKey: "description")
				self.isSubmitted = try values.decodeIfPresent(Bool.self, forKey: "submitted")
				self.isArchived = try values.decodeIfPresent(Bool.self, forKey: "archived")
				self.publishStartDate = try values.decodeIfPresent(Date.self, forKey: "publishStartDate")
				self.publishEndDate = try values.decodeIfPresent(Date.self, forKey: "publishEndDate")
				self.deviceFamilies = try values.decodeIfPresent([DeviceFamily].self, forKey: "deviceFamilies")
				self.locales = try values.decodeIfPresent([String].self, forKey: "locales")
				self.supplementalMaterialsUris = try values.decodeIfPresent([URL].self, forKey: "supplementalMaterialsUris")
				self.hasInAppEvents = try values.decodeIfPresent(Bool.self, forKey: "hasInAppEvents")
				self.isLaunchInSelectMarketsFirst = try values.decodeIfPresent(Bool.self, forKey: "launchInSelectMarketsFirst")
				self.notes = try values.decodeIfPresent(String.self, forKey: "notes")
				self.isPreOrderEnabled = try values.decodeIfPresent(Bool.self, forKey: "preOrderEnabled")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(name, forKey: "name")
				try values.encodeIfPresent(type, forKey: "type")
				try values.encodeIfPresent(description, forKey: "description")
				try values.encodeIfPresent(isSubmitted, forKey: "submitted")
				try values.encodeIfPresent(isArchived, forKey: "archived")
				try values.encodeIfPresent(publishStartDate, forKey: "publishStartDate")
				try values.encodeIfPresent(publishEndDate, forKey: "publishEndDate")
				try values.encodeIfPresent(deviceFamilies, forKey: "deviceFamilies")
				try values.encodeIfPresent(locales, forKey: "locales")
				try values.encodeIfPresent(supplementalMaterialsUris, forKey: "supplementalMaterialsUris")
				try values.encodeIfPresent(hasInAppEvents, forKey: "hasInAppEvents")
				try values.encodeIfPresent(isLaunchInSelectMarketsFirst, forKey: "launchInSelectMarketsFirst")
				try values.encodeIfPresent(notes, forKey: "notes")
				try values.encodeIfPresent(isPreOrderEnabled, forKey: "preOrderEnabled")
			}
		}

		public struct Relationships: Codable, Equatable {
			public var relatedApps: RelatedApps?
			public var inAppEvents: InAppEvents?
			public var supportedTerritories: SupportedTerritories?

			public struct RelatedApps: Codable, Equatable {
				public var data: [Datum]?

				public struct Datum: Codable, Equatable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case apps
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

				public init(data: [Datum]? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public struct InAppEvents: Codable, Equatable {
				public var data: [Datum]?

				public struct Datum: Codable, Equatable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appEvents
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

				public init(data: [Datum]? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public struct SupportedTerritories: Codable, Equatable {
				public var data: [Datum]?

				public struct Datum: Codable, Equatable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case territories
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

				public init(data: [Datum]? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public init(relatedApps: RelatedApps? = nil, inAppEvents: InAppEvents? = nil, supportedTerritories: SupportedTerritories? = nil) {
				self.relatedApps = relatedApps
				self.inAppEvents = inAppEvents
				self.supportedTerritories = supportedTerritories
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.relatedApps = try values.decodeIfPresent(RelatedApps.self, forKey: "relatedApps")
				self.inAppEvents = try values.decodeIfPresent(InAppEvents.self, forKey: "inAppEvents")
				self.supportedTerritories = try values.decodeIfPresent(SupportedTerritories.self, forKey: "supportedTerritories")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(relatedApps, forKey: "relatedApps")
				try values.encodeIfPresent(inAppEvents, forKey: "inAppEvents")
				try values.encodeIfPresent(supportedTerritories, forKey: "supportedTerritories")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
			self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
			try values.encodeIfPresent(relationships, forKey: "relationships")
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
