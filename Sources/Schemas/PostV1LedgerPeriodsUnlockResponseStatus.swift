import Foundation

public enum PostV1LedgerPeriodsUnlockResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case locked
}