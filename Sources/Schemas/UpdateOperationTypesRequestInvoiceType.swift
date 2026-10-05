import Foundation

public enum UpdateOperationTypesRequestInvoiceType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
    case proforma
    case advance
}