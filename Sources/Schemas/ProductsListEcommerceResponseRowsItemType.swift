import Foundation

public enum ProductsListEcommerceResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}