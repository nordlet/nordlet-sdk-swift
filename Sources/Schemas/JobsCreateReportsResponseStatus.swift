import Foundation

public enum JobsCreateReportsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case queued
    case running
    case completed
    case failed
}