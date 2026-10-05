import Foundation

public enum ContractsCreateHrRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}