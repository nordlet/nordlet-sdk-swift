import Foundation

public enum PostV1BillingAccountSetPlanResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}