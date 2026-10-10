import Foundation

public enum AccountsUpdateBankResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case bank
    case stripe
}