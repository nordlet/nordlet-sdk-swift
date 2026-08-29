import Foundation

public enum PostV1CatalogItemsGetResponseTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}