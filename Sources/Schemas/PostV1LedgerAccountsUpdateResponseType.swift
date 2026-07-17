import Foundation

public enum PostV1LedgerAccountsUpdateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case asset
    case liability
    case equity
    case income
    case expense
}