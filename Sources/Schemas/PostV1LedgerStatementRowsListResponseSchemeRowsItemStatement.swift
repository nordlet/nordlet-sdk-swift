import Foundation

public enum PostV1LedgerStatementRowsListResponseSchemeRowsItemStatement: String, Codable, Hashable, CaseIterable, Sendable {
    case balanceSheet = "balance_sheet"
    case incomeStatement = "income_statement"
}