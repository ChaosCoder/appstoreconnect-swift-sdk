// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiTagStartCondition: Codable, Equatable {
	public var source: CiTagPatterns?
	public var filesAndFoldersRule: CiFilesAndFoldersRule?
	public var isAutoCancel: Bool?

	public init(source: CiTagPatterns? = nil, filesAndFoldersRule: CiFilesAndFoldersRule? = nil, isAutoCancel: Bool? = nil) {
		self.source = source
		self.filesAndFoldersRule = filesAndFoldersRule
		self.isAutoCancel = isAutoCancel
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.source = try values.decodeIfPresent(CiTagPatterns.self, forKey: "source")
		self.filesAndFoldersRule = try values.decodeIfPresent(CiFilesAndFoldersRule.self, forKey: "filesAndFoldersRule")
		self.isAutoCancel = try values.decodeIfPresent(Bool.self, forKey: "autoCancel")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(source, forKey: "source")
		try values.encodeIfPresent(filesAndFoldersRule, forKey: "filesAndFoldersRule")
		try values.encodeIfPresent(isAutoCancel, forKey: "autoCancel")
	}
}
