import Foundation

public enum PostV1AccountCompaniesProfileResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}