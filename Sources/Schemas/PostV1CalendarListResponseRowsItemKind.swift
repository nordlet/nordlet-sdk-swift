import Foundation

public enum PostV1CalendarListResponseRowsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}