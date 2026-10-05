import Foundation

public enum UpdateProjectsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}