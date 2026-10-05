import Foundation

public enum CreateCalendarResponseSubmissionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}