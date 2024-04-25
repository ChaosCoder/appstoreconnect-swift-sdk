// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BetaTesterUsagesV1MetricResponse: Codable, Equatable {
	public var data: [Datum]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public struct Datum: Codable, Equatable {
		public var dataPoints: DataPoints?
		public var dimensions: Dimensions?

		public struct DataPoints: Codable, Equatable {
			public var start: Date?
			public var end: Date?
			public var values: Values?

			public struct Values: Codable, Equatable {
				public var crashCount: Int?
				public var sessionCount: Int?
				public var feedbackCount: Int?

				public init(crashCount: Int? = nil, sessionCount: Int? = nil, feedbackCount: Int? = nil) {
					self.crashCount = crashCount
					self.sessionCount = sessionCount
					self.feedbackCount = feedbackCount
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.crashCount = try values.decodeIfPresent(Int.self, forKey: "crashCount")
					self.sessionCount = try values.decodeIfPresent(Int.self, forKey: "sessionCount")
					self.feedbackCount = try values.decodeIfPresent(Int.self, forKey: "feedbackCount")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(crashCount, forKey: "crashCount")
					try values.encodeIfPresent(sessionCount, forKey: "sessionCount")
					try values.encodeIfPresent(feedbackCount, forKey: "feedbackCount")
				}
			}

			public init(start: Date? = nil, end: Date? = nil, values: Values? = nil) {
				self.start = start
				self.end = end
				self.values = values
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.start = try values.decodeIfPresent(Date.self, forKey: "start")
				self.end = try values.decodeIfPresent(Date.self, forKey: "end")
				self.values = try values.decodeIfPresent(Values.self, forKey: "values")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(start, forKey: "start")
				try values.encodeIfPresent(end, forKey: "end")
				try values.encodeIfPresent(self.values, forKey: "values")
			}
		}

		public struct Dimensions: Codable, Equatable {
			public var apps: Apps?

			public struct Apps: Codable, Equatable {
				public var links: Links?
				public var data: String?

				public struct Links: Codable, Equatable {
					public var groupBy: String?
					public var related: String?

					public init(groupBy: String? = nil, related: String? = nil) {
						self.groupBy = groupBy
						self.related = related
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.groupBy = try values.decodeIfPresent(String.self, forKey: "groupBy")
						self.related = try values.decodeIfPresent(String.self, forKey: "related")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encodeIfPresent(groupBy, forKey: "groupBy")
						try values.encodeIfPresent(related, forKey: "related")
					}
				}

				public init(links: Links? = nil, data: String? = nil) {
					self.links = links
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.links = try values.decodeIfPresent(Links.self, forKey: "links")
					self.data = try values.decodeIfPresent(String.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(links, forKey: "links")
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public init(apps: Apps? = nil) {
				self.apps = apps
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.apps = try values.decodeIfPresent(Apps.self, forKey: "apps")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(apps, forKey: "apps")
			}
		}

		public init(dataPoints: DataPoints? = nil, dimensions: Dimensions? = nil) {
			self.dataPoints = dataPoints
			self.dimensions = dimensions
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.dataPoints = try values.decodeIfPresent(DataPoints.self, forKey: "dataPoints")
			self.dimensions = try values.decodeIfPresent(Dimensions.self, forKey: "dimensions")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(dataPoints, forKey: "dataPoints")
			try values.encodeIfPresent(dimensions, forKey: "dimensions")
		}
	}

	public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([Datum].self, forKey: "data")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
