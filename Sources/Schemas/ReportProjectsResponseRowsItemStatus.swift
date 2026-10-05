import Foundation

public enum ReportProjectsResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}