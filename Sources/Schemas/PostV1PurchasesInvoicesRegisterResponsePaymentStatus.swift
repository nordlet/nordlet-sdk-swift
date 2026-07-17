import Foundation

public enum PostV1PurchasesInvoicesRegisterResponsePaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}