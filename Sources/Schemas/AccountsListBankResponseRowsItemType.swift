import Foundation

public enum AccountsListBankResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case bank
    case stripe
}