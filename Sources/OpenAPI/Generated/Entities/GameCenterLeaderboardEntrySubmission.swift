// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterLeaderboardEntrySubmission: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case gameCenterLeaderboardEntrySubmissions
	}

	public struct Attributes: Codable, Equatable {
		public var bundleID: String?
		public var challengeIDs: [String]?
		public var context: String?
		public var scopedPlayerID: String?
		public var score: String?
		public var submittedDate: Date?
		public var vendorIdentifier: String?

		public init(bundleID: String? = nil, challengeIDs: [String]? = nil, context: String? = nil, scopedPlayerID: String? = nil, score: String? = nil, submittedDate: Date? = nil, vendorIdentifier: String? = nil) {
			self.bundleID = bundleID
			self.challengeIDs = challengeIDs
			self.context = context
			self.scopedPlayerID = scopedPlayerID
			self.score = score
			self.submittedDate = submittedDate
			self.vendorIdentifier = vendorIdentifier
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.bundleID = try values.decodeIfPresent(String.self, forKey: "bundleId")
			self.challengeIDs = try values.decodeIfPresent([String].self, forKey: "challengeIds")
			self.context = try values.decodeIfPresent(String.self, forKey: "context")
			self.scopedPlayerID = try values.decodeIfPresent(String.self, forKey: "scopedPlayerId")
			self.score = try values.decodeIfPresent(String.self, forKey: "score")
			self.submittedDate = try values.decodeIfPresent(Date.self, forKey: "submittedDate")
			self.vendorIdentifier = try values.decodeIfPresent(String.self, forKey: "vendorIdentifier")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(bundleID, forKey: "bundleId")
			try values.encodeIfPresent(challengeIDs, forKey: "challengeIds")
			try values.encodeIfPresent(context, forKey: "context")
			try values.encodeIfPresent(scopedPlayerID, forKey: "scopedPlayerId")
			try values.encodeIfPresent(score, forKey: "score")
			try values.encodeIfPresent(submittedDate, forKey: "submittedDate")
			try values.encodeIfPresent(vendorIdentifier, forKey: "vendorIdentifier")
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
