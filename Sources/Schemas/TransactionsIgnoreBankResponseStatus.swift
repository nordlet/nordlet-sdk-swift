import Foundation

public enum TransactionsIgnoreBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
    case ignored
}