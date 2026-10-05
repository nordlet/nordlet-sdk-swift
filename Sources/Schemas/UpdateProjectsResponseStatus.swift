import Foundation

public enum UpdateProjectsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}