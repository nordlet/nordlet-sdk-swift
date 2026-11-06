import Foundation

public enum FreeSandboxStartBillingResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case trial
    case active
    case suspended
}