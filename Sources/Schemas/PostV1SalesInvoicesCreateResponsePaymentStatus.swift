import Foundation

public enum PostV1SalesInvoicesCreateResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}