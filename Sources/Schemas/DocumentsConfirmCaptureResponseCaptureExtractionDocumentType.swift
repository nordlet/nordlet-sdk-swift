import Foundation

public enum DocumentsConfirmCaptureResponseCaptureExtractionDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}