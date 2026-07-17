import Foundation

public enum PostV1DeclarationsSubmissionsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}