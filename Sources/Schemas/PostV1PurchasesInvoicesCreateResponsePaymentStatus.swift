import Foundation

public enum PostV1PurchasesInvoicesCreateResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}