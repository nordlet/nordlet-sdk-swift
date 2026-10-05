import Foundation

public enum InvoicesApplyAdvanceSalesResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}