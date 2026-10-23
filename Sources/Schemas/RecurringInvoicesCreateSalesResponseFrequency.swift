import Foundation

public enum RecurringInvoicesCreateSalesResponseFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case weekly
    case monthly
    case quarterly
    case annual
}