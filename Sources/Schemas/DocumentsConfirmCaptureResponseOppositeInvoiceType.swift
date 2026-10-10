import Foundation

public enum DocumentsConfirmCaptureResponseOppositeInvoiceType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}