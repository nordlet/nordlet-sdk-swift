import Foundation

public enum JobsGetReportsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case queued
    case running
    case completed
    case failed
}