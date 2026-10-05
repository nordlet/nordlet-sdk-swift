import Foundation

public enum GetCalendarResponseSubmissionsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}