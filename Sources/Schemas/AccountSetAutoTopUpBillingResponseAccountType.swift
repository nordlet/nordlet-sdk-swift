import Foundation

public enum AccountSetAutoTopUpBillingResponseAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case flatRate = "flat_rate"
    case perRequest = "per_request"
}