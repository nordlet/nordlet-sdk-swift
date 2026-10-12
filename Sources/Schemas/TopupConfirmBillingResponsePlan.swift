import Foundation

public enum TopupConfirmBillingResponsePlan: String, Codable, Hashable, CaseIterable, Sendable {
    case starter
    case business
    case scale
}