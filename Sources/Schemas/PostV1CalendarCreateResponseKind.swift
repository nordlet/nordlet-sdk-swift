import Foundation

public enum PostV1CalendarCreateResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}