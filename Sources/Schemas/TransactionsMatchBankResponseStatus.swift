import Foundation

public enum TransactionsMatchBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}