import Foundation

public enum PostV1SalesInvoicesLockResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}