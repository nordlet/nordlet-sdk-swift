import Foundation

public enum PostV1SalesInvoicesGetResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}