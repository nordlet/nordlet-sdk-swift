import Foundation

public enum InvoicesReversePurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
    case reversed
}