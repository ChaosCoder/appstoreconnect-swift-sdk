// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppInfo: Codable, Equatable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appInfos
	}

	public struct Attributes: Codable, Equatable {
		public var appStoreState: AppStoreVersionState?
		public var state: State?
		public var appStoreAgeRating: AppStoreAgeRating?
		public var australiaAgeRating: AustraliaAgeRating?
		public var brazilAgeRating: BrazilAgeRating?
		public var brazilAgeRatingV2: BrazilAgeRatingV2?
		public var franceAgeRating: FranceAgeRating?
		public var koreaAgeRating: KoreaAgeRating?
		public var kidsAgeBand: KidsAgeBand?

		public enum State: String, Codable, CaseIterable {
			case accepted = "ACCEPTED"
			case developerRejected = "DEVELOPER_REJECTED"
			case inReview = "IN_REVIEW"
			case pendingRelease = "PENDING_RELEASE"
			case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
			case readyForDistribution = "READY_FOR_DISTRIBUTION"
			case readyForReview = "READY_FOR_REVIEW"
			case rejected = "REJECTED"
			case replacedWithNewInfo = "REPLACED_WITH_NEW_INFO"
			case waitingForReview = "WAITING_FOR_REVIEW"
		}

		public enum AustraliaAgeRating: String, Codable, CaseIterable {
			case fifteen = "FIFTEEN"
			case eighteen = "EIGHTEEN"
		}

		public enum BrazilAgeRatingV2: String, Codable, CaseIterable {
			case selfRatedL = "SELF_RATED_L"
			case selfRatedTen = "SELF_RATED_TEN"
			case selfRatedTwelve = "SELF_RATED_TWELVE"
			case selfRatedFourteen = "SELF_RATED_FOURTEEN"
			case selfRatedSixteen = "SELF_RATED_SIXTEEN"
			case selfRatedEighteen = "SELF_RATED_EIGHTEEN"
			case officialL = "OFFICIAL_L"
			case officialTen = "OFFICIAL_TEN"
			case officialTwelve = "OFFICIAL_TWELVE"
			case officialFourteen = "OFFICIAL_FOURTEEN"
			case officialSixteen = "OFFICIAL_SIXTEEN"
			case officialEighteen = "OFFICIAL_EIGHTEEN"
		}

		public enum FranceAgeRating: String, Codable, CaseIterable {
			case eighteen = "EIGHTEEN"
		}

		public enum KoreaAgeRating: String, Codable, CaseIterable {
			case all = "ALL"
			case twelve = "TWELVE"
			case fifteen = "FIFTEEN"
			case nineteen = "NINETEEN"
			case notApplicable = "NOT_APPLICABLE"
		}

		public init(appStoreState: AppStoreVersionState? = nil, state: State? = nil, appStoreAgeRating: AppStoreAgeRating? = nil, australiaAgeRating: AustraliaAgeRating? = nil, brazilAgeRating: BrazilAgeRating? = nil, brazilAgeRatingV2: BrazilAgeRatingV2? = nil, franceAgeRating: FranceAgeRating? = nil, koreaAgeRating: KoreaAgeRating? = nil, kidsAgeBand: KidsAgeBand? = nil) {
			self.appStoreState = appStoreState
			self.state = state
			self.appStoreAgeRating = appStoreAgeRating
			self.australiaAgeRating = australiaAgeRating
			self.brazilAgeRating = brazilAgeRating
			self.brazilAgeRatingV2 = brazilAgeRatingV2
			self.franceAgeRating = franceAgeRating
			self.koreaAgeRating = koreaAgeRating
			self.kidsAgeBand = kidsAgeBand
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appStoreState = try values.decodeIfPresent(AppStoreVersionState.self, forKey: "appStoreState")
			self.state = try values.decodeIfPresent(State.self, forKey: "state")
			self.appStoreAgeRating = try values.decodeIfPresent(AppStoreAgeRating.self, forKey: "appStoreAgeRating")
			self.australiaAgeRating = try values.decodeIfPresent(AustraliaAgeRating.self, forKey: "australiaAgeRating")
			self.brazilAgeRating = try values.decodeIfPresent(BrazilAgeRating.self, forKey: "brazilAgeRating")
			self.brazilAgeRatingV2 = try values.decodeIfPresent(BrazilAgeRatingV2.self, forKey: "brazilAgeRatingV2")
			self.franceAgeRating = try values.decodeIfPresent(FranceAgeRating.self, forKey: "franceAgeRating")
			self.koreaAgeRating = try values.decodeIfPresent(KoreaAgeRating.self, forKey: "koreaAgeRating")
			self.kidsAgeBand = try values.decodeIfPresent(KidsAgeBand.self, forKey: "kidsAgeBand")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appStoreState, forKey: "appStoreState")
			try values.encodeIfPresent(state, forKey: "state")
			try values.encodeIfPresent(appStoreAgeRating, forKey: "appStoreAgeRating")
			try values.encodeIfPresent(australiaAgeRating, forKey: "australiaAgeRating")
			try values.encodeIfPresent(brazilAgeRating, forKey: "brazilAgeRating")
			try values.encodeIfPresent(brazilAgeRatingV2, forKey: "brazilAgeRatingV2")
			try values.encodeIfPresent(franceAgeRating, forKey: "franceAgeRating")
			try values.encodeIfPresent(koreaAgeRating, forKey: "koreaAgeRating")
			try values.encodeIfPresent(kidsAgeBand, forKey: "kidsAgeBand")
		}
	}

	public struct Relationships: Codable, Equatable {
		public var app: App?
		public var ageRatingDeclaration: AgeRatingDeclaration?
		public var appInfoLocalizations: AppInfoLocalizations?
		public var primaryCategory: PrimaryCategory?
		public var primarySubcategoryOne: PrimarySubcategoryOne?
		public var primarySubcategoryTwo: PrimarySubcategoryTwo?
		public var secondaryCategory: SecondaryCategory?
		public var secondarySubcategoryOne: SecondarySubcategoryOne?
		public var secondarySubcategoryTwo: SecondarySubcategoryTwo?

		public struct App: Codable, Equatable {
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case apps
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AgeRatingDeclaration: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case ageRatingDeclarations
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AppInfoLocalizations: Codable, Equatable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appInfoLocalizations
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct PrimaryCategory: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCategories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct PrimarySubcategoryOne: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCategories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct PrimarySubcategoryTwo: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCategories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct SecondaryCategory: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCategories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct SecondarySubcategoryOne: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCategories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct SecondarySubcategoryTwo: Codable, Equatable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Equatable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCategories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(app: App? = nil, ageRatingDeclaration: AgeRatingDeclaration? = nil, appInfoLocalizations: AppInfoLocalizations? = nil, primaryCategory: PrimaryCategory? = nil, primarySubcategoryOne: PrimarySubcategoryOne? = nil, primarySubcategoryTwo: PrimarySubcategoryTwo? = nil, secondaryCategory: SecondaryCategory? = nil, secondarySubcategoryOne: SecondarySubcategoryOne? = nil, secondarySubcategoryTwo: SecondarySubcategoryTwo? = nil) {
			self.app = app
			self.ageRatingDeclaration = ageRatingDeclaration
			self.appInfoLocalizations = appInfoLocalizations
			self.primaryCategory = primaryCategory
			self.primarySubcategoryOne = primarySubcategoryOne
			self.primarySubcategoryTwo = primarySubcategoryTwo
			self.secondaryCategory = secondaryCategory
			self.secondarySubcategoryOne = secondarySubcategoryOne
			self.secondarySubcategoryTwo = secondarySubcategoryTwo
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.app = try values.decodeIfPresent(App.self, forKey: "app")
			self.ageRatingDeclaration = try values.decodeIfPresent(AgeRatingDeclaration.self, forKey: "ageRatingDeclaration")
			self.appInfoLocalizations = try values.decodeIfPresent(AppInfoLocalizations.self, forKey: "appInfoLocalizations")
			self.primaryCategory = try values.decodeIfPresent(PrimaryCategory.self, forKey: "primaryCategory")
			self.primarySubcategoryOne = try values.decodeIfPresent(PrimarySubcategoryOne.self, forKey: "primarySubcategoryOne")
			self.primarySubcategoryTwo = try values.decodeIfPresent(PrimarySubcategoryTwo.self, forKey: "primarySubcategoryTwo")
			self.secondaryCategory = try values.decodeIfPresent(SecondaryCategory.self, forKey: "secondaryCategory")
			self.secondarySubcategoryOne = try values.decodeIfPresent(SecondarySubcategoryOne.self, forKey: "secondarySubcategoryOne")
			self.secondarySubcategoryTwo = try values.decodeIfPresent(SecondarySubcategoryTwo.self, forKey: "secondarySubcategoryTwo")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(app, forKey: "app")
			try values.encodeIfPresent(ageRatingDeclaration, forKey: "ageRatingDeclaration")
			try values.encodeIfPresent(appInfoLocalizations, forKey: "appInfoLocalizations")
			try values.encodeIfPresent(primaryCategory, forKey: "primaryCategory")
			try values.encodeIfPresent(primarySubcategoryOne, forKey: "primarySubcategoryOne")
			try values.encodeIfPresent(primarySubcategoryTwo, forKey: "primarySubcategoryTwo")
			try values.encodeIfPresent(secondaryCategory, forKey: "secondaryCategory")
			try values.encodeIfPresent(secondarySubcategoryOne, forKey: "secondarySubcategoryOne")
			try values.encodeIfPresent(secondarySubcategoryTwo, forKey: "secondarySubcategoryTwo")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
