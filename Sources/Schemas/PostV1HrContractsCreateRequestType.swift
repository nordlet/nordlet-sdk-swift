import Foundation

public enum PostV1HrContractsCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case permanent
    case fixedTerm = "fixed_term"
}