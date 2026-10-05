import Foundation

public enum DocumentsConfirmCaptureResponseInvoicePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}