import Foundation

public enum PeriodsListLedgerResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case locked
}