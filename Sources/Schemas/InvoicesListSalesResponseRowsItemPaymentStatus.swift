import Foundation

public enum InvoicesListSalesResponseRowsItemPaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}