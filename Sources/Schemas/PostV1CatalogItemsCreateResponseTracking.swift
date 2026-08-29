import Foundation

public enum PostV1CatalogItemsCreateResponseTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}