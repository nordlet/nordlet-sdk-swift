import Foundation

public enum CreateCalendarResponseSubmissionsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}