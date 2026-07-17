import Foundation

public enum PostV1DeclarationsSubmissionsMarkRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}