import Foundation

public enum InvoicesListPurchasesResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}