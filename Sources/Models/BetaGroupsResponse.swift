//
//  BetaGroupsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A response containing a list of resources.
public struct BetaGroupsResponse: Decodable {

    /// (Required) The resource data.
    public let data: [BetaGroup]

    /// Relationship data to include in the response.￼
    ///  Possible types: App, Build, BetaTester
    public let include: [BetaGroupsResponse.Included]?

    /// (Required) Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
    
    public enum Included: Decodable {
        case app(App)
        case build(Build)
        case betaTester(BetaTester)
        public init(from decoder: Decoder) throws {
            if let app = try? App(from: decoder) {
                self = .app(app)
                return
            }
            
            if let build = try? Build(from: decoder) {
                self = .build(build)
                return
            }
            
            if let betaTester = try? BetaTester(from: decoder) {
                self = .betaTester(betaTester)
                return
            }
            
            throw DecodingError.typeMismatch(
                Included.self,
                DecodingError.Context(codingPath: [], debugDescription: "Not convertable to \(Included.self)")
            )
        }
    }
}
