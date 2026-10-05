import Foundation

public enum ContractsCreateHrResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}