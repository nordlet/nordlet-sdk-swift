import Foundation

public enum SettlementsGetBankResponseLinesItemMatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unmatched
    case matched
    case manual
}