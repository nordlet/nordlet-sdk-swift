import Foundation

public enum OrdersListProductionResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}