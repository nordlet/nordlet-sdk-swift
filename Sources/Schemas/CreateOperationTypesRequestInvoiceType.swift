import Foundation

public enum CreateOperationTypesRequestInvoiceType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
    case proforma
    case advance
}