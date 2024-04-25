// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionPricePointInlineCreate: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionPricePoints
	}

	public init(type: `Type`, id: String? = nil) {
		self.type = type
		self.id = id
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decodeIfPresent(String.self, forKey: "id")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encodeIfPresent(id, forKey: "id")
	}
}
