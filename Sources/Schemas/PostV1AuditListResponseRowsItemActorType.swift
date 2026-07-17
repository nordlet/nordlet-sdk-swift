import Foundation

public enum PostV1AuditListResponseRowsItemActorType: String, Codable, Hashable, CaseIterable, Sendable {
    case user
    case apiKey = "api_key"
    case system
}