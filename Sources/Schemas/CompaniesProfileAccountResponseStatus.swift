import Foundation

public enum CompaniesProfileAccountResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}