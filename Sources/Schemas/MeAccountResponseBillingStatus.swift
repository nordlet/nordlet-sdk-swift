import Foundation

public enum MeAccountResponseBillingStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}