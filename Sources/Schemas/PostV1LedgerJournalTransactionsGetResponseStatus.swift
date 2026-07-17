import Foundation

public enum PostV1LedgerJournalTransactionsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}