import Foundation

public enum TransactionsMatchManyBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}