import Foundation

public enum PostV1CalendarListResponseRowsItemSubmissionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}