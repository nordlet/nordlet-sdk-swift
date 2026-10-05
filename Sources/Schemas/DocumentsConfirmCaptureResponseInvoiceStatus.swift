import Foundation

public enum DocumentsConfirmCaptureResponseInvoiceStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}