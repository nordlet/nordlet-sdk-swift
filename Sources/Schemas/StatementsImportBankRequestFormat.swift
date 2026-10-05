import Foundation

public enum StatementsImportBankRequestFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case camt053
    case mt940
    case stripeCsv = "stripe-csv"
}