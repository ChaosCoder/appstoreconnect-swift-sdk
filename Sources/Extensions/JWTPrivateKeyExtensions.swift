import CryptoKit

extension JWT.PrivateKey: Equatable, Hashable {
    
    public static func == (lhs: P256.Signing.PrivateKey, rhs: P256.Signing.PrivateKey) -> Bool {
        lhs.rawRepresentation == rhs.rawRepresentation
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(rawRepresentation)
    }
    
}
