import Foundation

public enum PostV1ProjectsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}