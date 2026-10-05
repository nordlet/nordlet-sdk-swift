import Foundation

public enum CreateCalendarResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case custom
    case obligation
}