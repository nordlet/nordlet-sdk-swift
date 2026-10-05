import Foundation

public enum ListProjectsResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}