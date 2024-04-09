// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterGroups.WithID.Relationships {
	public var gameCenterLeaderboards: GameCenterLeaderboards {
		GameCenterLeaderboards(path: path + "/gameCenterLeaderboards")
	}

	public struct GameCenterLeaderboards {
		/// Path: `/v1/gameCenterGroups/{id}/relationships/gameCenterLeaderboards`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterGroupGameCenterLeaderboardsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "gameCenterGroups-gameCenterLeaderboards-get_to_many_relationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterGroupGameCenterLeaderboardsLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterGroups-gameCenterLeaderboards-replace_to_many_relationship")
		}
	}
}