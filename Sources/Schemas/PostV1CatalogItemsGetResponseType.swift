import Foundation

public enum PostV1CatalogItemsGetResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}