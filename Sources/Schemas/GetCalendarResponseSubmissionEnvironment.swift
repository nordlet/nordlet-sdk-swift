import Foundation

public enum GetCalendarResponseSubmissionEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case test
    case production
}