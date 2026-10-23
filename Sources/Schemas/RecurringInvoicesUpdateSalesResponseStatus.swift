import Foundation

public enum RecurringInvoicesUpdateSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case paused
    case finished
}