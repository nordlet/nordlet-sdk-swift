import Foundation

public enum CreateProjectsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}