import Foundation

public enum ListCalendarResponseRowsItemSubmissionsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}