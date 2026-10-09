import Foundation

public enum DeferralsListPurchasesResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case posted
    case cancelled
}