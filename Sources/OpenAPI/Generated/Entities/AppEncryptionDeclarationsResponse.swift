// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppEncryptionDeclarationsResponse: Codable, Equatable {
	public var data: [AppEncryptionDeclaration]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable, Equatable {
		case app(App)
		case build(Build)
		case appEncryptionDeclarationDocument(AppEncryptionDeclarationDocument)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(App.self) {
				self = .app(value)
			} else if let value = try? container.decode(Build.self) {
				self = .build(value)
			} else if let value = try? container.decode(AppEncryptionDeclarationDocument.self) {
				self = .appEncryptionDeclarationDocument(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (App, Build, AppEncryptionDeclarationDocument)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .app(let value): try container.encode(value)
			case .build(let value): try container.encode(value)
			case .appEncryptionDeclarationDocument(let value): try container.encode(value)
			}
		}
	}

	public init(data: [AppEncryptionDeclaration], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([AppEncryptionDeclaration].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
