import Foundation

public enum PostV1OperationTypesCreateResponseInvoiceType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
    case proforma
    case advance
}