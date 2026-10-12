import Foundation

public enum TopupCreateBillingRequestReturnTo: String, Codable, Hashable, CaseIterable, Sendable {
    case credits
    case onboarding
}