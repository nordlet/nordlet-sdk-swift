import Foundation

public enum PostV1DeclarationsLtSaftSendResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}