import Foundation

public enum JournalTransactionsReverseLedgerResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}