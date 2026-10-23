import Foundation

public enum RecurringInvoicesCreateSalesRequestFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case weekly
    case monthly
    case quarterly
    case annual
}