import Foundation

public enum ItemsUpdateCatalogResponseTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}