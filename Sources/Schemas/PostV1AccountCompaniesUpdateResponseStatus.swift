import Foundation

public enum PostV1AccountCompaniesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}