import Foundation

public enum MeAccountResponseBillingAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case flatRate = "flat_rate"
    case perRequest = "per_request"
}