import Foundation

public enum TransactionsPostBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
    case ignored
}