import Foundation

public enum ItemsUpdateCatalogRequestTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}