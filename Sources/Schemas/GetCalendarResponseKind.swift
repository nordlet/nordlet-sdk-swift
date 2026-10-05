import Foundation

public enum GetCalendarResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}