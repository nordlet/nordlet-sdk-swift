import Foundation

public enum ItemsUpdateCatalogRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}