// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct MetricsInsight: Codable, Equatable {
	public var metricCategory: MetricCategoryIdentifier?
	public var latestVersion: String?
	public var metric: String?
	public var summaryString: String?
	public var referenceVersions: String?
	public var maxLatestVersionValue: Double?
	public var subSystemLabel: String?
	public var isHighImpact: Bool?
	public var populations: [Population]?

	public struct Population: Codable, Equatable {
		public var deltaPercentage: Double?
		public var percentile: String?
		public var summaryString: String?
		public var referenceAverageValue: Double?
		public var latestVersionValue: Double?
		public var device: String?

		public init(deltaPercentage: Double? = nil, percentile: String? = nil, summaryString: String? = nil, referenceAverageValue: Double? = nil, latestVersionValue: Double? = nil, device: String? = nil) {
			self.deltaPercentage = deltaPercentage
			self.percentile = percentile
			self.summaryString = summaryString
			self.referenceAverageValue = referenceAverageValue
			self.latestVersionValue = latestVersionValue
			self.device = device
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.deltaPercentage = try values.decodeIfPresent(Double.self, forKey: "deltaPercentage")
			self.percentile = try values.decodeIfPresent(String.self, forKey: "percentile")
			self.summaryString = try values.decodeIfPresent(String.self, forKey: "summaryString")
			self.referenceAverageValue = try values.decodeIfPresent(Double.self, forKey: "referenceAverageValue")
			self.latestVersionValue = try values.decodeIfPresent(Double.self, forKey: "latestVersionValue")
			self.device = try values.decodeIfPresent(String.self, forKey: "device")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(deltaPercentage, forKey: "deltaPercentage")
			try values.encodeIfPresent(percentile, forKey: "percentile")
			try values.encodeIfPresent(summaryString, forKey: "summaryString")
			try values.encodeIfPresent(referenceAverageValue, forKey: "referenceAverageValue")
			try values.encodeIfPresent(latestVersionValue, forKey: "latestVersionValue")
			try values.encodeIfPresent(device, forKey: "device")
		}
	}

	public init(metricCategory: MetricCategoryIdentifier? = nil, latestVersion: String? = nil, metric: String? = nil, summaryString: String? = nil, referenceVersions: String? = nil, maxLatestVersionValue: Double? = nil, subSystemLabel: String? = nil, isHighImpact: Bool? = nil, populations: [Population]? = nil) {
		self.metricCategory = metricCategory
		self.latestVersion = latestVersion
		self.metric = metric
		self.summaryString = summaryString
		self.referenceVersions = referenceVersions
		self.maxLatestVersionValue = maxLatestVersionValue
		self.subSystemLabel = subSystemLabel
		self.isHighImpact = isHighImpact
		self.populations = populations
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.metricCategory = try values.decodeIfPresent(MetricCategoryIdentifier.self, forKey: "metricCategory")
		self.latestVersion = try values.decodeIfPresent(String.self, forKey: "latestVersion")
		self.metric = try values.decodeIfPresent(String.self, forKey: "metric")
		self.summaryString = try values.decodeIfPresent(String.self, forKey: "summaryString")
		self.referenceVersions = try values.decodeIfPresent(String.self, forKey: "referenceVersions")
		self.maxLatestVersionValue = try values.decodeIfPresent(Double.self, forKey: "maxLatestVersionValue")
		self.subSystemLabel = try values.decodeIfPresent(String.self, forKey: "subSystemLabel")
		self.isHighImpact = try values.decodeIfPresent(Bool.self, forKey: "highImpact")
		self.populations = try values.decodeIfPresent([Population].self, forKey: "populations")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(metricCategory, forKey: "metricCategory")
		try values.encodeIfPresent(latestVersion, forKey: "latestVersion")
		try values.encodeIfPresent(metric, forKey: "metric")
		try values.encodeIfPresent(summaryString, forKey: "summaryString")
		try values.encodeIfPresent(referenceVersions, forKey: "referenceVersions")
		try values.encodeIfPresent(maxLatestVersionValue, forKey: "maxLatestVersionValue")
		try values.encodeIfPresent(subSystemLabel, forKey: "subSystemLabel")
		try values.encodeIfPresent(isHighImpact, forKey: "highImpact")
		try values.encodeIfPresent(populations, forKey: "populations")
	}
}
