import Foundation

public enum DocumentsConfirmCaptureResponseInvoiceType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}