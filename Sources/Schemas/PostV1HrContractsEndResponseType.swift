import Foundation

public enum PostV1HrContractsEndResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}