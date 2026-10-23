import Foundation

public enum RecurringInvoicesGetSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case paused
    case finished
}