import Foundation

public enum TransactionsUnignoreBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
    case ignored
}