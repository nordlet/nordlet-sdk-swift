import Foundation

public enum ListAuditResponseRowsItemActorType: String, Codable, Hashable, CaseIterable, Sendable {
    case user
    case apiKey = "api_key"
    case system
}