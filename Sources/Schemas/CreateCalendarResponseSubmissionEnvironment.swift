import Foundation

public enum CreateCalendarResponseSubmissionEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case test
    case production
}