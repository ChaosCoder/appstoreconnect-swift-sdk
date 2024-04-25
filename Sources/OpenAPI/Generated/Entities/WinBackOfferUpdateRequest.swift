// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct WinBackOfferUpdateRequest: Codable, Equatable {
	public var data: Data

	public struct Data: Codable, Equatable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case winBackOffers
		}

		public struct Attributes: Codable, Equatable {
			public var customerEligibilityPaidSubscriptionDurationInMonths: Int?
			public var customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange?
			public var customerEligibilityWaitBetweenOffersInMonths: Int?
			public var startDate: String?
			public var endDate: String?
			public var priority: Priority?
			public var promotionIntent: PromotionIntent?

			public enum Priority: String, Codable, CaseIterable {
				case high = "HIGH"
				case normal = "NORMAL"
			}

			public enum PromotionIntent: String, Codable, CaseIterable {
				case notPromoted = "NOT_PROMOTED"
				case useAutoGeneratedAssets = "USE_AUTO_GENERATED_ASSETS"
			}

			public init(customerEligibilityPaidSubscriptionDurationInMonths: Int? = nil, customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange? = nil, customerEligibilityWaitBetweenOffersInMonths: Int? = nil, startDate: String? = nil, endDate: String? = nil, priority: Priority? = nil, promotionIntent: PromotionIntent? = nil) {
				self.customerEligibilityPaidSubscriptionDurationInMonths = customerEligibilityPaidSubscriptionDurationInMonths
				self.customerEligibilityTimeSinceLastSubscribedInMonths = customerEligibilityTimeSinceLastSubscribedInMonths
				self.customerEligibilityWaitBetweenOffersInMonths = customerEligibilityWaitBetweenOffersInMonths
				self.startDate = startDate
				self.endDate = endDate
				self.priority = priority
				self.promotionIntent = promotionIntent
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.customerEligibilityPaidSubscriptionDurationInMonths = try values.decodeIfPresent(Int.self, forKey: "customerEligibilityPaidSubscriptionDurationInMonths")
				self.customerEligibilityTimeSinceLastSubscribedInMonths = try values.decodeIfPresent(IntegerRange.self, forKey: "customerEligibilityTimeSinceLastSubscribedInMonths")
				self.customerEligibilityWaitBetweenOffersInMonths = try values.decodeIfPresent(Int.self, forKey: "customerEligibilityWaitBetweenOffersInMonths")
				self.startDate = try values.decodeIfPresent(String.self, forKey: "startDate")
				self.endDate = try values.decodeIfPresent(String.self, forKey: "endDate")
				self.priority = try values.decodeIfPresent(Priority.self, forKey: "priority")
				self.promotionIntent = try values.decodeIfPresent(PromotionIntent.self, forKey: "promotionIntent")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(customerEligibilityPaidSubscriptionDurationInMonths, forKey: "customerEligibilityPaidSubscriptionDurationInMonths")
				try values.encodeIfPresent(customerEligibilityTimeSinceLastSubscribedInMonths, forKey: "customerEligibilityTimeSinceLastSubscribedInMonths")
				try values.encodeIfPresent(customerEligibilityWaitBetweenOffersInMonths, forKey: "customerEligibilityWaitBetweenOffersInMonths")
				try values.encodeIfPresent(startDate, forKey: "startDate")
				try values.encodeIfPresent(endDate, forKey: "endDate")
				try values.encodeIfPresent(priority, forKey: "priority")
				try values.encodeIfPresent(promotionIntent, forKey: "promotionIntent")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
