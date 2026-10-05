import Foundation

public enum StatementRowsListLedgerResponseRowsItemStatement: String, Codable, Hashable, CaseIterable, Sendable {
    case balanceSheet = "balance_sheet"
    case incomeStatement = "income_statement"
}