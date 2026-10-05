import Foundation

public enum SettlementsMatchBankResponseMatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unmatched
    case matched
    case manual
}