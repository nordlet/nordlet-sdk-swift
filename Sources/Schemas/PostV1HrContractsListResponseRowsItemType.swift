import Foundation

public enum PostV1HrContractsListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}