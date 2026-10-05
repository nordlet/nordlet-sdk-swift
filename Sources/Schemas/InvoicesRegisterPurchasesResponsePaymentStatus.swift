import Foundation

public enum InvoicesRegisterPurchasesResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}