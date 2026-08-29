import Foundation

public enum PostV1CatalogItemsCreateRequestTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}