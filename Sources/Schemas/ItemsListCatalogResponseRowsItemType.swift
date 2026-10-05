import Foundation

public enum ItemsListCatalogResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}