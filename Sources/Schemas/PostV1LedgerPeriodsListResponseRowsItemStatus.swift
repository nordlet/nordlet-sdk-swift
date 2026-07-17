import Foundation

public enum PostV1LedgerPeriodsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case locked
}