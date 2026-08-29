import Foundation

public enum PostV1ProjectsReportResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}