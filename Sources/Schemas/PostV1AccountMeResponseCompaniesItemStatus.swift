import Foundation

public enum PostV1AccountMeResponseCompaniesItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}