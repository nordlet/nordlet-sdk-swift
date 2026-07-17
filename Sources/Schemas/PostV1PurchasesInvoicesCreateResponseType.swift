import Foundation

public enum PostV1PurchasesInvoicesCreateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}