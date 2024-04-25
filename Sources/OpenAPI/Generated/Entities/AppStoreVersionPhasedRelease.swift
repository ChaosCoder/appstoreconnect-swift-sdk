// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppStoreVersionPhasedRelease: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appStoreVersionPhasedReleases
	}

	public struct Attributes: Codable, Equatable {
		public var phasedReleaseState: PhasedReleaseState?
		public var startDate: Date?
		public var totalPauseDuration: Int?
		public var currentDayNumber: Int?

		public init(phasedReleaseState: PhasedReleaseState? = nil, startDate: Date? = nil, totalPauseDuration: Int? = nil, currentDayNumber: Int? = nil) {
			self.phasedReleaseState = phasedReleaseState
			self.startDate = startDate
			self.totalPauseDuration = totalPauseDuration
			self.currentDayNumber = currentDayNumber
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.phasedReleaseState = try values.decodeIfPresent(PhasedReleaseState.self, forKey: "phasedReleaseState")
			self.startDate = try values.decodeIfPresent(Date.self, forKey: "startDate")
			self.totalPauseDuration = try values.decodeIfPresent(Int.self, forKey: "totalPauseDuration")
			self.currentDayNumber = try values.decodeIfPresent(Int.self, forKey: "currentDayNumber")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(phasedReleaseState, forKey: "phasedReleaseState")
			try values.encodeIfPresent(startDate, forKey: "startDate")
			try values.encodeIfPresent(totalPauseDuration, forKey: "totalPauseDuration")
			try values.encodeIfPresent(currentDayNumber, forKey: "currentDayNumber")
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
