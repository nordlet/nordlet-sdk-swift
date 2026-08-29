import Foundation

public enum PostV1CaptureDocumentsConfirmResponseInvoiceStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}