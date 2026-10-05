import Foundation

public enum UpdateCalendarResponseSubmissionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}