import Foundation

public enum PostV1BankSettlementsMatchResponseMatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unmatched
    case matched
    case manual
}