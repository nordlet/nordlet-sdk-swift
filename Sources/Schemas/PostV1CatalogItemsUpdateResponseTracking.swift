import Foundation

public enum PostV1CatalogItemsUpdateResponseTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}