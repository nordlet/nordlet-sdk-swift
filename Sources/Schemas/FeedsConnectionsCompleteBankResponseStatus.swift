import Foundation

public enum FeedsConnectionsCompleteBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case active
    case expired
    case revoked
    case error
}