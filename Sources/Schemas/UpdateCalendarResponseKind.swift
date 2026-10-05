import Foundation

public enum UpdateCalendarResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}