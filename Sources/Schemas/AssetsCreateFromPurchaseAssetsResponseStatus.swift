import Foundation

public enum AssetsCreateFromPurchaseAssetsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case fullyDepreciated = "fully_depreciated"
    case disposed
}