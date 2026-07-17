import Foundation

public enum PostV1LedgerJournalTransactionsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}