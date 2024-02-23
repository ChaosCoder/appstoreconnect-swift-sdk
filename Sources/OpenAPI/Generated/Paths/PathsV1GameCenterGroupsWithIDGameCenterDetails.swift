// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterGroups.WithID {
	public var gameCenterDetails: GameCenterDetails {
		GameCenterDetails(path: path + "/gameCenterDetails")
	}

	public struct GameCenterDetails {
		/// Path: `/v1/gameCenterGroups/{id}/gameCenterDetails`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterDetailsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterGroups-gameCenterDetails-get_to_many_related")
		}

		public struct GetParameters {
			public var filterGameCenterAppVersionsEnabled: [String]?
			public var fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?
			public var fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]?
			public var fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?
			public var fieldsGameCenterGroups: [FieldsGameCenterGroups]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]?
			public var fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]?
			public var limit: Int?
			public var limitGameCenterAppVersions: Int?
			public var limitGameCenterLeaderboards: Int?
			public var limitGameCenterLeaderboardSets: Int?
			public var limitGameCenterAchievements: Int?
			public var limitAchievementReleases: Int?
			public var limitLeaderboardReleases: Int?
			public var limitLeaderboardSetReleases: Int?
			public var include: [Include]?

			public enum FieldsGameCenterAchievementReleases: String, Codable, CaseIterable {
				case gameCenterAchievement
				case gameCenterDetail
				case live
			}

			public enum FieldsGameCenterLeaderboardSetReleases: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterLeaderboardSet
				case live
			}

			public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboards
				case groupLeaderboardSet
				case localizations
				case referenceName
				case releases
				case vendorIdentifier
			}

			public enum FieldsGameCenterGroups: String, Codable, CaseIterable {
				case gameCenterAchievements
				case gameCenterDetails
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
				case referenceName
			}

			public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
				case achievementReleases
				case app
				case arcadeEnabled
				case challengeEnabled
				case defaultGroupLeaderboard
				case defaultLeaderboard
				case gameCenterAchievements
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case archived
				case defaultFormatter
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case groupLeaderboard
				case localizations
				case recurrenceDuration
				case recurrenceRule
				case recurrenceStartDate
				case referenceName
				case releases
				case scoreRangeEnd
				case scoreRangeStart
				case scoreSortType
				case submissionType
				case vendorIdentifier
			}

			public enum FieldsGameCenterAppVersions: String, Codable, CaseIterable {
				case appStoreVersion
				case compatibilityVersions
				case enabled
			}

			public enum FieldsGameCenterAchievements: String, Codable, CaseIterable {
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupAchievement
				case localizations
				case points
				case referenceName
				case releases
				case repeatable
				case showBeforeEarned
				case vendorIdentifier
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case alternativeDistributionKey
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case marketplaceSearchDetail
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum FieldsGameCenterLeaderboardReleases: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterLeaderboard
				case live
			}

			public enum Include: String, Codable, CaseIterable {
				case achievementReleases
				case app
				case defaultGroupLeaderboard
				case defaultLeaderboard
				case gameCenterAchievements
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public init(filterGameCenterAppVersionsEnabled: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]? = nil, limit: Int? = nil, limitGameCenterAppVersions: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterAchievements: Int? = nil, limitAchievementReleases: Int? = nil, limitLeaderboardReleases: Int? = nil, limitLeaderboardSetReleases: Int? = nil, include: [Include]? = nil) {
				self.filterGameCenterAppVersionsEnabled = filterGameCenterAppVersionsEnabled
				self.fieldsGameCenterAchievementReleases = fieldsGameCenterAchievementReleases
				self.fieldsGameCenterLeaderboardSetReleases = fieldsGameCenterLeaderboardSetReleases
				self.fieldsGameCenterLeaderboardSets = fieldsGameCenterLeaderboardSets
				self.fieldsGameCenterGroups = fieldsGameCenterGroups
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.fieldsGameCenterAppVersions = fieldsGameCenterAppVersions
				self.fieldsGameCenterAchievements = fieldsGameCenterAchievements
				self.fieldsApps = fieldsApps
				self.fieldsGameCenterLeaderboardReleases = fieldsGameCenterLeaderboardReleases
				self.limit = limit
				self.limitGameCenterAppVersions = limitGameCenterAppVersions
				self.limitGameCenterLeaderboards = limitGameCenterLeaderboards
				self.limitGameCenterLeaderboardSets = limitGameCenterLeaderboardSets
				self.limitGameCenterAchievements = limitGameCenterAchievements
				self.limitAchievementReleases = limitAchievementReleases
				self.limitLeaderboardReleases = limitLeaderboardReleases
				self.limitLeaderboardSetReleases = limitLeaderboardSetReleases
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterGameCenterAppVersionsEnabled, forKey: "filter[gameCenterAppVersions.enabled]")
				encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
				encoder.encode(fieldsGameCenterLeaderboardSetReleases, forKey: "fields[gameCenterLeaderboardSetReleases]")
				encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
				encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(fieldsGameCenterAppVersions, forKey: "fields[gameCenterAppVersions]")
				encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsGameCenterLeaderboardReleases, forKey: "fields[gameCenterLeaderboardReleases]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitGameCenterAppVersions, forKey: "limit[gameCenterAppVersions]")
				encoder.encode(limitGameCenterLeaderboards, forKey: "limit[gameCenterLeaderboards]")
				encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
				encoder.encode(limitGameCenterAchievements, forKey: "limit[gameCenterAchievements]")
				encoder.encode(limitAchievementReleases, forKey: "limit[achievementReleases]")
				encoder.encode(limitLeaderboardReleases, forKey: "limit[leaderboardReleases]")
				encoder.encode(limitLeaderboardSetReleases, forKey: "limit[leaderboardSetReleases]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
