import Foundation

public enum InvoiceTemplatesUpdateSalesRequestDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}