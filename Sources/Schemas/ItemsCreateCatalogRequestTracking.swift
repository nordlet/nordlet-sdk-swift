import Foundation

public enum ItemsCreateCatalogRequestTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}