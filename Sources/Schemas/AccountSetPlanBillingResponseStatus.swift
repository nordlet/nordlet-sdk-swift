import Foundation

public enum AccountSetPlanBillingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}