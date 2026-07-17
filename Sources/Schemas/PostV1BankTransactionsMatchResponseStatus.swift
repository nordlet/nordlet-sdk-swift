import Foundation

public enum PostV1BankTransactionsMatchResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}