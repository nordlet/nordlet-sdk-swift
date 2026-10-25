import Foundation

public enum SubscriptionCancelBillingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}