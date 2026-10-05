import Foundation

public enum InvoicesCreatePurchasesResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}