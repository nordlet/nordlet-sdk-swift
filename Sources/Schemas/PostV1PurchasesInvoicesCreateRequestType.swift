import Foundation

public enum PostV1PurchasesInvoicesCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}