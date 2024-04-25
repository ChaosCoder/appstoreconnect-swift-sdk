// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiFilesAndFoldersRule: Codable, Equatable {
	public var mode: Mode?
	public var matchers: [CiStartConditionFileMatcher]?

	public enum Mode: String, Codable, CaseIterable {
		case startIfAnyFileMatches = "START_IF_ANY_FILE_MATCHES"
		case doNotStartIfAllFilesMatch = "DO_NOT_START_IF_ALL_FILES_MATCH"
	}

	public init(mode: Mode? = nil, matchers: [CiStartConditionFileMatcher]? = nil) {
		self.mode = mode
		self.matchers = matchers
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.mode = try values.decodeIfPresent(Mode.self, forKey: "mode")
		self.matchers = try values.decodeIfPresent([CiStartConditionFileMatcher].self, forKey: "matchers")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(mode, forKey: "mode")
		try values.encodeIfPresent(matchers, forKey: "matchers")
	}
}
