import Foundation

public enum PostV1DeclarationsPlKsefReceiptResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}