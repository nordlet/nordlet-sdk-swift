import Foundation

public enum ItemsCreateCatalogRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case product
    case service
    case set
}