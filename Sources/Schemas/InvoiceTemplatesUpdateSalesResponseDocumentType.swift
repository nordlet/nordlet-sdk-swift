import Foundation

public enum InvoiceTemplatesUpdateSalesResponseDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}