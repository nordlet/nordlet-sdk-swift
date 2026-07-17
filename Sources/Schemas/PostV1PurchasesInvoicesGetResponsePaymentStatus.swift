import Foundation

public enum PostV1PurchasesInvoicesGetResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}