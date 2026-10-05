import Foundation

public enum InvoicesUpdatePurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}