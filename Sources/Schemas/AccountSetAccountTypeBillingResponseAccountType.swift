import Foundation

public enum AccountSetAccountTypeBillingResponseAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case flatRate = "flat_rate"
    case perRequest = "per_request"
}