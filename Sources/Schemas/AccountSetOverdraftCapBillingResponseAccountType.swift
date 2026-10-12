import Foundation

public enum AccountSetOverdraftCapBillingResponseAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case flatRate = "flat_rate"
    case perRequest = "per_request"
}