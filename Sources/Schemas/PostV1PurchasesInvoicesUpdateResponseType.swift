import Foundation

public enum PostV1PurchasesInvoicesUpdateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}