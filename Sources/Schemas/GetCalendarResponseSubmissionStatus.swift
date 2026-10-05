import Foundation

public enum GetCalendarResponseSubmissionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}