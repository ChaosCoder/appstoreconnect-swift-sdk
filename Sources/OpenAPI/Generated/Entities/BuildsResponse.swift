// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BuildsResponse: Codable, Equatable {
	public var data: [Build]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable, Equatable {
		case prereleaseVersion(PrereleaseVersion)
		case betaTester(BetaTester)
		case betaGroup(BetaGroup)
		case betaBuildLocalization(BetaBuildLocalization)
		case appEncryptionDeclaration(AppEncryptionDeclaration)
		case betaAppReviewSubmission(BetaAppReviewSubmission)
		case app(App)
		case buildBetaDetail(BuildBetaDetail)
		case appStoreVersion(AppStoreVersion)
		case buildIcon(BuildIcon)
		case buildBundle(BuildBundle)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(PrereleaseVersion.self) {
				self = .prereleaseVersion(value)
			} else if let value = try? container.decode(BetaTester.self) {
				self = .betaTester(value)
			} else if let value = try? container.decode(BetaGroup.self) {
				self = .betaGroup(value)
			} else if let value = try? container.decode(BetaBuildLocalization.self) {
				self = .betaBuildLocalization(value)
			} else if let value = try? container.decode(AppEncryptionDeclaration.self) {
				self = .appEncryptionDeclaration(value)
			} else if let value = try? container.decode(BetaAppReviewSubmission.self) {
				self = .betaAppReviewSubmission(value)
			} else if let value = try? container.decode(App.self) {
				self = .app(value)
			} else if let value = try? container.decode(BuildBetaDetail.self) {
				self = .buildBetaDetail(value)
			} else if let value = try? container.decode(AppStoreVersion.self) {
				self = .appStoreVersion(value)
			} else if let value = try? container.decode(BuildIcon.self) {
				self = .buildIcon(value)
			} else if let value = try? container.decode(BuildBundle.self) {
				self = .buildBundle(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (PrereleaseVersion, BetaTester, BetaGroup, BetaBuildLocalization, AppEncryptionDeclaration, BetaAppReviewSubmission, App, BuildBetaDetail, AppStoreVersion, BuildIcon, BuildBundle)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .prereleaseVersion(let value): try container.encode(value)
			case .betaTester(let value): try container.encode(value)
			case .betaGroup(let value): try container.encode(value)
			case .betaBuildLocalization(let value): try container.encode(value)
			case .appEncryptionDeclaration(let value): try container.encode(value)
			case .betaAppReviewSubmission(let value): try container.encode(value)
			case .app(let value): try container.encode(value)
			case .buildBetaDetail(let value): try container.encode(value)
			case .appStoreVersion(let value): try container.encode(value)
			case .buildIcon(let value): try container.encode(value)
			case .buildBundle(let value): try container.encode(value)
			}
		}
	}

	public init(data: [Build], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([Build].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
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
