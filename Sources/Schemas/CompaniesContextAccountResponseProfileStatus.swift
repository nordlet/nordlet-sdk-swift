import Foundation

public enum CompaniesContextAccountResponseProfileStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}