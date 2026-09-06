import Foundation

public enum PostV1BankTransactionsRecordResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}