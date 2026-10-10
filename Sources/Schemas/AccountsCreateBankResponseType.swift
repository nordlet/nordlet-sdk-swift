import Foundation

public enum AccountsCreateBankResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case bank
    case stripe
}