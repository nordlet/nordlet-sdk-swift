import Foundation

public enum InvoiceTemplatesListSalesResponseRowsItemDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}