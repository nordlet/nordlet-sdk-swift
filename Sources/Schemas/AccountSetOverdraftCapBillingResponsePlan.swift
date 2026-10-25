import Foundation

public enum AccountSetOverdraftCapBillingResponsePlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
    case invoicing
}