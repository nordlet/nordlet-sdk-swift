import Foundation

public enum PostV1DeclarationsSubmissionsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}