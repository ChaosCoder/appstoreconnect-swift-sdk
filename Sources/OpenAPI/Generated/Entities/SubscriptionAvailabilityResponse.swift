// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionAvailabilityResponse: Codable, Equatable {
	/// SubscriptionAvailability
	public var data: SubscriptionAvailability
	public var included: [Territory]?
	public var links: DocumentLinks

	public init(data: SubscriptionAvailability, included: [Territory]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(SubscriptionAvailability.self, forKey: "data")
		self.included = try values.decodeIfPresent([Territory].self, forKey: "included")
		self.links = try values.decode(DocumentLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
	}
}
