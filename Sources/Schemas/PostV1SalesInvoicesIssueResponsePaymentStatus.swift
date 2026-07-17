import Foundation

public enum PostV1SalesInvoicesIssueResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}