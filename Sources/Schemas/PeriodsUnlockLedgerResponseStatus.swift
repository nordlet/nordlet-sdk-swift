import Foundation

public enum PeriodsUnlockLedgerResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case locked
}