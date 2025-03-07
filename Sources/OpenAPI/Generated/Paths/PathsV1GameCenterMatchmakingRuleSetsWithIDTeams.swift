// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterMatchmakingRuleSets.WithID {
	public var teams: Teams {
		Teams(path: path + "/teams")
	}

	public struct Teams {
		/// Path: `/v1/gameCenterMatchmakingRuleSets/{id}/teams`
		public let path: String

		public func get(fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingTeamsResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterMatchmakingTeams, limit), id: "gameCenterMatchmakingRuleSets_teams_getToManyRelated")
		}

		private func makeGetQuery(_ fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsGameCenterMatchmakingTeams, forKey: "fields[gameCenterMatchmakingTeams]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsGameCenterMatchmakingTeams: String, Codable, CaseIterable {
			case referenceName
			case minPlayers
			case maxPlayers
		}
	}
}
