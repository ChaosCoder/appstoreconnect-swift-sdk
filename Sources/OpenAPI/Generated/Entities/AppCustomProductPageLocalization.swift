// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppCustomProductPageLocalization: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appCustomProductPageLocalizations
	}

	public struct Attributes: Codable, Equatable {
		public var locale: String?
		public var promotionalText: String?

		public init(locale: String? = nil, promotionalText: String? = nil) {
			self.locale = locale
			self.promotionalText = promotionalText
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.locale = try values.decodeIfPresent(String.self, forKey: "locale")
			self.promotionalText = try values.decodeIfPresent(String.self, forKey: "promotionalText")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(locale, forKey: "locale")
			try values.encodeIfPresent(promotionalText, forKey: "promotionalText")
		}
	}

	public struct Relationships: Codable, Equatable {
		public var appCustomProductPageVersion: AppCustomProductPageVersion?
		public var appScreenshotSets: AppScreenshotSets?
		public var appPreviewSets: AppPreviewSets?

		public struct AppCustomProductPageVersion: Codable, Equatable {
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCustomProductPageVersions
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

		public struct AppScreenshotSets: Codable, Equatable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appScreenshotSets
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

			public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AppPreviewSets: Codable, Equatable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appPreviewSets
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

			public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appCustomProductPageVersion: AppCustomProductPageVersion? = nil, appScreenshotSets: AppScreenshotSets? = nil, appPreviewSets: AppPreviewSets? = nil) {
			self.appCustomProductPageVersion = appCustomProductPageVersion
			self.appScreenshotSets = appScreenshotSets
			self.appPreviewSets = appPreviewSets
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appCustomProductPageVersion = try values.decodeIfPresent(AppCustomProductPageVersion.self, forKey: "appCustomProductPageVersion")
			self.appScreenshotSets = try values.decodeIfPresent(AppScreenshotSets.self, forKey: "appScreenshotSets")
			self.appPreviewSets = try values.decodeIfPresent(AppPreviewSets.self, forKey: "appPreviewSets")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appCustomProductPageVersion, forKey: "appCustomProductPageVersion")
			try values.encodeIfPresent(appScreenshotSets, forKey: "appScreenshotSets")
			try values.encodeIfPresent(appPreviewSets, forKey: "appPreviewSets")
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
