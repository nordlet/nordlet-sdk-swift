import Foundation

public enum PeriodsLockLedgerResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case locked
}