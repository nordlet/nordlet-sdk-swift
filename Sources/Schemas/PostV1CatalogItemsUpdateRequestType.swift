import Foundation

public enum PostV1CatalogItemsUpdateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}