import Foundation

public enum PostV1CaptureDocumentsConfirmResponseInvoicePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}