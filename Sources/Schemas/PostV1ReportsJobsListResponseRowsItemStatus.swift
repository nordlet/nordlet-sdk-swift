import Foundation

public enum PostV1ReportsJobsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case queued
    case running
    case completed
    case failed
}