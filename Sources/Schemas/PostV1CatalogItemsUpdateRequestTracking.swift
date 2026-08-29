import Foundation

public enum PostV1CatalogItemsUpdateRequestTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}