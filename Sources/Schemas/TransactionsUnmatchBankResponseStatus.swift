import Foundation

public enum TransactionsUnmatchBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}