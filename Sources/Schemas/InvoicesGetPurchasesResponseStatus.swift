import Foundation

public enum InvoicesGetPurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}