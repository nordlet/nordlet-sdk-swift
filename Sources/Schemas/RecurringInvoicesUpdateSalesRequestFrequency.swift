import Foundation

public enum RecurringInvoicesUpdateSalesRequestFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case weekly
    case monthly
    case quarterly
    case annual
}