import Foundation

public enum ItemsKindsUpdateCatalogResponseSaftType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case service
    case fixedAsset = "fixed_asset"
    case other
}