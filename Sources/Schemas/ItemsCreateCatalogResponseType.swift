import Foundation

public enum ItemsCreateCatalogResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}