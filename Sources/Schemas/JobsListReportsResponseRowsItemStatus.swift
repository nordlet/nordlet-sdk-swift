import Foundation

public enum JobsListReportsResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case queued
    case running
    case completed
    case failed
}