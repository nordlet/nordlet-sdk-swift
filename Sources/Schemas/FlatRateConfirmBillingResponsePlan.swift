import Foundation

public enum FlatRateConfirmBillingResponsePlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
}