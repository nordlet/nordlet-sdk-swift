import Foundation

public enum ItemsKindsUpdateCatalogRequestSaftType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case service
    case fixedAsset = "fixed_asset"
    case other
}