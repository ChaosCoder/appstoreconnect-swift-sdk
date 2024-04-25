// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppEncryptionDeclaration: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appEncryptionDeclarations
	}

	public struct Attributes: Codable, Equatable {
		public var appDescription: String?
		public var createdDate: Date?
		/// - warning: Deprecated.
		public var usesEncryption: Bool?
		public var isExempt: Bool?
		public var containsProprietaryCryptography: Bool?
		public var containsThirdPartyCryptography: Bool?
		public var isAvailableOnFrenchStore: Bool?
		public var platform: Platform?
		/// - warning: Deprecated.
		public var uploadedDate: Date?
		/// - warning: Deprecated.
		public var documentURL: String?
		/// - warning: Deprecated.
		public var documentName: String?
		/// - warning: Deprecated.
		public var documentType: String?
		public var appEncryptionDeclarationState: AppEncryptionDeclarationState?
		public var codeValue: String?

		public init(appDescription: String? = nil, createdDate: Date? = nil, usesEncryption: Bool? = nil, isExempt: Bool? = nil, containsProprietaryCryptography: Bool? = nil, containsThirdPartyCryptography: Bool? = nil, isAvailableOnFrenchStore: Bool? = nil, platform: Platform? = nil, uploadedDate: Date? = nil, documentURL: String? = nil, documentName: String? = nil, documentType: String? = nil, appEncryptionDeclarationState: AppEncryptionDeclarationState? = nil, codeValue: String? = nil) {
			self.appDescription = appDescription
			self.createdDate = createdDate
			self.usesEncryption = usesEncryption
			self.isExempt = isExempt
			self.containsProprietaryCryptography = containsProprietaryCryptography
			self.containsThirdPartyCryptography = containsThirdPartyCryptography
			self.isAvailableOnFrenchStore = isAvailableOnFrenchStore
			self.platform = platform
			self.uploadedDate = uploadedDate
			self.documentURL = documentURL
			self.documentName = documentName
			self.documentType = documentType
			self.appEncryptionDeclarationState = appEncryptionDeclarationState
			self.codeValue = codeValue
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appDescription = try values.decodeIfPresent(String.self, forKey: "appDescription")
			self.createdDate = try values.decodeIfPresent(Date.self, forKey: "createdDate")
			self.usesEncryption = try values.decodeIfPresent(Bool.self, forKey: "usesEncryption")
			self.isExempt = try values.decodeIfPresent(Bool.self, forKey: "exempt")
			self.containsProprietaryCryptography = try values.decodeIfPresent(Bool.self, forKey: "containsProprietaryCryptography")
			self.containsThirdPartyCryptography = try values.decodeIfPresent(Bool.self, forKey: "containsThirdPartyCryptography")
			self.isAvailableOnFrenchStore = try values.decodeIfPresent(Bool.self, forKey: "availableOnFrenchStore")
			self.platform = try values.decodeIfPresent(Platform.self, forKey: "platform")
			self.uploadedDate = try values.decodeIfPresent(Date.self, forKey: "uploadedDate")
			self.documentURL = try values.decodeIfPresent(String.self, forKey: "documentUrl")
			self.documentName = try values.decodeIfPresent(String.self, forKey: "documentName")
			self.documentType = try values.decodeIfPresent(String.self, forKey: "documentType")
			self.appEncryptionDeclarationState = try values.decodeIfPresent(AppEncryptionDeclarationState.self, forKey: "appEncryptionDeclarationState")
			self.codeValue = try values.decodeIfPresent(String.self, forKey: "codeValue")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appDescription, forKey: "appDescription")
			try values.encodeIfPresent(createdDate, forKey: "createdDate")
			try values.encodeIfPresent(usesEncryption, forKey: "usesEncryption")
			try values.encodeIfPresent(isExempt, forKey: "exempt")
			try values.encodeIfPresent(containsProprietaryCryptography, forKey: "containsProprietaryCryptography")
			try values.encodeIfPresent(containsThirdPartyCryptography, forKey: "containsThirdPartyCryptography")
			try values.encodeIfPresent(isAvailableOnFrenchStore, forKey: "availableOnFrenchStore")
			try values.encodeIfPresent(platform, forKey: "platform")
			try values.encodeIfPresent(uploadedDate, forKey: "uploadedDate")
			try values.encodeIfPresent(documentURL, forKey: "documentUrl")
			try values.encodeIfPresent(documentName, forKey: "documentName")
			try values.encodeIfPresent(documentType, forKey: "documentType")
			try values.encodeIfPresent(appEncryptionDeclarationState, forKey: "appEncryptionDeclarationState")
			try values.encodeIfPresent(codeValue, forKey: "codeValue")
		}
	}

	public struct Relationships: Codable, Equatable {
		/// - warning: Deprecated.
		public var app: App?
		/// - warning: Deprecated.
		public var builds: Builds?
		public var appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument?

		@available(*, deprecated, message: "Deprecated")
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

		@available(*, deprecated, message: "Deprecated")
		public struct Builds: Codable, Equatable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case builds
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

		public struct AppEncryptionDeclarationDocument: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appEncryptionDeclarationDocuments
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

		public init(app: App? = nil, builds: Builds? = nil, appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument? = nil) {
			self.app = app
			self.builds = builds
			self.appEncryptionDeclarationDocument = appEncryptionDeclarationDocument
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.app = try values.decodeIfPresent(App.self, forKey: "app")
			self.builds = try values.decodeIfPresent(Builds.self, forKey: "builds")
			self.appEncryptionDeclarationDocument = try values.decodeIfPresent(AppEncryptionDeclarationDocument.self, forKey: "appEncryptionDeclarationDocument")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(app, forKey: "app")
			try values.encodeIfPresent(builds, forKey: "builds")
			try values.encodeIfPresent(appEncryptionDeclarationDocument, forKey: "appEncryptionDeclarationDocument")
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
