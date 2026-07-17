import Foundation

public enum PostV1SalesInvoicesUpdateResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}