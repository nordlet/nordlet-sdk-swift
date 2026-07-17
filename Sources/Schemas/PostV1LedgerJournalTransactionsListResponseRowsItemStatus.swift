import Foundation

public enum PostV1LedgerJournalTransactionsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}