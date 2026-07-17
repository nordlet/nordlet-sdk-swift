import Foundation

public enum PostV1PurchasesInvoicesUpdateResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}