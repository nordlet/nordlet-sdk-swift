import Foundation

public enum InvoicesMatchPurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case matched
    case mismatched
}