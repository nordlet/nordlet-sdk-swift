import Foundation

public enum ActsListSalesResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}