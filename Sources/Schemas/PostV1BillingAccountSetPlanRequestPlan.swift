import Foundation

public enum PostV1BillingAccountSetPlanRequestPlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
}