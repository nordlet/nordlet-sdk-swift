import Foundation

public enum TransactionsListBankResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}