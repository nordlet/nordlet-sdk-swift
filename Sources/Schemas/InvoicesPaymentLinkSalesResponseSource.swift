import Foundation

public enum InvoicesPaymentLinkSalesResponseSource: String, Codable, Hashable, CaseIterable, Sendable {
    case stripe
    case template
}