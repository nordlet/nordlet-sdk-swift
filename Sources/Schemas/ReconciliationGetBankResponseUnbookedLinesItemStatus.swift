import Foundation

public enum ReconciliationGetBankResponseUnbookedLinesItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
    case ignored
}