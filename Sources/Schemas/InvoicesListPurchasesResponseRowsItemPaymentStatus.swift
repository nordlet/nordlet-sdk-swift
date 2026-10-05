import Foundation

public enum InvoicesListPurchasesResponseRowsItemPaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}