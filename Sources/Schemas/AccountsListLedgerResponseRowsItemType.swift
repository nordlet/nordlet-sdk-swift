import Foundation

public enum AccountsListLedgerResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case asset
    case liability
    case equity
    case income
    case expense
}