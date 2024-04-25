// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppEncryptionDeclarationDocument: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appEncryptionDeclarationDocuments
	}

	public struct Attributes: Codable, Equatable {
		public var fileSize: Int?
		public var fileName: String?
		public var assetToken: String?
		public var downloadURL: URL?
		public var sourceFileChecksum: String?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?

		public init(fileSize: Int? = nil, fileName: String? = nil, assetToken: String? = nil, downloadURL: URL? = nil, sourceFileChecksum: String? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.assetToken = assetToken
			self.downloadURL = downloadURL
			self.sourceFileChecksum = sourceFileChecksum
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.fileSize = try values.decodeIfPresent(Int.self, forKey: "fileSize")
			self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
			self.assetToken = try values.decodeIfPresent(String.self, forKey: "assetToken")
			self.downloadURL = try values.decodeIfPresent(URL.self, forKey: "downloadUrl")
			self.sourceFileChecksum = try values.decodeIfPresent(String.self, forKey: "sourceFileChecksum")
			self.uploadOperations = try values.decodeIfPresent([UploadOperation].self, forKey: "uploadOperations")
			self.assetDeliveryState = try values.decodeIfPresent(AppMediaAssetState.self, forKey: "assetDeliveryState")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(fileSize, forKey: "fileSize")
			try values.encodeIfPresent(fileName, forKey: "fileName")
			try values.encodeIfPresent(assetToken, forKey: "assetToken")
			try values.encodeIfPresent(downloadURL, forKey: "downloadUrl")
			try values.encodeIfPresent(sourceFileChecksum, forKey: "sourceFileChecksum")
			try values.encodeIfPresent(uploadOperations, forKey: "uploadOperations")
			try values.encodeIfPresent(assetDeliveryState, forKey: "assetDeliveryState")
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
