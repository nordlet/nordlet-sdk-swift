import Foundation

public enum ContractsEndHrResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case ended
}