import Foundation

public enum PostV1BankSettlementsCommissionResponseMatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unmatched
    case matched
    case manual
}