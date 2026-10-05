import Foundation

public enum AccountGetBillingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}