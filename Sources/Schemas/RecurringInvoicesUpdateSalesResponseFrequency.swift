import Foundation

public enum RecurringInvoicesUpdateSalesResponseFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case weekly
    case monthly
    case quarterly
    case annual
}