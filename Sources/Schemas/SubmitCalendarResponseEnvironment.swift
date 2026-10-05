import Foundation

public enum SubmitCalendarResponseEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case test
    case production
}