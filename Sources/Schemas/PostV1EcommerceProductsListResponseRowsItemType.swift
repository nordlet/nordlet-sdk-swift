import Foundation

public enum PostV1EcommerceProductsListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}