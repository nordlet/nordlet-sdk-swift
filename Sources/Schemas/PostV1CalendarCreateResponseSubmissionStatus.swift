import Foundation

public enum PostV1CalendarCreateResponseSubmissionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}