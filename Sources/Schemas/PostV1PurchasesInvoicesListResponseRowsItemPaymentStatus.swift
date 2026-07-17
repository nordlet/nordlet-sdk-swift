import Foundation

public enum PostV1PurchasesInvoicesListResponseRowsItemPaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}