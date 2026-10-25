import Foundation

public enum SubscriptionCancelBillingResponsePlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
    case invoicing
}