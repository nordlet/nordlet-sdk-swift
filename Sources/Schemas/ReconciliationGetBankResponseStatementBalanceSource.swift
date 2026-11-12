import Foundation

public enum ReconciliationGetBankResponseStatementBalanceSource: String, Codable, Hashable, CaseIterable, Sendable {
    case request
    case statement
}