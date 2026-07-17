import Foundation

public enum PostV1BankSettlementsGetResponseLinesItemMatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unmatched
    case matched
    case manual
}