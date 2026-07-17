import Foundation

public enum PostV1DeclarationsSubmissionsMarkResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}