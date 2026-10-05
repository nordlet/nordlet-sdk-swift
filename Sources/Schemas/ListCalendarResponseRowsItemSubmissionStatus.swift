import Foundation

public enum ListCalendarResponseRowsItemSubmissionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}