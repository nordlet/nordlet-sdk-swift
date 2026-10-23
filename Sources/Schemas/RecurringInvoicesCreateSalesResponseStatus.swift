import Foundation

public enum RecurringInvoicesCreateSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case paused
    case finished
}