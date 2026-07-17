import Foundation

public enum PostV1BankTransactionsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}