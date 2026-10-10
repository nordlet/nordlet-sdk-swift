import Foundation

public enum DocumentsConfirmCaptureResponseOppositeInvoicePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}