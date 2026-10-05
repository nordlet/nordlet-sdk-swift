import Foundation

public enum ItSdiPurchaseSendDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}