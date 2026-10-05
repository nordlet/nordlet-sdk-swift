import Foundation

public enum ItemsGetCatalogResponseTracking: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case lot
    case serial
}