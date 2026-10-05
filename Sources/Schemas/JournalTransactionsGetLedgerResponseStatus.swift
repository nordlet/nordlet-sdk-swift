import Foundation

public enum JournalTransactionsGetLedgerResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}