import Foundation

public enum PostV1LedgerPeriodsLockResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case locked
}