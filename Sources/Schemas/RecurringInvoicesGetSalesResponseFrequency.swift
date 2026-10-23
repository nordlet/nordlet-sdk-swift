import Foundation

public enum RecurringInvoicesGetSalesResponseFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case weekly
    case monthly
    case quarterly
    case annual
}