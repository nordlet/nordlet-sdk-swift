import Foundation

public enum PostV1LedgerAccountsListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case asset
    case liability
    case equity
    case income
    case expense
}