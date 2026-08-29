import Foundation

public enum PostV1CatalogItemsListResponseRowsItemTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}