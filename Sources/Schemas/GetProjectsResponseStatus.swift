import Foundation

public enum GetProjectsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}