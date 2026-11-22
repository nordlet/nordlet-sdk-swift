import Foundation

public enum GbP11DItemsCreateDeclarationsRequestItemAssetTransferredAsset: String, Codable, Hashable, CaseIterable, Sendable {
    case cars
    case property
    case preciousMetals = "precious metals"
    case other
    case multiple
}