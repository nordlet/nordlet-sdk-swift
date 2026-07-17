import Foundation

public enum PostV1HrContractsCreateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}