// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var betaAppLocalizations: BetaAppLocalizations {
		BetaAppLocalizations(path: path + "/betaAppLocalizations")
	}

	public struct BetaAppLocalizations {
		/// Path: `/v1/apps/{id}/relationships/betaAppLocalizations`
		public let path: String
	}
}