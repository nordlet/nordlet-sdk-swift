import Foundation

public enum PostV1CatalogItemsUpdateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}