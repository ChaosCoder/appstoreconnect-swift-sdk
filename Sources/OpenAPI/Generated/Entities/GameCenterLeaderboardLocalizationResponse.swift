// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterLeaderboardLocalizationResponse: Codable, Equatable {
	/// GameCenterLeaderboardLocalization
	public var data: GameCenterLeaderboardLocalization
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable, Equatable {
		case gameCenterLeaderboard(GameCenterLeaderboard)
		case gameCenterLeaderboardImage(GameCenterLeaderboardImage)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(GameCenterLeaderboard.self) {
				self = .gameCenterLeaderboard(value)
			} else if let value = try? container.decode(GameCenterLeaderboardImage.self) {
				self = .gameCenterLeaderboardImage(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (GameCenterLeaderboard, GameCenterLeaderboardImage)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .gameCenterLeaderboard(let value): try container.encode(value)
			case .gameCenterLeaderboardImage(let value): try container.encode(value)
			}
		}
	}

	public init(data: GameCenterLeaderboardLocalization, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(GameCenterLeaderboardLocalization.self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(DocumentLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
	}
}
