import Foundation

public enum PostV1SalesInvoicesUpdateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
    case proforma
    case advance
}