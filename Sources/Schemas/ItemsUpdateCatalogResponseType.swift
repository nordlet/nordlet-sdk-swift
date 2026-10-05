import Foundation

public enum ItemsUpdateCatalogResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}