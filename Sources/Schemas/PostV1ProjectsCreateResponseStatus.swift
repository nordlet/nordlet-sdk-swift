import Foundation

public enum PostV1ProjectsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case completed
    case archived
}