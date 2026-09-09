import Foundation

public enum PostV1CalendarUpdateResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}