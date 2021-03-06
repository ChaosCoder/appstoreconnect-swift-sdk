//
//  BuildUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A request containing a single resource.
public struct BuildUpdateRequest: Decodable {

    /// (Required) The resource data.
    public let data: BuildUpdateRequest.Data
    
    public struct Data: Decodable {
    
        /// The resource's attributes.
        public let attributes: BuildUpdateRequest.Data.Attributes?
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// Navigational links to related data and included resource types and IDs.
        public let relationships: BuildUpdateRequest.Data.Relationships?
    
        /// (Required) The resource type.Value: builds
        public let type: String
    }
}

/// MARK: BuildUpdateRequest.Data
extension BuildUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Decodable {
    
        /// A Boolean value that indicates if the build has expired. An expired build is unavailable for testing.
        public let expired: Bool?
    
        /// A Boolean value that indicates whether the build uses non-exempt encryption.
        public let usesNonExemptEncryption: Bool?
    }
    
    public struct Relationships: Decodable {
    
        /// BuildUpdateRequest.Data.Relationships.AppEncryptionDeclaration
        public let appEncryptionDeclaration: BuildUpdateRequest.Data.Relationships.AppEncryptionDeclaration?
    }
}

/// MARK: BuildUpdateRequest.Data.Relationships
extension BuildUpdateRequest.Data.Relationships {
    
    public struct AppEncryptionDeclaration: Decodable {
    
        /// BuildUpdateRequest.Data.Relationships.AppEncryptionDeclaration.Data
        public let data: BuildUpdateRequest.Data.Relationships.AppEncryptionDeclaration.Data?
    }
}

/// MARK: BuildUpdateRequest.Data.Relationships.AppEncryptionDeclaration
extension BuildUpdateRequest.Data.Relationships.AppEncryptionDeclaration {
    
    public struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// (Required) The resource type.Value: appEncryptionDeclarations
        public let type: String
    }
}
