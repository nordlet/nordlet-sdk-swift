import Foundation

public enum PostV1PurchasesInvoicesRegisterResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}