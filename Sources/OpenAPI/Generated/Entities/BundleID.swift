// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BundleID: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case bundleIDs = "bundleIds"
	}

	public struct Attributes: Codable, Equatable {
		public var name: String?
		public var platform: BundleIDPlatform?
		public var identifier: String?
		public var seedID: String?

		public init(name: String? = nil, platform: BundleIDPlatform? = nil, identifier: String? = nil, seedID: String? = nil) {
			self.name = name
			self.platform = platform
			self.identifier = identifier
			self.seedID = seedID
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.platform = try values.decodeIfPresent(BundleIDPlatform.self, forKey: "platform")
			self.identifier = try values.decodeIfPresent(String.self, forKey: "identifier")
			self.seedID = try values.decodeIfPresent(String.self, forKey: "seedId")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(platform, forKey: "platform")
			try values.encodeIfPresent(identifier, forKey: "identifier")
			try values.encodeIfPresent(seedID, forKey: "seedId")
		}
	}

	public struct Relationships: Codable, Equatable {
		public var profiles: Profiles?
		public var bundleIDCapabilities: BundleIDCapabilities?
		public var app: App?

		public struct Profiles: Codable, Equatable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case profiles
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

		public struct BundleIDCapabilities: Codable, Equatable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case bundleIDCapabilities = "bundleIdCapabilities"
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

		public struct App: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
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

		public init(profiles: Profiles? = nil, bundleIDCapabilities: BundleIDCapabilities? = nil, app: App? = nil) {
			self.profiles = profiles
			self.bundleIDCapabilities = bundleIDCapabilities
			self.app = app
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.profiles = try values.decodeIfPresent(Profiles.self, forKey: "profiles")
			self.bundleIDCapabilities = try values.decodeIfPresent(BundleIDCapabilities.self, forKey: "bundleIdCapabilities")
			self.app = try values.decodeIfPresent(App.self, forKey: "app")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(profiles, forKey: "profiles")
			try values.encodeIfPresent(bundleIDCapabilities, forKey: "bundleIdCapabilities")
			try values.encodeIfPresent(app, forKey: "app")
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
