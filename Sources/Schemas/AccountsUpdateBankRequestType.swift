import Foundation

public enum AccountsUpdateBankRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case bank
    case stripe
}