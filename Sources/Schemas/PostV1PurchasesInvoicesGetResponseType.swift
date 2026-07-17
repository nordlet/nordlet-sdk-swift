import Foundation

public enum PostV1PurchasesInvoicesGetResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}