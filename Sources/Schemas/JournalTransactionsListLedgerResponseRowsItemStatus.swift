import Foundation

public enum JournalTransactionsListLedgerResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}