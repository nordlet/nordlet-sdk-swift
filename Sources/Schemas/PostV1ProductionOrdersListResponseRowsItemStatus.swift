import Foundation

public enum PostV1ProductionOrdersListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}