import Foundation

public enum AccountSetPlanBillingRequestPlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
}