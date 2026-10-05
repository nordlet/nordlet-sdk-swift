import Foundation

public enum InvoicesCreatePurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}