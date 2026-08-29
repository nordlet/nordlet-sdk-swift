import Foundation

public enum PostV1BillingAccountGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}