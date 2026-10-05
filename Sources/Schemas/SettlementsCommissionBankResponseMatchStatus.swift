import Foundation

public enum SettlementsCommissionBankResponseMatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unmatched
    case matched
    case manual
}