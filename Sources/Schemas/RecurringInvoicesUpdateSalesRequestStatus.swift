import Foundation

public enum RecurringInvoicesUpdateSalesRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case paused
}