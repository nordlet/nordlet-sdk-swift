import Foundation

public enum PostV1BankStatementsImportRequestFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case camt053
    case mt940
    case stripeCsv = "stripe-csv"
}