import Foundation

public enum PostV1CalendarGetResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}