import Foundation

public enum PostV1SalesInvoicesListResponseRowsItemPaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}