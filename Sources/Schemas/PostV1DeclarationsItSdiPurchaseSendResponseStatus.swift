import Foundation

public enum PostV1DeclarationsItSdiPurchaseSendResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}