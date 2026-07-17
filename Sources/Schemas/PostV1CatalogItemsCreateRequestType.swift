import Foundation

public enum PostV1CatalogItemsCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}