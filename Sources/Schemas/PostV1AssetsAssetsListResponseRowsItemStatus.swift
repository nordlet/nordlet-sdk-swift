import Foundation

public enum PostV1AssetsAssetsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case fullyDepreciated = "fully_depreciated"
    case disposed
}