import Foundation

public enum ContractsListHrResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}