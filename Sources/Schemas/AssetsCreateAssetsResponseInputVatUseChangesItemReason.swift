import Foundation

public enum AssetsCreateAssetsResponseInputVatUseChangesItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case useChange = "use_change"
    case sale
    case withdrawal
}