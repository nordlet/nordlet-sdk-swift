import Foundation

public enum DocumentsUploadCaptureResponseExtractionDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}