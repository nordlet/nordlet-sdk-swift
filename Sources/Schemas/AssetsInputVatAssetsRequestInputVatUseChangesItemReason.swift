import Foundation

public enum AssetsInputVatAssetsRequestInputVatUseChangesItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case useChange = "use_change"
    case sale
    case withdrawal
}