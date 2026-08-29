import Foundation

public enum PostV1ProjectsUpdateRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}