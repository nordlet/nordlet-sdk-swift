import Foundation

public enum DocumentsConfirmCaptureRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}