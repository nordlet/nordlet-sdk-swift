import Foundation

public enum PlKsefReceiptDeclarationsResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}