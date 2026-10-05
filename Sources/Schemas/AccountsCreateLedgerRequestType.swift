import Foundation

public enum AccountsCreateLedgerRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case asset
    case liability
    case equity
    case income
    case expense
}