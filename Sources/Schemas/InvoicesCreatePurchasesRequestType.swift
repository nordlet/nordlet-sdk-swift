import Foundation

public enum InvoicesCreatePurchasesRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}