import Foundation

public enum PostV1LedgerStatementRowsListResponseRowsItemStatement: String, Codable, Hashable, CaseIterable, Sendable {
    case balanceSheet = "balance_sheet"
    case incomeStatement = "income_statement"
}