import Foundation

public enum MeAccountResponseCompaniesItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case archived
    case deleted
}