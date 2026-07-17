import Foundation

public enum PostV1SalesInvoicesApplyAdvanceResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}