import Foundation

public enum RecurringInvoicesListSalesResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case paused
    case finished
}