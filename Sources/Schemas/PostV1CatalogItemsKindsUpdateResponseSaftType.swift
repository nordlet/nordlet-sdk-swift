import Foundation

public enum PostV1CatalogItemsKindsUpdateResponseSaftType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case service
    case fixedAsset = "fixed_asset"
    case other
}