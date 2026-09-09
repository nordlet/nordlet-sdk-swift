import Foundation

public enum PostV1SalesInvoicesUnlockResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}