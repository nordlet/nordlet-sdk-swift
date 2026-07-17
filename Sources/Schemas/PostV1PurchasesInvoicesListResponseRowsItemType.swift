import Foundation

public enum PostV1PurchasesInvoicesListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}