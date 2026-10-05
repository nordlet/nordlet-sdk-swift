import Foundation

public enum TrialBalanceReportsResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case asset
    case liability
    case equity
    case income
    case expense
}