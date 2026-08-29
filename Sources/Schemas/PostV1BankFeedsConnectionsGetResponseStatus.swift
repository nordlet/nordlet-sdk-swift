import Foundation

public enum PostV1BankFeedsConnectionsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case active
    case expired
    case revoked
    case error
}