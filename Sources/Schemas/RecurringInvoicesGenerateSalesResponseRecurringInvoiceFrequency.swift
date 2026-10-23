import Foundation

public enum RecurringInvoicesGenerateSalesResponseRecurringInvoiceFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case weekly
    case monthly
    case quarterly
    case annual
}