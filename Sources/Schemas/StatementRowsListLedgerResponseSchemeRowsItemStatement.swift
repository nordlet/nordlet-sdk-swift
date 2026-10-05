import Foundation

public enum StatementRowsListLedgerResponseSchemeRowsItemStatement: String, Codable, Hashable, CaseIterable, Sendable {
    case balanceSheet = "balance_sheet"
    case incomeStatement = "income_statement"
}