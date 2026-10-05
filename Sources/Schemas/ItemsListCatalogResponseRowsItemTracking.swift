import Foundation

public enum ItemsListCatalogResponseRowsItemTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}