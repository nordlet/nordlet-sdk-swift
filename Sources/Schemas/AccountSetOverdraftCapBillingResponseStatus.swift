import Foundation

public enum AccountSetOverdraftCapBillingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}