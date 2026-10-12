import Foundation

public enum AccountSetAccountTypeBillingRequestAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case flatRate = "flat_rate"
    case perRequest = "per_request"
}