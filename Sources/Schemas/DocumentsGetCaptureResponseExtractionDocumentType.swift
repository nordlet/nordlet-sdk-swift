import Foundation

public enum DocumentsGetCaptureResponseExtractionDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}