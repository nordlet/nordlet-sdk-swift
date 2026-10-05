import Foundation

public enum UpdateCalendarResponseSubmissionsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}