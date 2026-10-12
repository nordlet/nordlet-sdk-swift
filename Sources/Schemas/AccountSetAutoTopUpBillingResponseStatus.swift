import Foundation

public enum AccountSetAutoTopUpBillingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}