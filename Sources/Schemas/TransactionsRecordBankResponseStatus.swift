import Foundation

public enum TransactionsRecordBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case matched
}