import Foundation

public enum InvoicesGetPurchasesResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}