import Foundation

public enum CompaniesUpdateAccountResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}