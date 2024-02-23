// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiProducts.WithID {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/ciProducts/{id}/app`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciProducts-app-get_to_one_related")
		}

		public struct GetParameters {
			public var fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var fieldsReviewSubmissions: [FieldsReviewSubmissions]?
			public var fieldsBetaGroups: [FieldsBetaGroups]?
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsAppEvents: [FieldsAppEvents]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var fieldsAppPreOrders: [FieldsAppPreOrders]?
			public var fieldsAppPrices: [FieldsAppPrices]?
			public var fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?
			public var fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limitAppEncryptionDeclarations: Int?
			public var limitBetaGroups: Int?
			public var limitAppStoreVersions: Int?
			public var limitPreReleaseVersions: Int?
			public var limitBetaAppLocalizations: Int?
			public var limitBuilds: Int?
			public var limitAppInfos: Int?
			public var limitAppClips: Int?
			public var limitPrices: Int?
			public var limitAvailableTerritories: Int?
			public var limitInAppPurchases: Int?
			public var limitSubscriptionGroups: Int?
			public var limitGameCenterEnabledVersions: Int?
			public var limitAppCustomProductPages: Int?
			public var limitInAppPurchasesV2: Int?
			public var limitPromotedPurchases: Int?
			public var limitAppEvents: Int?
			public var limitReviewSubmissions: Int?
			public var limitAppStoreVersionExperimentsV2: Int?
			public var include: [Include]?

			public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
				case app
				case contactEmail
				case contactFirstName
				case contactLastName
				case contactPhone
				case demoAccountName
				case demoAccountPassword
				case demoAccountRequired
				case notes
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

			public enum FieldsCiProducts: String, Codable, CaseIterable {
				case additionalRepositories
				case app
				case buildRuns
				case bundleID = "bundleId"
				case createdDate
				case name
				case primaryRepositories
				case productType
				case workflows
			}

			public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
				case app
				case appStoreVersionForReview
				case canceled
				case items
				case lastUpdatedByActor
				case platform
				case state
				case submitted
				case submittedByActor
				case submittedDate
			}

			public enum FieldsBetaGroups: String, Codable, CaseIterable {
				case app
				case betaTesters
				case builds
				case createdDate
				case feedbackEnabled
				case hasAccessToAllBuilds
				case iosBuildsAvailableForAppleSiliconMac
				case isInternalGroup
				case name
				case publicLink
				case publicLinkEnabled
				case publicLinkID = "publicLinkId"
				case publicLinkLimit
				case publicLinkLimitEnabled
			}

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
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

			public enum FieldsAppEvents: String, Codable, CaseIterable {
				case app
				case archivedTerritorySchedules
				case badge
				case deepLink
				case eventState
				case localizations
				case primaryLocale
				case priority
				case purchaseRequirement
				case purpose
				case referenceName
				case territorySchedules
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
			}

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
				case app
				case description
				case feedbackEmail
				case locale
				case marketingURL = "marketingUrl"
				case privacyPolicyURL = "privacyPolicyUrl"
				case tvOsPrivacyPolicy
			}

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appInfoLocalizations
				case appStoreAgeRating
				case appStoreState
				case brazilAgeRating
				case brazilAgeRatingV2
				case kidsAgeBand
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
				case state
			}

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
				case app
				case builds
				case platform
				case version
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case app
				case appStoreReviewScreenshot
				case apps
				case content
				case contentHosting
				case familySharable
				case iapPriceSchedule
				case inAppPurchaseAvailability
				case inAppPurchaseLocalizations
				case inAppPurchaseType
				case name
				case pricePoints
				case productID = "productId"
				case promotedPurchase
				case referenceName
				case reviewNote
				case state
			}

			public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
				case app
				case referenceName
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public enum FieldsAppPreOrders: String, Codable, CaseIterable {
				case app
				case appReleaseDate
				case preOrderAvailableDate
			}

			public enum FieldsAppPrices: String, Codable, CaseIterable {
				case app
				case priceTier
			}

			public enum FieldsGameCenterEnabledVersions: String, Codable, CaseIterable {
				case app
				case compatibleVersions
				case iconAsset
				case platform
				case versionString
			}

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case app
				case appStoreVersionExperimentTreatments
				case controlVersions
				case endDate
				case latestControlVersion
				case name
				case platform
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable {
				case duration
				case optIn
				case renewalType
				case sandboxOptIn
			}

			public enum FieldsEndUserLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
				case territories
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case alternativeDistributionPackage
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case appVersionState
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case reviewType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case app
				case appDescription
				case appEncryptionDeclarationDocument
				case appEncryptionDeclarationState
				case availableOnFrenchStore
				case builds
				case codeValue
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case createdDate
				case documentName
				case documentType
				case documentURL = "documentUrl"
				case exempt
				case platform
				case uploadedDate
				case usesEncryption
			}

			public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
				case app
				case appCustomProductPageVersions
				case appStoreVersionTemplate
				case customProductPageTemplate
				case name
				case url
				case visible
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case builds
				case ciProduct
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case preOrder
				case preReleaseVersions
				case prices
				case promotedPurchases
				case reviewSubmissions
				case subscriptionGracePeriod
				case subscriptionGroups
			}

			public init(fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAppEncryptionDeclarations: Int? = nil, limitBetaGroups: Int? = nil, limitAppStoreVersions: Int? = nil, limitPreReleaseVersions: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBuilds: Int? = nil, limitAppInfos: Int? = nil, limitAppClips: Int? = nil, limitPrices: Int? = nil, limitAvailableTerritories: Int? = nil, limitInAppPurchases: Int? = nil, limitSubscriptionGroups: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitAppCustomProductPages: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPromotedPurchases: Int? = nil, limitAppEvents: Int? = nil, limitReviewSubmissions: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, include: [Include]? = nil) {
				self.fieldsBetaAppReviewDetails = fieldsBetaAppReviewDetails
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsCiProducts = fieldsCiProducts
				self.fieldsReviewSubmissions = fieldsReviewSubmissions
				self.fieldsBetaGroups = fieldsBetaGroups
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsApps = fieldsApps
				self.fieldsAppEvents = fieldsAppEvents
				self.fieldsBuilds = fieldsBuilds
				self.fieldsBetaLicenseAgreements = fieldsBetaLicenseAgreements
				self.fieldsAppClips = fieldsAppClips
				self.fieldsBetaAppLocalizations = fieldsBetaAppLocalizations
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.fieldsAppPreOrders = fieldsAppPreOrders
				self.fieldsAppPrices = fieldsAppPrices
				self.fieldsGameCenterEnabledVersions = fieldsGameCenterEnabledVersions
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsSubscriptionGracePeriods = fieldsSubscriptionGracePeriods
				self.fieldsEndUserLicenseAgreements = fieldsEndUserLicenseAgreements
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.fieldsAppCustomProductPages = fieldsAppCustomProductPages
				self.fieldsTerritories = fieldsTerritories
				self.limitAppEncryptionDeclarations = limitAppEncryptionDeclarations
				self.limitBetaGroups = limitBetaGroups
				self.limitAppStoreVersions = limitAppStoreVersions
				self.limitPreReleaseVersions = limitPreReleaseVersions
				self.limitBetaAppLocalizations = limitBetaAppLocalizations
				self.limitBuilds = limitBuilds
				self.limitAppInfos = limitAppInfos
				self.limitAppClips = limitAppClips
				self.limitPrices = limitPrices
				self.limitAvailableTerritories = limitAvailableTerritories
				self.limitInAppPurchases = limitInAppPurchases
				self.limitSubscriptionGroups = limitSubscriptionGroups
				self.limitGameCenterEnabledVersions = limitGameCenterEnabledVersions
				self.limitAppCustomProductPages = limitAppCustomProductPages
				self.limitInAppPurchasesV2 = limitInAppPurchasesV2
				self.limitPromotedPurchases = limitPromotedPurchases
				self.limitAppEvents = limitAppEvents
				self.limitReviewSubmissions = limitReviewSubmissions
				self.limitAppStoreVersionExperimentsV2 = limitAppStoreVersionExperimentsV2
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
				encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
				encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
				encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]")
				encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limitAppEncryptionDeclarations, forKey: "limit[appEncryptionDeclarations]")
				encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
				encoder.encode(limitAppStoreVersions, forKey: "limit[appStoreVersions]")
				encoder.encode(limitPreReleaseVersions, forKey: "limit[preReleaseVersions]")
				encoder.encode(limitBetaAppLocalizations, forKey: "limit[betaAppLocalizations]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				encoder.encode(limitAppInfos, forKey: "limit[appInfos]")
				encoder.encode(limitAppClips, forKey: "limit[appClips]")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
				encoder.encode(limitInAppPurchases, forKey: "limit[inAppPurchases]")
				encoder.encode(limitSubscriptionGroups, forKey: "limit[subscriptionGroups]")
				encoder.encode(limitGameCenterEnabledVersions, forKey: "limit[gameCenterEnabledVersions]")
				encoder.encode(limitAppCustomProductPages, forKey: "limit[appCustomProductPages]")
				encoder.encode(limitInAppPurchasesV2, forKey: "limit[inAppPurchasesV2]")
				encoder.encode(limitPromotedPurchases, forKey: "limit[promotedPurchases]")
				encoder.encode(limitAppEvents, forKey: "limit[appEvents]")
				encoder.encode(limitReviewSubmissions, forKey: "limit[reviewSubmissions]")
				encoder.encode(limitAppStoreVersionExperimentsV2, forKey: "limit[appStoreVersionExperimentsV2]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
