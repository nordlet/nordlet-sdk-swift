import Foundation

public enum DocumentsListCaptureResponseRowsItemExtractionDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}