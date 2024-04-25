// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppScreenshotsResponse: Codable, Equatable {
	public var data: [AppScreenshot]
	public var included: [AppScreenshotSet]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [AppScreenshot], included: [AppScreenshotSet]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([AppScreenshot].self, forKey: "data")
		self.included = try values.decodeIfPresent([AppScreenshotSet].self, forKey: "included")
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
