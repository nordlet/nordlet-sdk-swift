import Foundation

public enum PostV1ProjectsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}