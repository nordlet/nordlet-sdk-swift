import Foundation

public enum InvoicesUpdatePurchasesResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}