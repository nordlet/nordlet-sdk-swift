import Foundation

public enum ItemsGetCatalogResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}