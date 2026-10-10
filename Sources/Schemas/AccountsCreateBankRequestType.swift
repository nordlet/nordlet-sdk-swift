import Foundation

public enum AccountsCreateBankRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case bank
    case stripe
}