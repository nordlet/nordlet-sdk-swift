import Foundation

public enum PostV1AccountMeResponseBillingStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}