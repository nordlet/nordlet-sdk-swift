import Foundation

public enum InvoicesRegisterPurchasesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}