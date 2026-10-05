import Foundation

public enum JournalTransactionsCreateLedgerResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}