import Foundation

public enum UpdateCalendarResponseSubmissionEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case test
    case production
}