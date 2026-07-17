import Foundation

public enum PostV1ReportsJobsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case queued
    case running
    case completed
    case failed
}