import Foundation

public enum AssetsListAssetsResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case fullyDepreciated = "fully_depreciated"
    case disposed
}