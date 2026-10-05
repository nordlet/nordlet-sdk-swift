import Foundation

public enum AssetsGetAssetsResponseInputVatUseChangesItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case useChange = "use_change"
    case sale
    case withdrawal
}