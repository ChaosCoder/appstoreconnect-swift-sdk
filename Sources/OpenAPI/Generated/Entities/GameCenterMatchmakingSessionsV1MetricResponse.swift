// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterMatchmakingSessionsV1MetricResponse: Codable, Equatable {
	public var data: [Datum]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public struct Datum: Codable, Equatable {
		public var dataPoints: DataPoints?
		public var granularity: Granularity?

		public struct DataPoints: Codable, Equatable {
			public var start: Date?
			public var end: Date?
			public var values: Values?

			public struct Values: Codable, Equatable {
				public var count: Int?
				public var averagePlayerCount: Double?
				public var p50PlayerCount: Double?
				public var p95PlayerCount: Double?

				public init(count: Int? = nil, averagePlayerCount: Double? = nil, p50PlayerCount: Double? = nil, p95PlayerCount: Double? = nil) {
					self.count = count
					self.averagePlayerCount = averagePlayerCount
					self.p50PlayerCount = p50PlayerCount
					self.p95PlayerCount = p95PlayerCount
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.count = try values.decodeIfPresent(Int.self, forKey: "count")
					self.averagePlayerCount = try values.decodeIfPresent(Double.self, forKey: "averagePlayerCount")
					self.p50PlayerCount = try values.decodeIfPresent(Double.self, forKey: "p50PlayerCount")
					self.p95PlayerCount = try values.decodeIfPresent(Double.self, forKey: "p95PlayerCount")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(count, forKey: "count")
					try values.encodeIfPresent(averagePlayerCount, forKey: "averagePlayerCount")
					try values.encodeIfPresent(p50PlayerCount, forKey: "p50PlayerCount")
					try values.encodeIfPresent(p95PlayerCount, forKey: "p95PlayerCount")
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

		public enum Granularity: String, Codable, CaseIterable {
			case p1d = "P1D"
			case pt1h = "PT1H"
			case pt15m = "PT15M"
		}

		public init(dataPoints: DataPoints? = nil, granularity: Granularity? = nil) {
			self.dataPoints = dataPoints
			self.granularity = granularity
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.dataPoints = try values.decodeIfPresent(DataPoints.self, forKey: "dataPoints")
			self.granularity = try values.decodeIfPresent(Granularity.self, forKey: "granularity")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(dataPoints, forKey: "dataPoints")
			try values.encodeIfPresent(granularity, forKey: "granularity")
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
