import Foundation

public enum InvoiceTemplatesCreateSalesResponseDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}