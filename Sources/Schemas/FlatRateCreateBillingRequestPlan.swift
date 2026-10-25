import Foundation

public enum FlatRateCreateBillingRequestPlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
    case invoicing
}