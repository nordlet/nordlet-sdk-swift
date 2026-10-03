import Foundation

public enum PostV1AssetsAssetsInputVatResponseInputVatUseChangesItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case useChange = "use_change"
    case sale
    case withdrawal
}