import Foundation

public enum PostV1AssetsAssetsListResponseRowsItemInputVatUseChangesItemReason: String, Codable, Hashable, CaseIterable, Sendable {
    case useChange = "use_change"
    case sale
    case withdrawal
}