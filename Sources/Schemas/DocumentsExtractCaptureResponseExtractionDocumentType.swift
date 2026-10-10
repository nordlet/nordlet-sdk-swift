import Foundation

public enum DocumentsExtractCaptureResponseExtractionDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}