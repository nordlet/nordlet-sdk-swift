import Foundation

public enum MandatesCancelBankResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}