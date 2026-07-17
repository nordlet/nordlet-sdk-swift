import Foundation

public enum PostV1CatalogItemsCreateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}