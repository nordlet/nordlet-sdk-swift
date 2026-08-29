import Foundation

public enum PostV1ProjectsUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}