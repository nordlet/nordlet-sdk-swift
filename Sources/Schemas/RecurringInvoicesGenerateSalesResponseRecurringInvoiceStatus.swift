import Foundation

public enum RecurringInvoicesGenerateSalesResponseRecurringInvoiceStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case paused
    case finished
}