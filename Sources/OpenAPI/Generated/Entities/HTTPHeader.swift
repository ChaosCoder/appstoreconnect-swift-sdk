// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct HTTPHeader: Codable, Equatable {
	public var name: String?
	public var value: String?

	public init(name: String? = nil, value: String? = nil) {
		self.name = name
		self.value = value
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.name = try values.decodeIfPresent(String.self, forKey: "name")
		self.value = try values.decodeIfPresent(String.self, forKey: "value")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(name, forKey: "name")
		try values.encodeIfPresent(value, forKey: "value")
	}
}
